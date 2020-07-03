package jinshen.daoimpl;
//销售部门录入木材价格
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jinshen.bean.Laowu;
import jinshen.bean.customer;
import jinshen.bean.salemansql;
import jinshen.bean.salesman;
import jinshen.bean.singleworkid;
import jinshen.bean.worktree;
import jinshen.dao.salemanDao;
import jinshen.db.DBcon;

public class salemanDaoImpl implements salemanDao{
	private DBcon dbc=new DBcon();
	Connection connection = null;
    PreparedStatement pStatement = null;
	@Override
	public int findMaxid(String sql) {
		int num=0;
		try {
			ResultSet rs=dbc.doQuery(sql,new Object[]{});
			if(rs.next()) {
				num=rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return num;
	}
	
	@Override
	public List<salesman> findSaleList(String sql){
		List<salesman> salesman=new ArrayList<salesman>();
		try {
			ResultSet rs=dbc.doQuery(sql, new Object[] {});
			if(rs.next()) {
				salesman addr = new salesman();
				//addr.setWorkid(rs.getDouble(1));
				addr.setYard(rs.getString(1));
				addr.setYarddate(rs.getDate(2));
				addr.setCarNumber(rs.getString(3));
				addr.setSurveyor(rs.getString(4));
			}
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			dbc.close();
		}
		return salesman;
	}
	
	@Override
	public List<worktree> findworktree(String sql)
	{
		List<worktree> work=new ArrayList<worktree>();
		try {
			ResultSet rs=dbc.doQuery(sql, new Object[] {});
			while(rs.next()){
				worktree w=new worktree();
				w.setType(rs.getString(1));
				w.setTvolume(rs.getDouble(2));
				w.setUnitprice(rs.getDouble(3));
				w.setPrice(rs.getDouble(4));
				work.add(w);	
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return work;
	}
	@Override
	public salesman findsaleSingle(String sql) {
		salesman addr = new salesman();
		try {
			ResultSet rs=dbc.doQuery(sql, new Object[] {});
			if(rs.next()) {
				//addr.setWorkid(rs.getDouble(1));
				addr.setYard(rs.getString(1));
				addr.setYarddate(rs.getDate(2));
				addr.setCarNumber(rs.getString(3));
				addr.setSurveyor(rs.getString(4));
			}
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			dbc.close();
		}
		return addr;
	}
	
	@Override
	public int update(String sql)
	{
		int res=0;
		try {
			res=dbc.doUpdate(sql, new Object[] {});
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return res;
	}
	
	//插入数据到数据，保存数据
	@Override
	public int addWork(salemansql cp) {
		String sql="insert into saleman values(?,?,?,?,?)";
		int res=0;
		try {
			res=dbc.doUpdate(sql, new Object[] {cp.getWorkid(),cp.getTreetype(),cp.getUnitprice(),cp.getPrice(),cp.getSaleman()});
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return res;
	}
	
	//保存生业业主信息到数据库中
	@Override
	public int addCustomer(customer cp) {
		String sql="insert into customer values(?,?,?,?,?,?)";
		int res=0;
		try {
			res=dbc.doUpdate(sql, new Object[] {cp.getWorkid(),cp.getkname(),cp.getaddress(),cp.getcompany(),cp.getTreetype(),cp.getNum()});
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return res;
	}
	
	//显示生产业主信息
	@Override
	public List<customer> findCustomer(String sql){
		List<customer> cust=new ArrayList<customer>();
		try {
			ResultSet rs=dbc.doQuery(sql, new Object[] {});
			while(rs.next()){
				customer c=new customer();
				c.setWorkid(rs.getDouble(1));
				c.setkname(rs.getString(2));
				c.setaddress(rs.getString(3));
				c.setcompany(rs.getString(4));
				c.setTreetype(rs.getString(5));
				c.setNum(rs.getDouble(6));
				cust.add(c);
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				dbc.close();
			}
			return cust;
	}
	//将工单结算信息插入到laowu表里
	@Override
	public int addProduce(Laowu cp) {
		String sql="insert into Laowu values(?,?,?,?,?,?,?,?,?,?)";
		int res=0;
		try {
			res=dbc.doUpdate(sql, new Object[] {cp.getCutnum(),cp.getCheckNum(),cp.getForperson(),cp.getManageUnit(),cp.getTreetype(),cp.getUnitprice(),cp.getprice(),cp.getPerson(),cp.getttvolume(),cp.gettprice()});
					}catch(Exception e) {
						e.printStackTrace();
					}finally {
						dbc.close();
					}
					return res;
	}
	
	//在工资结算单页面根据采伐证号显示工单
	@Override
	public List<singleworkid> findworkid(String sql)
	{
		List<singleworkid> sw=new ArrayList<singleworkid>();
		try {
			ResultSet rs=dbc.doQuery(sql, new Object[] {});
			while(rs.next()){
				singleworkid addr=new singleworkid();
			    addr.setWorkid(rs.getDouble(1));
			    sw.add(addr);
			}
			}catch(Exception e) {
				e.printStackTrace();
				return null;
			}finally {
				dbc.close();
			}
			return sw;
	}

}
