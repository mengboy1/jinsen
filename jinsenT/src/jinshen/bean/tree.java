package jinshen.bean;
//用于进场是保存木材信息数据到数据库tree中
public class tree {

	private String treetype;
	private double workid;
	private double tlong;
	private double tradius;
	private double num;
	private double tvolume;
	private double unitprice;
	private double totalnum;
	public String getTreetype() {
		return treetype;
	}
	public void setTreetype(String treetype) {
		this.treetype = treetype;
	}
	public double getWorkid() {
		return workid;
	}
	public void setWorkid(double workid) {
		this.workid = workid;
	}
	public double getTlong() {
		return tlong;
	}
	public void setTlong(double tlong) {
		this.tlong = tlong;
	}
	public double getTradius() {
		return tradius;
	}
	public void setTradius(double tradius) {
		this.tradius = tradius;
	}
	public double getNum() {
		return num;
	}
	public void setNum(double num) {
		this.num = num;
	}
	public double getTvolume() {
		return tvolume;
	}
	public void setTvolume(double tvolume) {
		this.tvolume = tvolume;
	}
	public double getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}
	public double getTotalnum() {
		return totalnum;
	}
	public void setTotalnum(double totalnum) {
		this.totalnum = totalnum;
	}
	
}
