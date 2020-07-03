package jinshen.dao;
//采伐证输入用到的动作Dao
import java.util.List;

import jinshen.bean.cutnum;
import jinshen.bean.cutnumWatch;

public interface cutnumDao {
	public int addCutnum(cutnum cp);
	public int updateCutnum(cutnum cp);
	
	public double findcount(String sql);
	public cutnum findCodeSingle(String sql);
	public List<cutnumWatch> findCuteSingle(String sql);//用于采伐证审核
	
	public List<cutnum> findCutnum();
	public cutnum printCutnum(double cutnum);

}
