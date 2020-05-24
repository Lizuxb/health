package com.project.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.project.common.base.BaseEntity;
import java.util.Date;

/**
 * 日志模块表 user_log
 *
 * @author administrator
 * @date 2020-04-05
 */
public class UserLog extends BaseEntity{
	private static final long serialVersionUID = 1L;

	/** 主键 */
	private Long id;
	/** 用户 */
	private Long userId;
	private String userName;
	/** 标题 */
	private String title;
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
	public void setTitle(String title){
		this.title = title;
	}

	public String getTitle(){
		return title;
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

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("userId", getUserId())
            .append("title", getTitle())
            .append("content", getContent())
            .append("createTime", getCreateTime())
            .toString();
    }
}
