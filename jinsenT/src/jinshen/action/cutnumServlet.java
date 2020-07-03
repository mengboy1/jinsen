package jinshen.action;
/*管理部门录入采伐证servlet*/
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import jinshen.bean.cutnum;
import jinshen.bean.cutnumWatch;
import jinshen.dao.cutnumDao;
import jinshen.daoimpl.cutnumDaoImpl;

/**
 * Servlet implementation class cutnumServlet
 */
@WebServlet("/cutnumServlet")
public class cutnumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cutnumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String action=request.getParameter("action");
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        String sql="";
        cutnumDao cnd=new cutnumDaoImpl();
        ObjectMapper mapper = new ObjectMapper();
        //将销售部录入的采伐证保存到数据库种
        if("addcutnum".equals(action)) {
        	double cutNum = Double.parseDouble(request.getParameter("cutnum"));
        	double number = Double.parseDouble(request.getParameter("number"));
        	String company = request.getParameter("company");
        	String cutsite = request.getParameter("cutsite");
        	String sizhi = request.getParameter("sizhi");
        	String treeorigin = request.getParameter("treeorigin");
        	String foresttype = request.getParameter("foresttype");
        	String treetype = request.getParameter("treetype");
        	String ownership = request.getParameter("ownership");
        	String forestid = request.getParameter("forestid");
        	String cuttype = request.getParameter("cuttype");
        	String cutmethod = request.getParameter("cutmethod");
        	String cutqiang = request.getParameter("cutqiang");
        	double cutarea = Double.parseDouble(request.getParameter("cutarea"));
        	double treenum = Double.parseDouble(request.getParameter("treenum"));
        	double cutstore = Double.parseDouble(request.getParameter("cutstore"));
        	double volume = Double.parseDouble(request.getParameter("volume"));
        	String starttime=request.getParameter("starttime");
        	String endtime=request.getParameter("endtime");
        	String certifier=request.getParameter("certifier");
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
        	Date d = null;
			Date dd = null;
			try {
				d = format.parse(starttime);
				dd = format.parse(endtime);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date begin = new java.sql.Date(d.getTime()); 
			java.sql.Date end = new java.sql.Date(dd.getTime()); 
			cutnum cp = new cutnum();
			cp.setCutnum(cutNum);
			cp.setNumber(number);
			cp.setCompany(company);
			cp.setcutsite(cutsite);
			cp.setSizhi(sizhi);
			cp.setTreeorigin(treeorigin);
			cp.setforesttype(foresttype);
			cp.setTreetype(treetype);
			cp.setOwnership(ownership);
			cp.setForestid(forestid);
			cp.setcuttype(cuttype);
			cp.setcutmethod(cutmethod);
			cp.setcutqiang(cutqiang);
			cp.setcutarea(cutarea);
			cp.settreenum(treenum);
			cp.setcutstore(cutstore);
			cp.setvolume(volume);
			cp.setStarttime(begin);
			cp.setEndtime(end);
			cp.setCertifier(certifier);
			sql="select count(*) from cutnum where cutnum="+cp.getCutnum()+"";
			int flag=0;
			double f=cnd.findcount(sql);
			if(f==1) {
				flag=cnd.updateCutnum(cp);
			}
			else {
				flag=cnd.addCutnum(cp);
			}
			if(flag==1) {
				sql="select * from cutnum where cutnum="+cutNum+"";
				cutnum cutnum=cnd.findCodeSingle(sql);
				request.setAttribute("cutnum",cutnum);
				request.getRequestDispatcher("manageCutnumUpdate.jsp").forward(request, response);//录入采伐证后跳转到更新采伐证页面
			}
        }
        //更新采伐证页面
        else if(action.equals("cutnumUpdate")) {
        	double cutNum = Double.parseDouble(request.getParameter("cutnum"));
        	double number = Double.parseDouble(request.getParameter("number"));
        	String company = request.getParameter("company");
        	String cutsite = request.getParameter("cutsite");
        	String sizhi = request.getParameter("sizhi");
        	String treeorigin = request.getParameter("treeorigin");
        	String foresttype = request.getParameter("foresttype");
        	String treetype = request.getParameter("treetype");
        	String ownership = request.getParameter("ownership");
        	String forestid =request.getParameter("forestid");
        	String cuttype = request.getParameter("cuttype");
        	String cutmethod = request.getParameter("cutmethod");
        	String cutqiang = request.getParameter("cutqiang");
        	double cutarea = Double.parseDouble(request.getParameter("cutarea"));
        	double treenum = Double.parseDouble(request.getParameter("treenum"));
        	double cutstore = Double.parseDouble(request.getParameter("cutstore"));
        	double volume = Double.parseDouble(request.getParameter("volume"));
        	String starttime=request.getParameter("starttime");
        	String endtime=request.getParameter("endtime");
        	String certifier=request.getParameter("certifier");
        	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); //转换时间格式
        	Date d = null;
			Date dd = null;
			try {
				d = format.parse(starttime);
				dd = format.parse(endtime);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			java.sql.Date begin = new java.sql.Date(d.getTime()); 
			java.sql.Date end = new java.sql.Date(dd.getTime()); 
			cutnum cp = new cutnum();
			cp.setCutnum(cutNum);
			cp.setNumber(number);
			cp.setCompany(company);
			cp.setcutsite(cutsite);
			cp.setSizhi(sizhi);
			cp.setTreeorigin(treeorigin);
			cp.setforesttype(foresttype);
			cp.setTreetype(treetype);
			cp.setOwnership(ownership);
			cp.setForestid(forestid);
			cp.setcuttype(cuttype);
			cp.setcutmethod(cutmethod);
			cp.setcutqiang(cutqiang);
			cp.setcutarea(cutarea);
			cp.settreenum(treenum);
			cp.setcutstore(cutstore);
			cp.setvolume(volume);
			cp.setStarttime(begin);
			cp.setEndtime(end);
			cp.setCertifier(certifier);
			sql="select count(*) from cutnum where cutnum="+cp.getCutnum()+"";
			int flag=0;
			double f=cnd.findcount(sql);//计算数据库种中有几个和输入采伐证号一样的
			if(f==1) {
				flag=cnd.updateCutnum(cp);//更新采伐证材料输入
			}
			else {
				flag=cnd.addCutnum(cp);//添加采伐证
			}
			if(flag==1) {
				sql="select * from cutnum where cutnum="+cutNum+"";
				cutnum cutnum=cnd.findCodeSingle(sql);
				request.setAttribute("cutnum",cutnum);
				request.getRequestDispatcher("manageCutnumUpdate.jsp").forward(request, response);
			}
			else {
				sql="select * from cutnum where cutnum="+cutNum+"";
				cutnum cutnum=cnd.findCodeSingle(sql);
				request.setAttribute("cutnum",cutnum);
				request.getRequestDispatcher("manageCutnumUpdate.jsp").forward(request, response);
			}
        }
        //再manageCutnumshenhe.jsp页面显示采伐证信息
        else if(action.equals("printCutnum")){
        	String cutnum=request.getParameter("cutnum");
        	List<cutnum> dp=cnd.findCutnum();
        	//System.out.println("...."+dp.size() + "...");
        	List<cutnum> dplist = new ArrayList<cutnum>();
        	if(dp != null) {
        		for(int i = 0;i<dp.size();i ++) {
        			cutnum d=cnd.printCutnum(Integer.valueOf(cutnum));
        			if ((Integer.valueOf(cutnum) == dp.get(i).getCutnum()))
        			{
        				d.setCutnum(dp.get(i).getCutnum());
    				   d.setNumber(dp.get(i).getNumber());
    				   d.setCompany(dp.get(i).getCompany());
    				   d.setcutsite(dp.get(i).getcutsite());
    				   d.setSizhi(dp.get(i).getSizhi());
    				   d.setTreeorigin(dp.get(i).getTreeorigin());
    				   d.setforesttype(dp.get(i).getforesttype());
    				   d.setTreetype(dp.get(i).getTreetype());
    				   d.setOwnership(dp.get(i).getOwnership());
    				   d.setForestid(dp.get(i).getForestid());
    				   d.setcuttype(dp.get(i).getcuttype());
    				   d.setcutmethod(dp.get(i).getcutmethod());
    				   d.setcutqiang(dp.get(i).getcutqiang());
    				   d.setcutarea(dp.get(i).getcutarea());
    				   d.settreenum(dp.get(i).gettreenum());
    				   d.setcutstore(dp.get(i).getcutstore());
    				   d.setvolume(dp.get(i).getvolume());
    				   d.setStarttime(dp.get(i).getStarttime());
    				   d.setEndtime(dp.get(i).getEndtime());
    				   d.setCertifier(dp.get(i).getCertifier());
    				//System.out.println("...."+dp.get(i).getCertifier() + "...");
    				   dplist.add(d);
        			}
        		}
        	}
        	ObjectMapper map = new ObjectMapper();
			map.writeValue(response.getWriter(), dplist);
        }
        else if("seecut".equals(action)) {
        	//String str=request.getParameter("type");
        	
        	sql="select cutnum,number,company,cutsite from cutnum";
        	
        	List<cutnumWatch> cw=cnd.findCuteSingle(sql);
        	//System.out.println("...."+cw.size() + "...");
        	mapper.writeValue(response.getWriter(), cw);
        	
        }
        //查看更新页面也就是查看输入采伐证号详细信息
        else if(action.equals("watch")){
        	String str=request.getParameter("cutnum");
        	str=str.replace("'", "");
        	double number=Double.parseDouble(str);
        	//System.out.println("...."+number + "...");
        	sql="select * from cutnum where cutnum="+number+"";
        	cutnum cutn = cnd.findCodeSingle(sql);
        	request.setAttribute("cutnum", cutn);
        	request.getRequestDispatcher("manageCutnumUpdate.jsp").forward(request, response);
        	
        }
        
        
	}

}
