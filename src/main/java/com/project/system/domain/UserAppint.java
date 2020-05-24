package com.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.project.common.base.BaseEntity;
import java.util.Date;

/**
 * 预约表 user_appint
 *
 * @author administrator
 * @date 2020-04-05
 */
public class UserAppint extends BaseEntity{
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Long id;
	/** 用户 */
	private Long userId;
	private String userName;
	/** 医生 */
	private Long doctorId;
	private String doctorName;
	/** 状态0待确认1已预约2已结束 */
	private Integer status;
	/** 预约日期 */
	private String appointDate;
	/** 预约备注 */
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
	public void setDoctorId(Long doctorId){
		this.doctorId = doctorId;
	}

	public Long getDoctorId(){
		return doctorId;
	}
	public void setStatus(Integer status){
		this.status = status;
	}

	public Integer getStatus(){
		return status;
	}
	public void setAppointDate(String appointDate){
		this.appointDate = appointDate;
	}

	public String getAppointDate(){
		return appointDate;
	}
	public void setRemark(String remark){
		this.remark = remark;
	}

	public String getRemark(){
		return remark;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("doctorId", getDoctorId())
            .append("status", getStatus())
            .append("appointDate", getAppointDate())
            .append("remark", getRemark())
            .toString();
    }
}
