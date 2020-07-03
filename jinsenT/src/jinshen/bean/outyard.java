package jinshen.bean;
//用于出厂木材数据保存到数据库中
import java.sql.Date;

public class outyard {
	private double workid;
	private Date   yarddate;
	private String carNumber;
	private String yard;
	private String batchNum;//检尺标准
	private String surveyor;
	private double toltree;
	private double tolstere;
	public double getWorkid() {
		return workid;
	}
	public void setWorkid(double workid) {
		this.workid = workid;
	}
    
    public Date getYarddate() {
    	return yarddate;
    }
    public void setYarddate(Date yarddate) {
    	this.yarddate = yarddate;
    }
    
	public String getCarNumber() {
	     return carNumber;
   }
   public void setCarNumber(String carNumber) {
  	    this.carNumber = carNumber;
   }
   public String getYard() {
	   return yard;
   }
   public void setYard(String yard) {
	   this.yard = yard;
   }
   public String getBatchNum() {
	     return batchNum;
   }
   public void setBatchNum(String batchNum) {
 	   this.batchNum = batchNum;
   }
   public String getSurveyor() {
   	     return surveyor;
   }
   public void setSurveyor(String surveyor) {
   	this.surveyor = surveyor;
   }
   public double getTolTree() {
		return toltree;
	}
	public void setTolTree(double toltree) {
		this.toltree = toltree;
	}
	public double getTolStere() {
		return tolstere;
	}
	public void setTolStere(double tolstere) {
		this.tolstere = tolstere;
	}

}
