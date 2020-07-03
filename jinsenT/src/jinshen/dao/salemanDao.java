package jinshen.dao;
//销售部门，录入木材价格
import java.util.List;

import jinshen.bean.*;

public interface salemanDao {
	public int findMaxid(String sql);
	public List<salesman> findSaleList(String sql);///木材销售
	public List<worktree> findworktree(String sql);//发现木材类型，材积，单价等信息是对worktree对象的实现
	public salesman findsaleSingle(String sql);//读取outyard数据库中yard,yarddate,carNumber等数据
	public int update(String sql);//更新表
	public int addWork(salemansql cp);//将数据插入到saleman
	
	public List<customer> findCustomer(String sql);//显示发现生产业主
	public int addCustomer(customer cp);//添加生产业主到数据库
    
	public int addProduce(Laowu cp);//将劳务插入到laowu数据库中
	public List<singleworkid> findworkid(String sql);//显示工单信息
}
