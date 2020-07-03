package jinshen.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jinshen.bean.cutnum;
import jinshen.bean.cutnumWatch;
import jinshen.dao.cutnumDao;
import jinshen.db.DBcon;

public class cutnumDaoImpl implements cutnumDao{
	private DBcon dbc=new DBcon();
    Connection connection = null;
    PreparedStatement pStatement = null;
    
    @Override
    public int addCutnum(cutnum cp) {
    	String sql="insert into cutnum values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    	int res=0;
		try {
			res=dbc.doUpdate(sql, new Object[] {cp.getCutnum(),cp.getNumber(),cp.getCompany(),cp.getcutsite(),cp.getSizhi(),cp.getTreeorigin(),cp.getforesttype(),cp.getTreetype(),cp.getOwnership(),cp.getForestid(),
					cp.getcuttype(),cp.getcutmethod(),cp.getcutqiang(),cp.getcutarea(),cp.gettreenum(),cp.getcutstore(),cp.getvolume(),cp.getStarttime(),cp.getEndtime(),cp.getCertifier()});
		}catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally {
			dbc.close();
		}
		return res;
    }
    
    @Override
    public int updateCutnum(cutnum cp) {
    	int res=0;
    	try {
    		String sql="update cutnum set cutnum=?,number=?,company=?,cutsite=?,sizhi=?,treeorigin=?,ownership=?,forestid=?,cuttype=?,cutmethod=?,cutqiang=?,cutarea=?,treenum=?,cutstore=?,volume=?,startime=?,endtime=?,certifier=?";
    		res=dbc.doUpdate(sql, new Object[] {cp.getCutnum(),cp.getNumber(),cp.getCompany(),cp.getcutsite(),cp.getSizhi(),cp.getTreeorigin(),cp.getforesttype(),cp.getTreetype(),cp.getOwnership(),cp.getForestid(),
					cp.getcuttype(),cp.getcutmethod(),cp.getcutqiang(),cp.getcutarea(),cp.gettreenum(),cp.getcutstore(),cp.getvolume(),cp.getStarttime(),cp.getEndtime(),cp.getCertifier()});
    	}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return res;
    }
    
    @Override
    public List<cutnum> findCutnum(){
    	String sql="select * from cutnum";
    	ResultSet rs = null;
    	List<cutnum> addrList=new ArrayList<cutnum>();
    	try {
    		 connection = DBcon.getConnection();
 	        pStatement = connection.prepareStatement(sql);
 	        rs = pStatement.executeQuery();
			while(rs.next()) {
				cutnum cn=new cutnum();
				cn.setCutnum(rs.getDouble(1));
				cn.setNumber(rs.getDouble(2));
				cn.setCompany(rs.getString(3));
				cn.setcutsite(rs.getString(4));
				cn.setSizhi(rs.getString(5));
				cn.setTreeorigin(rs.getString(6));
				cn.setforesttype(rs.getString(7));
				cn.setTreetype(rs.getString(8));
				cn.setOwnership(rs.getString(9));
				cn.setForestid(rs.getString(10));
				cn.setcuttype(rs.getString(11));
				cn.setcutmethod(rs.getString(12));
				cn.setcutqiang(rs.getString(13));
				cn.setcutarea(rs.getDouble(14));
				cn.settreenum(rs.getDouble(15));
				cn.setcutstore(rs.getDouble(16));
				cn.setvolume(rs.getDouble(17));
				cn.setStarttime(rs.getDate(18));
				cn.setEndtime(rs.getDate(19));
				cn.setCertifier(rs.getString(20));
				addrList.add(cn);
			}
			return addrList;
			}catch (Exception e) {
	            e.printStackTrace();
	            return null;
	        } finally {
	        	DBcon.closeResultSet(rs);
	        	DBcon.closePreparedStatement(pStatement);
	        	DBcon.closeConnection(connection);	
			}
    }
    
    @Override
	public double findcount(String sql) {
		double num=1;
		try {
			ResultSet rs=dbc.doQuery(sql,new Object[]{});
			while(rs.next()) {
				num=rs.getInt(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return num;
	}
    
    @Override
    public cutnum findCodeSingle(String sql) {
    	cutnum cn =new cutnum();
    	try {
    		ResultSet rs=dbc.doQuery(sql, new Object[] {});
    		if(rs.next()) {
    			cn.setCutnum(rs.getDouble(1));
				cn.setNumber(rs.getDouble(2));
				cn.setCompany(rs.getString(3));
				cn.setcutsite(rs.getString(4));
				cn.setSizhi(rs.getString(5));
				cn.setTreeorigin(rs.getString(6));
				cn.setforesttype(rs.getString(7));
				cn.setTreetype(rs.getString(8));
				cn.setOwnership(rs.getString(9));
				cn.setForestid(rs.getString(10));
				cn.setcuttype(rs.getString(11));
				cn.setcutmethod(rs.getString(12));
				cn.setcutqiang(rs.getString(13));
				cn.setcutarea(rs.getDouble(14));
				cn.settreenum(rs.getDouble(15));
				cn.setcutstore(rs.getDouble(16));
				cn.setvolume(rs.getDouble(17));
				cn.setStarttime(rs.getDate(18));
				cn.setEndtime(rs.getDate(19));
				cn.setCertifier(rs.getString(20));
    		}
    	}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return cn;
    }
    
    @Override
    public cutnum printCutnum(double cutnum) {
    	String sql="select * from cutnum";
    	ResultSet rs = null;
    	cutnum cn=new cutnum();
    	try {
    		connection = DBcon.getConnection();
    		pStatement = connection.prepareStatement(sql);
    		rs = pStatement.executeQuery();
    		while (rs.next()) {
    			cn.setCutnum(rs.getDouble(1));
				cn.setNumber(rs.getDouble(2));
				cn.setCompany(rs.getString(3));
				cn.setcutsite(rs.getString(4));
				cn.setSizhi(rs.getString(5));
				cn.setTreeorigin(rs.getString(6));
				cn.setforesttype(rs.getString(7));
				cn.setTreetype(rs.getString(8));
				cn.setOwnership(rs.getString(9));
				cn.setForestid(rs.getString(10));
				cn.setcuttype(rs.getString(11));
				cn.setcutmethod(rs.getString(12));
				cn.setcutqiang(rs.getString(13));
				cn.setcutarea(rs.getDouble(14));
				cn.settreenum(rs.getDouble(15));
				cn.setcutstore(rs.getDouble(16));
				cn.setvolume(rs.getDouble(17));
				cn.setStarttime(rs.getDate(18));
				cn.setEndtime(rs.getDate(19));
				cn.setCertifier(rs.getString(20));	
    		}
    		return cn;
    	}catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
        	DBcon.closeResultSet(rs);
        	DBcon.closePreparedStatement(pStatement);
        	DBcon.closeConnection(connection);
    }
    }
    //砍伐证审核界面
    @Override
    public List<cutnumWatch> findCuteSingle(String sql) {
    	List<cutnumWatch> cnw =new ArrayList<cutnumWatch>();
    	try {
    		ResultSet rs=dbc.doQuery(sql, new Object[] {});
    		while(rs.next()) {
    			cutnumWatch cn = new cutnumWatch();
    			cn.setCutnum(rs.getDouble(1));
				cn.setNumber(rs.getDouble(2));
				cn.setCompany(rs.getString(3));
				cn.setcutsite(rs.getString(4));
				cnw.add(cn);
    		}
    	}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbc.close();
		}
		return cnw;
    }

}
