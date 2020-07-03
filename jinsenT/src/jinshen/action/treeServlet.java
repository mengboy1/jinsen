package jinshen.action;
/*录入进场木材信息和出场木材信息*/
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import jinshen.bean.compareVolume;
import jinshen.bean.inyard;
import jinshen.bean.outyard;
import jinshen.bean.tree;
import jinshen.bean.volume;
import jinshen.dao.treeDao;
import jinshen.dao.volumeDao;
import jinshen.daoimpl.treeDaoImpl;
import jinshen.daoimpl.volumeDaoImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class treeServlet
 */
@WebServlet("/treeServlet")
public class treeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public treeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        String sql="";
        treeDao trd=new treeDaoImpl();
        volumeDao vl=new volumeDaoImpl();
        ObjectMapper mapper = new ObjectMapper();
        //选择材积
        if("volume".equals(action))
        {
        	double td=Double.parseDouble(request.getParameter("td"));
        	double tr=Double.parseDouble(request.getParameter("tr"));
        	sql="select * from volume where tlong ="+td+" and tradius="+tr+"";
			volume vll=vl.findVolumeSingle(sql);
			if(vll!=null)
			{
				float volume=0.00f;
				volume=(float)vll.getMvolume();
				out.print(volume);
			   //out.print(vll.getMvolume());
			}
			else
			{
				out.print(" ");
			}
        }
        //将jsp页面输入的木材信息把保存到数据库tree表中
        else if("treeAdd".equals(action)) {
        	String rebate = request.getParameter("newtree");
        	int id=Integer.parseInt(request.getParameter("id"));
        	JSONObject jb = JSONObject.fromObject(rebate);
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	sql="delete from tree where workid="+workid+"";
        	int ii=trd.delById(sql);
        	for(int i=0;i<id;i++)
        	{
        		JSONArray s=jb.getJSONArray(String.valueOf(i));
        		tree t=new tree();
        		t.setWorkid(workid);
        		t.setTreetype(s.getString(0));
            	t.setTlong(Double.parseDouble(s.getString(1)));
            	t.setTradius(Double.parseDouble(s.getString(2)));
            	t.setNum(Double.parseDouble(s.getString(3)));
            	sql="select * from volume where tlong ="+Double.parseDouble(s.getString(1))+" and tradius="+Double.parseDouble(s.getString(2));
            	volume vll=vl.findVolumeSingle(sql);
            	float tvolume = 0.00f; 
    			tvolume=(float)vll.getMvolume();
            	t.setTvolume(tvolume*t.getNum());
            	t.setUnitprice(1);//默认单价为1
            	t.setTotalnum(1);
            	int flag=trd.addTree(t);//添加木材信息到数据库中
            	out.print(flag);
        	}
        }
        //材积输出
        else if("volumeout".equals(action)) {
        	double td=Double.parseDouble(request.getParameter("td"));
        	double tr=Double.parseDouble(request.getParameter("tr"));
        	sql="select * from volume where tlong ="+td+" and tradius="+tr+"";
			volume vll=vl.findVolumeSingle(sql);
			if(vll!=null)
			{
				float volume=0.00f;
				volume=(float)vll.getMvolume();
				out.print(volume);
			   //out.print(vll.getMvolume());
			}
			else
			{
				out.print(" ");
			}
        }
        //录入销售输出木材，并保存都数据库木材输出表treeout中
        else if("treeAddout".equals(action)) {
        	String rebate = request.getParameter("newtree");
        	int id=Integer.parseInt(request.getParameter("id"));
        	JSONObject jb = JSONObject.fromObject(rebate);
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	sql="delete from treeout where workid="+workid+"";
        	int ii=trd.delById(sql);
        	for(int i=0;i<id;i++)
        	{
        		JSONArray s=jb.getJSONArray(String.valueOf(i));
        		tree t=new tree();
        		t.setWorkid(workid);
        		t.setTreetype(s.getString(0));
            	t.setTlong(Double.parseDouble(s.getString(1)));
            	t.setTradius(Double.parseDouble(s.getString(2)));
            	t.setNum(Double.parseDouble(s.getString(3)));
            	sql="select * from volume where tlong ="+Double.parseDouble(s.getString(1))+" and tradius="+Double.parseDouble(s.getString(2));
            	volume vll=vl.findVolumeSingle(sql);
            	float tvolume = 0.00f; 
    			tvolume=(float)vll.getMvolume();
            	t.setTvolume(tvolume*t.getNum());
            	//材积单价还没有
            	t.setUnitprice(1);
            	t.setTotalnum(1);
            	int flag=trd.addTreeout(t);
            	out.print(flag);
        }
        
	}
        //把输入木材信息页面的信息存到数据库表inyard中
        else if("inyard".equals(action)) {
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	double cutNum = Double.parseDouble(request.getParameter("cutnum"));
        	String cutSite=request.getParameter("cutsite");
        	String yarddate=request.getParameter("yarddate");
        	String carNumber=request.getParameter("carnumber");
        	String yard=request.getParameter("yard");
        	double batchNum=Double.parseDouble(request.getParameter("batchnum"));        			
        	String surveyor=request.getParameter("surveyor");
        	double toltree=Double.parseDouble(request.getParameter("toltree"));
        	double tolstere=Double.parseDouble(request.getParameter("tolstere"));
        	//System.out.println(tolstere);
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        	Date d = null;
			try {
				d = format.parse(yarddate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date yardtime = new java.sql.Date(d.getTime());
			inyard cp = new inyard();
			cp.setWorkid(workid);
			cp.setCutNum(cutNum);
			cp.setCutSite(cutSite);
			cp.setYarddate(yardtime);
			cp.setCarNumber(carNumber);
			cp.setYard(yard);
			cp.setBatchNum(batchNum);
			cp.setSurveyor(surveyor);
			cp.setTolTree(toltree);
			cp.setTolStere(tolstere);
			sql = "select count(*) from inyard where workid="+cp.getWorkid()+"";
			int flag=0;
			double f=trd.findcount(sql);
			if(f==1) {
				flag=trd.updateInyard(cp);
			}
			else {
				flag=trd.addInyard(cp);
			}
			if(flag==1) {
				sql="select * from inyard where workid="+workid+"";
				inyard inyard=trd.findInSingle(sql);
				sql="select * from tree where workid="+workid+"";
				List<tree> tree=trd.findTree(sql);
				request.setAttribute("inyard", inyard);
				request.setAttribute("tree", tree);
				request.getRequestDispatcher("treeinUpdate.jsp").forward(request, response);
			}
			else {
			request.getRequestDispatcher("treein.jsp").forward(request, response);	
			}
        }
        //更新木材inyard木材信息
        else if("updateTreein".equals(action)) {
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	double cutNum = Double.parseDouble(request.getParameter("cutnum"));
        	String cutSite=request.getParameter("cutsite");
        	String yarddate=request.getParameter("yarddate");
        	String carNumber=request.getParameter("carnumber");
        	String yard=request.getParameter("yard");
        	double batchNum=Double.parseDouble(request.getParameter("batchnum"));        			
        	String surveyor=request.getParameter("surveyor");
        	double toltree=Double.parseDouble(request.getParameter("toltree"));
        	double tolstere=Double.parseDouble(request.getParameter("tolstere"));
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        	Date d = null;
			try {
				d = format.parse(yarddate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date yardtime = new java.sql.Date(d.getTime());
			inyard cp = new inyard();
			cp.setWorkid(workid);
			cp.setCutNum(cutNum);
			cp.setCutSite(cutSite);
			cp.setYarddate(yardtime);
			cp.setCarNumber(carNumber);
			cp.setYard(yard);
			cp.setBatchNum(batchNum);
			cp.setSurveyor(surveyor);
			cp.setTolTree(toltree);
			cp.setTolStere(tolstere);
			sql = "select count(*) from inyard where workid="+cp.getWorkid()+"";
			int flag=0;
			double f=trd.findcount(sql);
			if(f==1) {
				flag = trd.updateInyard(cp);
				sql="select count(*) from codestatus where workid="+workid+" and status='back'";
				double ff=trd.findcount(sql);
				if(ff>0) {
					sql="update codestatus set status='again' where workid="+workid+"";
					flag = trd.updateWork(sql);
				}
			}
			else {
				flag=trd.addInyard(cp);
			}
			if(flag==1) {
				sql = "select * from inyard where workid="+workid+"";
				inyard inyard = trd.findInSingle(sql);
				sql="select * from tree where workid="+workid+"";
				List<tree> tree=trd.findTree(sql);
				request.setAttribute("inyard", inyard);
				request.setAttribute("tree", tree);
				request.getRequestDispatcher("treeinUpdate.jsp").forward(request, response);
			}
			else {
				sql = "select * from inyard where workid="+workid+"";
				inyard inyard = trd.findInSingle(sql);
				sql="select * from tree where workid="+workid+"";
        		List<tree> tree=trd.findTree(sql);
				request.setAttribute("inyard", inyard);
				request.setAttribute("tree", tree);
				request.getRequestDispatcher("treeinUpdate.jsp").forward(request, response);
			}
        }
        //把销售输出木材页面信息保存到数据库outyard页面
        else if("outyard".equals(action)) {
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	String yarddate=request.getParameter("yarddate");
        	String carNumber=request.getParameter("carnumber");
        	String yard=request.getParameter("yard");
        	String batchNum=request.getParameter("batchnum");        			
        	String surveyor=request.getParameter("surveyor");
        	double toltree=Double.parseDouble(request.getParameter("toltree"));
        	double tolstere=Double.parseDouble(request.getParameter("tolstere"));
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        	Date d = null;
			try {
				d = format.parse(yarddate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date yardtime = new java.sql.Date(d.getTime());
			outyard cp = new outyard();
			cp.setWorkid(workid);;
			cp.setYarddate(yardtime);
			cp.setCarNumber(carNumber);
			cp.setYard(yard);
			cp.setBatchNum(batchNum);
			cp.setSurveyor(surveyor);
			cp.setTolTree(toltree);
			cp.setTolStere(tolstere);
			sql = "select count(*) from outyard where workid="+cp.getWorkid()+"";
			int flag=0;
			double f=trd.findcount(sql);
			if(f==1) {
				flag=trd.updateOutyard(cp);
			}
			else {
				flag=trd.addOutyard(cp);
			}
			if(flag==1) {
				sql="select *from outyard where workid="+workid+"";
				outyard outyard=trd.findOutSingle(sql);
				sql="select * from treeout where workid="+workid+"";
				List<tree> tree=trd.findTree(sql);
				request.setAttribute("outyard", outyard);
				request.setAttribute("tree", tree);
				request.getRequestDispatcher("treeoutUpdate.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("treeout.jsp").forward(request, response);
			}
        }
        //更新销售页面的信息到数据库中outyard表中
        else if("updateTreeout".equals(action)) {
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	String yarddate=request.getParameter("yarddate");
        	String carNumber=request.getParameter("carnumber");
        	String yard=request.getParameter("yard");
        	String batchNum=request.getParameter("batchnum");        			
        	String surveyor=request.getParameter("surveyor");
        	double toltree=Double.parseDouble(request.getParameter("toltree"));
        	double tolstere=Double.parseDouble(request.getParameter("tolstere"));
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        	Date d = null;
			try {
				d = format.parse(yarddate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date yardtime = new java.sql.Date(d.getTime());
			outyard cp = new outyard();
			cp.setWorkid(workid);
			cp.setYarddate(yardtime);
			cp.setCarNumber(carNumber);
			cp.setYard(yard);
			cp.setBatchNum(batchNum);
			cp.setSurveyor(surveyor);
			cp.setTolTree(toltree);
			cp.setTolStere(tolstere);
			sql = "select count(*) from outyard where workid="+cp.getWorkid()+"";
			int flag=0;
			double f=trd.findcount(sql);
			if(f==1) {
				flag = trd.updateOutyard(cp);
				sql="select count(*) from codestatus where workid="+workid+" and status='back'";
				double ff=trd.findcount(sql);
				if(ff>0) {
					sql="update codestatus set status='again' where workid="+workid+"";
					flag = trd.updateWork(sql);
				}
			}
			else {
				flag=trd.addOutyard(cp);
			}
			if(flag==1) {
				sql = "select * from outyard where workid="+workid+"";
				outyard outyard = trd.findOutSingle(sql);
				sql="select * from treeout where workid="+workid+"";
				List<tree> tree=trd.findTree(sql);
				request.setAttribute("outyard", outyard);
				request.setAttribute("tree", tree);
				request.getRequestDispatcher("treeoutUpdate.jsp").forward(request, response);
			}
			else {
				sql = "select * from outyard where workid="+workid+"";
				outyard outyard = trd.findOutSingle(sql);
				sql="select * from treeout where workid="+workid+"";
				List<tree> tree=trd.findTree(sql);
				request.setAttribute("outyard", outyard);
				request.setAttribute("tree", tree);
				request.getRequestDispatcher("treeoutUpdate.jsp").forward(request, response);
			}
        }        
        /*else if("inyard1".equals(action)) {
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	double cutNum = Double.parseDouble(request.getParameter("cutnum"));
        	String cutSite=request.getParameter("cutsite");
        	String yarddate=request.getParameter("yarddate");
        	String carNumber=request.getParameter("carnumber");
        	String yard=request.getParameter("yard");
        	double batchNum=Double.parseDouble(request.getParameter("batchnum"));        			
        	String surveyor=request.getParameter("surveyor");
        	double toltree=Double.parseDouble(request.getParameter("toltree"));
        	double tolstere=Double.parseDouble(request.getParameter("tolstere"));
        	//System.out.println(tolstere);
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        	Date d = null;
			try {
				d = format.parse(yarddate);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date yardtime = new java.sql.Date(d.getTime());
			sql="select sum(tolstere) as tolstere1,b.cutstore from inyard a join cutnum b on a.cutNum=b.cutnum where a.cutNum="+cutNum+"";
        	compareVolume compareVolume=trd.findVolume(sql);
        	if(compareVolume!=null)
        	{
        		float volumec=0.00f;
				float volumet=0.00f;
				volumec=(float)compareVolume.getcutstore();
				volumet=(float)compareVolume.getTolstere();
				if (volumet<(volumec*0.8))
				{
					inyard cp = new inyard();
					cp.setWorkid(workid);
					cp.setCutNum(cutNum);
					cp.setCutSite(cutSite);
					cp.setYarddate(yardtime);
					cp.setCarNumber(carNumber);
					cp.setYard(yard);
					cp.setBatchNum(batchNum);
					cp.setSurveyor(surveyor);
					cp.setTolTree(toltree);
					cp.setTolStere(tolstere);
					sql = "select count(*) from inyard where workid="+cp.getWorkid()+"";
					int flag=0;
					double f=trd.findcount(sql);
					if(f==1)
					{
						flag=trd.updateInyard(cp);
					}
					else
					{
						flag=trd.addInyard(cp);
						///System.out.println(volumec*0.8-volumet);
						//out.print(volumec*0.8-volumet);
					}
					if(flag==1) {
						sql="select * from inyard where workid="+workid+"";
						inyard inyard=trd.findInSingle(sql);
						sql="select * from tree where workid="+workid+"";
						List<tree> tree=trd.findTree(sql);
						request.setAttribute("inyard", inyard);
						request.setAttribute("tree", tree);
						out.print(volumec*0.8-volumet);
						request.getRequestDispatcher("treeinUpdate.jsp").forward(request, response);
						
					}
					else {
					request.getRequestDispatcher("treein.jsp").forward(request, response);	
					}
				}
				else
				{
					out.print("输入材积已经超过本砍伐证的蓄留材积的80%");
				}
        	}
        	else
			{
				out.print(" ");
			}
			
        }*/
        //将木材信息添加到数据库表tree中,并判断是否大于砍伐证输入的材积
        else if("treeAdd1".equals(action)) {
        	String rebate = request.getParameter("newtree");
        	int id=Integer.parseInt(request.getParameter("id"));
        	JSONObject jb = JSONObject.fromObject(rebate);
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	double cutNum = Double.parseDouble(request.getParameter("cutnum"));
        	sql="delete from tree where workid="+workid+"";
        	int ii=trd.delById(sql);
        	sql="SELECT SUM(inyard.tolstere) AS tolstere1 FROM inyard WHERE cutNum="+cutNum+"";//从inyard数据库中选取材积
        	compareVolume compareVolume=trd.findVolume(sql);
        	sql="SELECT cutstore FROM cutnum WHERE cutNum="+cutNum+"";//从采伐证输入表cutnum里选区材积
        	compareVolume compareVolume1=trd.findVolume(sql);
        	if(compareVolume!=null && compareVolume1!=null)
        	{
        		float volumec=0.00f;
				float volumet=0.00f;
				volumet=(float)compareVolume.getTolstere();
				volumec=(float)compareVolume1.getTolstere();
				System.out.println(volumec);
				if (volumet<(volumec*0.8))
				{
					for(int i=0;i<id;i++)
		        	{
		        		JSONArray s=jb.getJSONArray(String.valueOf(i));
		        		tree t=new tree();
		        		t.setWorkid(workid);
		        		t.setTreetype(s.getString(0));
		            	t.setTlong(Double.parseDouble(s.getString(1)));
		            	t.setTradius(Double.parseDouble(s.getString(2)));
		            	t.setNum(Double.parseDouble(s.getString(3)));
		            	sql="select * from volume where tlong ="+Double.parseDouble(s.getString(1))+" and tradius="+Double.parseDouble(s.getString(2));
		            	volume vll=vl.findVolumeSingle(sql);
		            	float tvolume = 0.00f; 
		    			tvolume=(float)vll.getMvolume();
		            	t.setTvolume(tvolume*t.getNum());
		            	t.setUnitprice(1);//默认单价为1
		            	t.setTotalnum(1);
		            	int flag=trd.addTree(t);//添加木材信息到数据库中
		            	//out.print(flag);
		            	//out.print(volumec*0.8-volumet);
		            	float addt=tvolume+volumet;
		            	if ((addt>(volumec*0.75)) && (addt<(volumec*0.8))) {
		            		out.write("输入材积已经超过75%，即将接近80%");
		            	}
		        	}
				}
				else {
					out.write("输入材积已经超过本砍伐证的蓄留材积的80%");
				}
				}
        	else {
        		out.write("输入的采伐证号错误，请重新输入");
        	}
        	
        }
        
	}

}
