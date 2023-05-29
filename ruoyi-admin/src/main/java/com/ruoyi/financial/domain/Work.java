package com.ruoyi.financial.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课时任务对象 work
 * 
 * @author ruoyi
 * @date 2023-05-29
 */
public class Work extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 描述 */
    @Excel(name = "描述")
    private String des;

    /** 时长 */
    @Excel(name = "时长")
    private Long hour;

    /** 教职工编号 */
    @Excel(name = "教职工编号")
    private Long facultyId;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setDes(String des) 
    {
        this.des = des;
    }

    public String getDes() 
    {
        return des;
    }
    public void setHour(Long hour) 
    {
        this.hour = hour;
    }

    public Long getHour() 
    {
        return hour;
    }
    public void setFacultyId(Long facultyId) 
    {
        this.facultyId = facultyId;
    }

    public Long getFacultyId() 
    {
        return facultyId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("des", getDes())
            .append("hour", getHour())
            .append("facultyId", getFacultyId())
            .toString();
    }
}
