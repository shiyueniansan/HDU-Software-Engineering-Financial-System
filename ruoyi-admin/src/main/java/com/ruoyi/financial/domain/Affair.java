package com.ruoyi.financial.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 事务对象 affair
 * 
 * @author Keven
 * @date 2023-05-30
 */
public class Affair extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 教职工编号 */
    @Excel(name = "教职工编号")
    private Long facultyId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 月份 */
    @Excel(name = "月份")
    private Long month;

    /** 描述 */
    @Excel(name = "描述")
    private String des;

    /** 时长 */
    @Excel(name = "时长")
    private Long hour;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setFacultyId(Long facultyId) 
    {
        this.facultyId = facultyId;
    }

    public Long getFacultyId() 
    {
        return facultyId;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setMonth(Long month) 
    {
        this.month = month;
    }

    public Long getMonth() 
    {
        return month;
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

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("facultyId", getFacultyId())
            .append("name", getName())
            .append("month", getMonth())
            .append("des", getDes())
            .append("hour", getHour())
            .toString();
    }
}
