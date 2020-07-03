package jinshen.bean;
//采伐证信息
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class cutnum {
	private double cutnum;
	private double number;
	private String company;
	private String cutsite;
	private String sizhi;
	private String treeorigin;
	private String foresttype;
	private String treetype;
	private String ownership;
	private String forestid;
	private String cuttype;
	private String cutmethod;
	private String cutqiang;
	private double cutarea;
	private double treenum;
	private double cutstore;
	private double volume;
	private Date starttime;
	private Date endtime;
	private String certifier;
	public double getCutnum() {
		return cutnum;
	}
	public void setCutnum(double cutnum) {
		this.cutnum=cutnum;
	}
	public double getNumber() {
		return number;
	}
	public void setNumber(double number) {
		this.number=number;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company=company;
	}
	public String getcutsite() {
		return cutsite;
	}
	public void setcutsite(String cutsite) {
		this.cutsite=cutsite;
	}
	public String getSizhi() {
		return sizhi;
	}
	public void setSizhi(String sizhi) {
		this.sizhi=sizhi;
	}
	public String getTreeorigin() {
		return treeorigin;
	}
	public void setTreeorigin(String treeorigin) {
		this.treeorigin=treeorigin;
	}
	public String getforesttype() {
		return foresttype;
	}
	public void setforesttype(String foresttype) {
		this.foresttype=foresttype;
	}
	public String getTreetype() {
		return treetype;
	}
	public void setTreetype(String treetype) {
		this.treetype=treetype;
	}
	public String getOwnership() {
		return ownership;
	}
	public void setOwnership(String ownership) {
		this.ownership=ownership;
	}
	public String getForestid() {
		return forestid;
	}
	public void setForestid(String forestid) {
		this.forestid=forestid;
	}
	public String getcuttype() {
		return cuttype;
	}
	public void setcuttype(String cuttype) {
		this.cuttype=cuttype;
	}
	public String getcutmethod() {
		return cutmethod;
	}
	public void setcutmethod(String cutmethod) {
		this.cutmethod=cutmethod;
	}
	public String getcutqiang() {
		return cutqiang;
	}
	public void setcutqiang(String cutqiang) {
		this.cutqiang=cutqiang;
	}
	public double getcutarea() {
		return cutarea;
	}
	public void setcutarea(double cutarea) {
		this.cutarea=cutarea;
	}
	public double gettreenum() {
		return treenum;
	}
	public void settreenum(double treenum) {
		this.treenum=treenum;
	}
	public double getcutstore() {
		return cutstore;
	}
	public void setcutstore(double cutstore) {
		this.cutstore=cutstore;
	}
	public double getvolume() {
		return volume;
	}
	public void setvolume(double volume) {
		this.volume=volume;
	}
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime=starttime;
	}
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime=endtime;
	}
	public String getCertifier() {
		return certifier;
	}
	public void setCertifier(String certifier) {
		this.certifier=certifier;
	}
	


}
