package com.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.project.common.base.BaseEntity;
import java.util.Date;

/**
 * 病例表 user_case
 *
 * @author administrator
 * @date 2020-04-05
 */
public class UserCase extends BaseEntity{
	private static final long serialVersionUID = 1L;

	/** 编号 */
	private Long id;
	/** 用户 */
	private Long userId;
	private String userName;
	/** 医生 */
	private Long doctorId;
	private String doctorName;

	/** 内容 */
	private String content;

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
	public void setContent(String content){
		this.content = content;
	}

	public String getContent(){
		return content;
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
            .append("content", getContent())
            .append("createTime", getCreateTime())
            .toString();
    }
}
