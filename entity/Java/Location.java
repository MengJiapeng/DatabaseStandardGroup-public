package xmu.crms.coursemanagesystem.entity;

import java.math.BigInteger;

public class Location {
	private BigInteger id;
	private ClassInfo classInfo;
	private Seminar seminar;
	private Double BigIntegeritude;
	private Double latitude;
	private Integer status;
	
	public BigInteger getId() {
		return id;
	}
	public void setId(BigInteger id) {
		this.id = id;
	}
	public ClassInfo getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}
	public Seminar getSeminar() {
		return seminar;
	}
	public void setSeminar(Seminar seminar) {
		this.seminar = seminar;
	}
	public Double getBigIntegeritude() {
		return BigIntegeritude;
	}
	public void setBigIntegeritude(Double BigIntegeritude) {
		this.BigIntegeritude = BigIntegeritude;
	}
	public Double getLatitude() {
		return latitude;
	}
	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}

}
