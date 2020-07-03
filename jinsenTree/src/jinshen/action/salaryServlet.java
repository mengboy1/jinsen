package jinshen.action;
/*销售部门输入木材销售价格页面*/
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import jinshen.dao.salemanDao;
import jinshen.dao.treeDao;
import jinshen.daoimpl.salemanDaoImpl;
import jinshen.daoimpl.treeDaoImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import jinshen.bean.*;

/**
 * Servlet implementation class salaryServlet
 */
@WebServlet("/salaryServlet")
public class salaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public salaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}*/

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String sql="";
        salemanDao sd=new salemanDaoImpl();
        treeDao td=new treeDaoImpl();
        ObjectMapper mapper = new ObjectMapper();
        //通过当销售工单号和数据库中一样，查询数据库中的树材信息，然后显示再treePrice.jsp页面
        if(action.equals("mysave"))
        {
        	double workid = Double.parseDouble(request.getParameter("workid"));
        	//System.out.println("...." + workid + "...");
        	Map map=new HashMap();
        	List<salesman> list=new ArrayList<salesman>();
        	sql="select count(*) from saleman where workid="+workid+"";
        	int flag=sd.findMaxid(sql);
        	//JSONArray json=JSONArray.fromObject(workid);
        	//System.out.println("...." + flag + "...");
        	if(flag>0) {
        		sql="select yard,yarddate,carNumber,surveyor from outyard where workid="+workid+"";
        		list =sd.findSaleList(sql);
        		//System.out.println("...." + list + "...");
        		sql="select treetype,sum(tvolume) as total,unitprice,(sum(tvolume)*unitprice) as totalprice  from treeout a join outyard b on a.workid=b.workid where b.workid="+workid+" group by treetype";
        		List<worktree> worktree=sd.findworktree(sql);
        		map.put("salesman", list);
        		map.put("tree", worktree);
        		mapper.writeValue(response.getWriter(), map);
        		//System.out.println("...." + map.put("salesman", list) + "...");
        	}
        	else {
        		//double each=0;
            	//int count=0;
            	//String str="(";
            	//str+=",";
            	sql = "select yard,yarddate,carNumber,surveyor from outyard where workid="+workid+"";
            	salesman s=sd.findsaleSingle(sql);//擦护照sql的数据通过findsaleSingle读取显示，再赋值给s
            	list.add(s);            	
            	//str+=each;
            	//str+=")";
            	sql="select treetype,sum(tvolume) as total,unitprice,(sum(tvolume)*unitprice) as totalprice  from treeout a join outyard b on a.workid=b.workid where b.workid="+workid+" group by treetype";
            	List<worktree> worktree=sd.findworktree(sql);
            	map.put("salesman", list);
        		map.put("tree", worktree);
        		mapper.writeValue(response.getWriter(), map);
        		//System.out.println("...." + map.put("salesman", list) + "...");
        	}
        }
       /* else if(action.equals("savesaleman")) {
        	double workid = Double.parseDouble(request.getParameter("workid"));
        	String treetype = request.getParameter("treetype");
        	double unitprice =Double.parseDouble(request.getParameter("unitprice"));
        	double price = Double.parseDouble(request.getParameter("price"));
        	String salesman= request.getParameter("salesman");
        	salemansql cp = new salemansql();
        	cp.setWorkid(workid);
        	cp.setTreetype(treetype);
        	cp.setUnitprice(unitprice);
        	cp.setPrice(price);
        	cp.setSaleman(salesman);
        	int flag=sd.addWork(cp);
        		out.print("flag"); 
        }*/
        //保存销售treePrice.jsp页面数据到数据库saleman中
        else if(action.equals("savesaleman")) {
        	String rebate = request.getParameter("newtree");
        	System.out.println("...." + rebate + "...");
        	int id=Integer.parseInt(request.getParameter("id"));
        	JSONObject jb = JSONObject.fromObject(rebate);            	
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	String salesman=request.getParameter("salesman");
        	List<salesman> list=new ArrayList<salesman>();
        	sql="select count(*) from saleman where workid="+workid+"";
        	int flag1=sd.findMaxid(sql);
        	/*if(flag1>0)
        	{
        		for(int i=0;i<id;i++) {
            		JSONArray s=jb.getJSONArray(String.valueOf(i));
                	String treetype=s.getString(0);
                	double unitprice=Double.parseDouble(s.getString(1));
                	double price=Double.parseDouble(s.getString(2));
                	sql="update saleman set treetype="+treetype+",unitprice="+unitprice+",price="+price+" where workid="+workid+"";
                	
            	}
        		
        	}*/
        		for(int i=0;i<id;i++) {
            		JSONArray s=jb.getJSONArray(String.valueOf(i));
            		salemansql cp = new salemansql();
                	cp.setWorkid(workid);
                	cp.setTreetype(s.getString(0));
                	cp.setUnitprice(Double.parseDouble(s.getString(1)));
                	cp.setPrice(Double.parseDouble(s.getString(2)));
                	cp.setSaleman(salesman);
                	int flag=sd.addWork(cp);
                	out.print(flag);
            	}
        }
       //更新再treeprice.jsp页面对木材信息的修改，并把他们保存到数据库表treeout中
        else if("treeAdd".equals(action))
        {

        	String rebate = request.getParameter("newtree");
        	int id=Integer.parseInt(request.getParameter("id"));
        	JSONObject jb = JSONObject.fromObject(rebate);            	
        	double workid=Double.parseDouble(request.getParameter("workid"));
            for(int i=0;i<id;i++)
            {
            	JSONArray s=jb.getJSONArray(String.valueOf(i));
            	String type=s.getString(0);
            	double volume=Double.parseDouble(s.getString(1));
            	double unitprice=Double.parseDouble(s.getString(2));
            	double price=Double.parseDouble(s.getString(3));
            	sql="update treeout set unitprice="+unitprice+",totalnum=unitprice*tvolume where  treeout.workid in "
            			+ "(select workid from outyard) and treetype='"+type+"'";
            	int flag=td.updateTree(sql);
            }
            out.print("更新完成！");
        }
        //生产业主信息
        else if("addcustomer".equals(action)) {
        	double workid=Double.parseDouble(request.getParameter("workid"));
        	String kname=request.getParameter("kname");
        	String address=request.getParameter("address");
        	String company=request.getParameter("company");
        	String treetype=request.getParameter("treetype");
        	//System.out.println("...." + treetype + "...");
        	double num=Double.parseDouble(request.getParameter("num"));
        	customer cp=new customer();
        	cp.setWorkid(workid);
        	cp.setkname(kname);
        	cp.setaddress(address);
        	cp.setcompany(company);
        	cp.setTreetype(treetype);
        	cp.setNum(num);
        	int flag=sd.addCustomer(cp);
        	if(flag>0) {
        	    out.print("添加信息成功");
        	    request.getRequestDispatcher("productowner.jsp").forward(request, response);}
        	else {
        		out.print("添加信息失败");
        	}
        }
        //发现生产业主信息到并发送到productoy.jsp页面中
        else if("findcustomer".equals(action)) {
        	sql="select workid,kname,address,company,treetype,num from customer";
        	List<customer> ct=sd.findCustomer(sql);
        	mapper.writeValue(response.getWriter(),ct);
        }
        //根据采伐证号显示材积
        else if(action.equals("account")) {
    		double cutnum=Double.parseDouble(request.getParameter("cutnum"));
    		Map map=new HashMap();
    		List<Laowu> list=new ArrayList<Laowu>();
    		sql="select count(*) from inyard where cutnum="+cutnum+"";
    		int flag=sd.findMaxid(sql);
    		if(flag>0) {
    			sql="select treetype,sum(tvolume) as total,unitprice,(sum(tvolume)*unitprice) as totalprice  from tree a join inyard b on a.workid=b.workid where b.cutNum="+cutnum+" group by treetype";
        		List<worktree> worktree=sd.findworktree(sql);
        		map.put("tree", worktree);
        		mapper.writeValue(response.getWriter(), map);
    		}
    		else {
    			sql="select treetype,sum(tvolume) as total,unitprice,(sum(tvolume)*unitprice) as totalprice  from tree a join inyard b on a.workid=b.workid where b.cutNum="+cutnum+" group by treetype";
        		List<worktree> worktree=sd.findworktree(sql);
        		map.put("tree", worktree);
        		mapper.writeValue(response.getWriter(), map);
    		}
    	}
        //保存材积到laowu表
        else if(action.equals("saveLaowu")) {
        	String rebate = request.getParameter("newtree");
        	int id=Integer.parseInt(request.getParameter("id"));
        	System.out.println("...." + id + "...");
        	JSONObject jb = JSONObject.fromObject(rebate);            	
        	double cutnum=Double.parseDouble(request.getParameter("cutnum"));
        	double checknum=Double.parseDouble(request.getParameter("checknum"));
        	String person=request.getParameter("person");
        	String forperson=request.getParameter("forperson");
        	String manageUnit=request.getParameter("manageUnit");
        	double ttvolume=Double.parseDouble(request.getParameter("ttvolume"));
        	double tprice=Double.parseDouble(request.getParameter("tprice"));
        	for(int i=0;i<id;i++) {
        		JSONArray s=jb.getJSONArray(String.valueOf(i));
        		Laowu cp = new Laowu();
            	cp.setCutnum(cutnum);
            	cp.setCheckNum(checknum);
            	cp.setForperson(forperson);
            	cp.setManageUnit(manageUnit);
            	cp.setTreetype(s.getString(0));
            	cp.setUnitprice(Double.parseDouble(s.getString(1)));
            	cp.setprice(Double.parseDouble(s.getString(2)));
            	cp.setPerson(person);
            	cp.setttvolume(ttvolume);
            	cp.settprice(tprice);
            	int flag=sd.addProduce(cp);
            	out.print(flag);
        	}
        }
      //根据采伐证号显示材积
        else if(action.equals("savew")) {
        	double cutnum=Double.parseDouble(request.getParameter("cutnum"));
        	Map map=new HashMap();
    		List<singleworkid> list=new ArrayList<singleworkid>();
    		sql="select count(*) from inyard where cutnum="+cutnum+"";
    		int flag=sd.findMaxid(sql);
    		String mygroup = request.getParameter("mygroup");
        	JSONArray json=JSONArray.fromObject(mygroup); 
        	if(flag>0 && json.length()==0)
        	{
        		sql="select a.workid from tree a join inyard b on a.workid=b.workid where b.cutNum="+cutnum+" group by treetype";
        		list=sd.findworkid(sql);
        		sql="select treetype,sum(tvolume) as total,unitprice,(sum(tvolume)*unitprice) as totalprice  from tree a join inyard b on a.workid=b.workid where b.cutNum="+cutnum+" group by treetype";
        		List<worktree> worktree=sd.findworktree(sql);
        		map.put("work", list);
        		map.put("tree", worktree);
        		mapper.writeValue(response.getWriter(), map);
        	}
        	else {
        		double each=0;
        		String str="(";
        		str+=")";
        		sql="select a.workid from tree a join inyard b on a.workid=b.workid where b.cutNum="+cutnum+" group by treetype";
        		list=sd.findworkid(sql);
        		sql="select treetype,sum(tvolume) as total,unitprice,(sum(tvolume)*unitprice) as totalprice  from tree a join inyard b on a.workid=b.workid where b.cutNum="+cutnum+" group by treetype";
        		List<worktree> worktree=sd.findworktree(sql);
        		map.put("work", list);
        		map.put("tree", worktree);
        		mapper.writeValue(response.getWriter(), map);
        	}
        }
        
        
	}

}
