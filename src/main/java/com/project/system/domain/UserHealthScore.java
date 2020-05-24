package com.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.project.common.base.BaseEntity;

/**
 * 用户评估表 user_health_score
 *
 * @author administrator
 * @date 2020-04-05
 */
public class UserHealthScore extends BaseEntity{
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Long id;
	/** 用户 */
	private Long userId;
	private String userName;
	/** 医生 */
	private Long doctor;
	private String doctorName;

	/** 内科 */
	private Double neiKe;
	/** 外科 */
	private Double waiKe;
	/** 眼科 */
	private Double yanKe;
	/** 耳鼻喉 */
	private Double erBiHou;
	/** 口腔 */
	private Double kouQiang;
	/** 医生建议 */
	private String remark;

	public void setId(Long id){
		this.id = id;
	}

	public Long getId(){
		return id;
	}
	public void setUserId(Long userId){
		this.userId = userId;
	}

	public Long getUserId(){
		return userId;
	}
	public void setDoctor(Long doctor){
		this.doctor = doctor;
	}

	public Long getDoctor(){
		return doctor;
	}
	public void setNeiKe(Double neiKe){
		this.neiKe = neiKe;
	}

	public Double getNeiKe(){
		return neiKe;
	}
	public void setWaiKe(Double waiKe){
		this.waiKe = waiKe;
	}

	public Double getWaiKe(){
		return waiKe;
	}
	public void setYanKe(Double yanKe){
		this.yanKe = yanKe;
	}

	public Double getYanKe(){
		return yanKe;
	}
	public void setErBiHou(Double erBiHou){
		this.erBiHou = erBiHou;
	}

	public Double getErBiHou(){
		return erBiHou;
	}
	public void setKouQiang(Double kouQiang){
		this.kouQiang = kouQiang;
	}

	public Double getKouQiang(){
		return kouQiang;
	}
	public void setRemark(String remark){
		this.remark = remark;
	}

	public String getRemark(){
		return remark;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("doctor", getDoctor())
            .append("neiKe", getNeiKe())
            .append("waiKe", getWaiKe())
            .append("yanKe", getYanKe())
            .append("erBiHou", getErBiHou())
            .append("kouQiang", getKouQiang())
            .append("remark", getRemark())
            .toString();
    }
}
