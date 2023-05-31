package com.ruoyi.financial.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教职工年度对象 faculty_yearly
 *
 * @author Keven
 * @date 2023-05-31
 */
public class FacultyYearly extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 教职工编号 */
    @Excel(name = "教职工编号")
    private Long facultyId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 本年度累计工资总额 */
    @Excel(name = "本年度累计工资总额")
    private Long totalPay;

    /** 本年度累计授课时数 */
    @Excel(name = "本年度累计授课时数")
    private Long hour;

    /** 上年度月平均工资 */
    @Excel(name = "上年度月平均工资")
    private Long avgPay;

    /** 本年度累计实发工资 */
    @Excel(name = "本年度累计实发工资")
    private Long netPay;

    //constructor with facultyId and name
    public FacultyYearly(Long facultyId, String name) {
        this.facultyId = facultyId;
        this.name = name;
    }

    //constructor with faculty
    public FacultyYearly(Faculty faculty) {
        this.facultyId = faculty.getId();
        this.name = faculty.getName();
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
    public void setTotalPay(Long totalPay)
    {
        this.totalPay = totalPay;
    }

    public Long getTotalPay()
    {
        return totalPay;
    }
    public void setHour(Long hour)
    {
        this.hour = hour;
    }

    public Long getHour()
    {
        return hour;
    }
    public void setAvgPay(Long avgPay)
    {
        this.avgPay = avgPay;
    }

    public Long getAvgPay()
    {
        return avgPay;
    }
    public void setNetPay(Long netPay)
    {
        this.netPay = netPay;
    }

    public Long getNetPay()
    {
        return netPay;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("facultyId", getFacultyId())
            .append("name", getName())
            .append("totalPay", getTotalPay())
            .append("hour", getHour())
            .append("avgPay", getAvgPay())
            .append("netPay", getNetPay())
            .toString();
    }
}
