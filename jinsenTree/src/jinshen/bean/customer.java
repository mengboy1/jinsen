package jinshen.bean;
//生产业主信息
public class customer {
	private double workid;
	private String kname;
	private String address;
	private String company;
	private String treetype;
	private double num;
    public double getWorkid() {
    	return workid;
    }
    public void setWorkid(double workid) {
    	this.workid=workid;
    }
    public String getkname() {
    	return kname;
    }
    public void setkname(String kname) {
    	this.kname=kname;
    }
    public String getaddress() {
    	return address;
    }
    public void setaddress(String address) {
    	this.address=address;
    }
    public String getcompany() {
    	return company;
    }
    public void setcompany(String company) {
    	this.company=company;
    }
    public String getTreetype() {
		return treetype;
	}
	public void setTreetype(String treetype) {
		this.treetype = treetype;
	}
	public double getNum() {
		return num;
	}
	public void setNum(double num) {
		this.num = num;
	}

}
