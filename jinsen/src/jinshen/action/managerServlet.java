package jinshen.action;
/*管理权限和部门人员servlet*/
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
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

import jinshen.bean.role;
import jinshen.bean.usermanage;
import jinshen.dao.usermanageDao;
import jinshen.daoimpl.usermanageDaoImpl;

/**
 * Servlet implementation class managerServlet
 */
@WebServlet("/managerServlet")
public class managerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static usermanageDao db = null;
	private usermanageDao db1 = null;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public managerServlet() {
		super();
		db = new usermanageDaoImpl();
		db1 = new usermanageDaoImpl();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		response.setContentType("textml;charset=UTF-8");
		String action = request.getParameter("action");
		System.out.println("in servlet");
		if (action.equals("all_manager")) {
			System.out.println("in all");
			List<usermanage> s = new ArrayList<usermanage>();
			s = db.find_allusermanager();
			// for(shops s1:s)
			// {
			// System.out.println(s1.getName());//utf-8s
			// }
			ObjectMapper map = new ObjectMapper();
			map.writeValue(response.getWriter(), s);// 返回一个JSON
		} else if (action.equals("delete_manager")) {
			System.out.println("in delete");
			String staff_id = request.getParameter("staff_id");
			System.out.println(staff_id);
			if (db.delete_managerstatic(staff_id)) {
				response.sendRedirect("usermanage2.jsp");
			} else {
				// response.sendRedirect("usermanage.jsp");
				System.out.println("fail");
			}
		} else if (action.equals("lock_manager")) {
			System.out.println("in lock");
			String staff_id = request.getParameter("staff_id");
			if (db.lock_manager(staff_id)) {
				response.sendRedirect("usermanage2.jsp");
			} else {
				System.out.println("fail");
			}
		} else if (action.equals("unlock_manager")) {
			System.out.println("in unlock");
			String staff_id = request.getParameter("staff_id");
			if (db.unlock_manager(staff_id)) {
				response.sendRedirect("usermanage2.jsp");
			} else {
				System.out.println("fail");
			}
		} else if (action.equals("recode")) {
			System.out.println("in recode");
			String staff_id = request.getParameter("staff_id");
			if (db.recode(staff_id)) {
				response.sendRedirect("usermanage2.jsp");
			} else {
				System.out.println("fail");
			}
		} else if (action.equals("all_role")) {
			System.out.println("in all");
			List<role> s = new ArrayList<role>();
			s = db.find_allrole();
			// for(shops s1:s)
			// {
			// System.out.println(s1.getName());//utf-8s
			// }
			ObjectMapper map = new ObjectMapper();
			map.writeValue(response.getWriter(), s);// 返回一个JSON
			System.out.println("all end");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		response.setContentType("textml;charset=UTF-8");
		String action = request.getParameter("action");
		System.out.println("in POST");
		if (action.equals("add_manager")) {
			// System.out.println("dadadfadfadfas");
			String staff_id = request.getParameter("staff_id");
			System.out.println("id=" + staff_id);
			String staff_name = request.getParameter("staff_name");
			String password = request.getParameter("password");
			// System.out.println(staff_born);
			String backups = request.getParameter("backups");
			String power_type = request.getParameter("power_type");
			// if(staff_id=="6666"||staff_name==" "||password==" ")
			// {
			// PrintWriter out = response.getWriter();
			// out.write("null");
			// }
			int is_delete = 0;
			int is_lock = 0;
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String createtime = format.format(new Date());
			System.out.println(createtime);
			Timestamp Time = Timestamp.valueOf(createtime);
			System.out.println("now:" + Time);
			usermanage s = new usermanage();
			s.setStaff_id(staff_id);
			s.setStaff_name(staff_name);
			s.setPassword(password);
			s.setCreatetime(Time);
			s.setBackups(backups);
			s.setPower_type(power_type);
			s.setIs_delete(is_delete);
			s.setIs_lock(is_lock);
			if (db.add_manager(s)) {
				PrintWriter out = response.getWriter();
				out.write("success");
			} else {
				PrintWriter out = response.getWriter();
				out.write("fail");
			}
		} else if (action.equals("get_role")) {
			String role_num = request.getParameter("role_num");
			role s = new role();
			s = db.find_onerole(role_num);
			ObjectMapper map = new ObjectMapper();
			map.writeValue(response.getWriter(), s);// 返回一个JSON
		} else if (action.equals("delete_manager")) {
			System.out.println("in delete");
			String staff_id = request.getParameter("staff_id");

			System.out.println(staff_id);
			if (db.delete_managerstatic(staff_id)) {
				response.sendRedirect("usermanage2.jsp");
			} else {
				// response.sendRedirect("usermanage.jsp");
				System.out.println("fail");
			}
		} else if (action.equals("login")) {
			System.out.println("in login");
			String staff_id = request.getParameter("staff_id");
			String password = request.getParameter("password");
			String v_code0 = request.getParameter("v_code0");
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String createtime = format.format(new Date());
			System.out.println(createtime);
			Timestamp Time = Timestamp.valueOf(createtime);
			// System.out.println(staff_id);
			// System.out.println(password);
			usermanage u = new usermanage();
			u.setStaff_id(staff_id);
			u.setPassword(password);
			u.setLogintime(Time);
			usermanage s = new usermanage();
			s = db.login(u);
			HttpSession session = request.getSession();
			request.getParameter(staff_id);
			session.setAttribute("staff_id", staff_id);
			Object v_code1 = session.getAttribute("v_code");
			// System.out.println("v_code1:"+v_code1);
			// System.out.println("v_code0:"+v_code0);
			session.removeAttribute("v_code");
			if (v_code1 != null) {
				if (v_code1.toString().equalsIgnoreCase(v_code0)) {
					if (s.getPower_type().equals("超级管理员")) {
						System.out.println("yes");
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("supermanager");
						} else {
							System.out.println("ERROR!");
						}

					} else if (s.getPower_type().equals("管理部操作员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("manager");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("管理部副经理")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("managerS");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("管理部经理")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("managerD");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("规划队")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("planteam");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("销售部操作员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("salarypers");
						} else {
							System.out.println("ERROR!");
						}
					} else if (s.getPower_type().equals("销售部经理")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("salaryperD");
						} else {
							System.out.println("ERROR!");
						}
					} else if (s.getPower_type().equals("销售合同操作员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("salescontract");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("销售调令操作员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("salesorder");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("销售结算员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("salesprice");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("货场管理员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("Yardmanager");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("货场经理")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("YardmanagerD");
						} else {
							System.out.println("ERROR!");
						}
					}
					else if (s.getPower_type().equals("货场制表员A")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("YardtableA");
						} else {
							System.out.println("ERROR!");
						}
					} 
					else if (s.getPower_type().equals("货场制表员B")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("YardtableB");
						} else {
							System.out.println("ERROR!");
						}
					} 
					else if (s.getPower_type().equals("货场制表员C")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("YardtableC");
						} else {
							System.out.println("ERROR!");
						}
					} 
					else if (s.getPower_type().equals("伐区管理员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("Cutmanager");
						} else {
							System.out.println("ERROR!");
						}
					} else if (s.getPower_type().equals("检尺员")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("Surveyor");
						} else {
							System.out.println("ERROR!");
						}
					} 
					else if (s.getPower_type().equals("信息中心")) {
						if (db.logintime(u)) {
							PrintWriter out = response.getWriter();
							out.write("InfoCenter");
						} else {
							System.out.println("ERROR!");
						}
					} else {
						PrintWriter out = response.getWriter();
						out.write("fail");
					}
				}else {
					PrintWriter out = response.getWriter();
					out.write("验证码错误");
				}
			} 
		} else if (action.equals("add_role")) {
			System.out.println("dadadfadfadfas");
			String role_num = request.getParameter("role_num");
			String role_name = request.getParameter("role_name");
			String remark = request.getParameter("remark");
			role s = new role();
			int num = Integer.parseInt(role_num);
			s.setRole_num(num);
			s.setRole_name(role_name);
			s.setRemark(remark);
			if (db.add_role(s)) {
				PrintWriter out = response.getWriter();
				out.write("success");
			} else {
				PrintWriter out = response.getWriter();
				out.write("fail");
			}
		} else if (action.equals("delete_role")) {
			System.out.println("dadadfadfadfas");
			String role_num = request.getParameter("role_num");
			System.out.println(role_num);
			int num = Integer.parseInt(role_num);
			if (db.delete_role(num)) {
				PrintWriter out = response.getWriter();
				out.write("success");
			} else {
				PrintWriter out = response.getWriter();
				out.write("fail");
			}
		} else if (action.equals("upate_role")) {
			System.out.println("dadadfadfadfas");
			String role_num = request.getParameter("role_num");
			String role_name = request.getParameter("role_name");
			String remark = request.getParameter("remark");
			role s = new role();
			int num = Integer.parseInt(role_num);
			s.setRole_num(num);
			s.setRole_name(role_name);
			s.setRemark(remark);
			if (db.update_role(s)) {
				PrintWriter out = response.getWriter();
				out.write("success");
			} else {
				PrintWriter out = response.getWriter();
				out.write("fail");
			}
		}
	}

}
