package com.ruoyi.financial.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 工资明细表对象 faculty_monthly
 *
 * @author Keven
 * @date 2023-05-31
 */
public class PayDetail extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 教职工编号 */
    @Excel(name = "教职工编号")
    private Long facultyId;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 月份 */
    @Excel(name = "月份")
    private Long month;

    /** 基本工资 */
    @Excel(name = "基本工资")
    private Long basicPay;

    /** 职务 */
    @Excel(name = "职务")
    private Long job;

    /** 职称 */
    @Excel(name = "职称")
    private Long title;

    /** 生活补贴 */
    @Excel(name = "生活补贴")
    private Long livingSubsidy;

    /** 书报费 */
    @Excel(name = "书报费")
    private Long readingSubsidy;

    /** 交通费 */
    @Excel(name = "交通费")
    private Long transportationSubsidy;

    /** 洗理费 */
    @Excel(name = "洗理费")
    private Long washingSubsidy;

    /** 课时费 */
    @Excel(name = "课时费")
    private Long teacherPay;

    /** 岗位津贴 */
    @Excel(name = "岗位津贴")
    private Long staffPay;

    /** 超额课时费 */
    @Excel(name = "超额课时费")
    private Long extraTeacherPay;

    /** 工资总额 */
    @Excel(name = "工资总额")
    private Long totalPay;

    /** 个人所得税 */
    @Excel(name = "个人所得税")
    private Long tax;

    /** 住房公积金 */
    @Excel(name = "住房公积金")
    private Long housing;

    /** 保险费 */
    @Excel(name = "保险费")
    private Long insurance;

    /** 实发工资 */
    @Excel(name = "实发工资")
    private Long netPay;

//    //constructor with facultyId and name
//    public PayDetail(Long facultyId, String name, Long month) {
//        this.facultyId = facultyId;
//        this.name = name;
//        this.month = month;
//    }

//    //constructor with no parameter
//    public PayDetail() {
//    }

    //constructor with faculty and month
    public PayDetail(Faculty faculty, Long month) {
        this.facultyId = faculty.getId();
        this.name = faculty.getName();
        this.month = month;
        this.basicPay = faculty.getBasicPay();
        this.job = faculty.getJob();
        this.title = faculty.getTitle();
        this.livingSubsidy = faculty.getLivingSubsidy();
        this.readingSubsidy = faculty.getReadingSubsidy();
        this.transportationSubsidy = faculty.getTransportationSubsidy();
        this.washingSubsidy = faculty.getWashingSubsidy();
    }

    //constuctor with faculty
    public PayDetail(Faculty faculty) {
        this.facultyId = faculty.getId();
        this.name = faculty.getName();
        this.basicPay = faculty.getBasicPay();
        this.job = faculty.getJob();
        this.title = faculty.getTitle();
        this.livingSubsidy = faculty.getLivingSubsidy();
        this.readingSubsidy = faculty.getReadingSubsidy();
        this.transportationSubsidy = faculty.getTransportationSubsidy();
        this.washingSubsidy = faculty.getWashingSubsidy();
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
    public void setBasicPay(Long basicPay)
    {
        this.basicPay = basicPay;
    }

    public Long getBasicPay()
    {
        return basicPay;
    }
    public void setJob(Long job)
    {
        this.job = job;
    }

    public Long getJob()
    {
        return job;
    }
    public void setTitle(Long title)
    {
        this.title = title;
    }

    public Long getTitle()
    {
        return title;
    }
    public void setLivingSubsidy(Long livingSubsidy)
    {
        this.livingSubsidy = livingSubsidy;
    }

    public Long getLivingSubsidy()
    {
        return livingSubsidy;
    }
    public void setReadingSubsidy(Long readingSubsidy)
    {
        this.readingSubsidy = readingSubsidy;
    }

    public Long getReadingSubsidy()
    {
        return readingSubsidy;
    }
    public void setTransportationSubsidy(Long transportationSubsidy)
    {
        this.transportationSubsidy = transportationSubsidy;
    }

    public Long getTransportationSubsidy()
    {
        return transportationSubsidy;
    }
    public void setWashingSubsidy(Long washingSubsidy)
    {
        this.washingSubsidy = washingSubsidy;
    }

    public Long getWashingSubsidy()
    {
        return washingSubsidy;
    }
    public void setTeacherPay(Long teacherPay)
    {
        this.teacherPay = teacherPay;
    }

    public Long getTeacherPay()
    {
        return teacherPay;
    }
    public void setStaffPay(Long staffPay)
    {
        this.staffPay = staffPay;
    }

    public Long getStaffPay()
    {
        return staffPay;
    }
    public void setExtraTeacherPay(Long extraTeacherPay)
    {
        this.extraTeacherPay = extraTeacherPay;
    }

    public Long getExtraTeacherPay()
    {
        return extraTeacherPay;
    }
    public void setTotalPay(Long totalPay)
    {
        this.totalPay = totalPay;
    }

    public Long getTotalPay()
    {
        return totalPay;
    }
    public void setTax(Long tax)
    {
        this.tax = tax;
    }

    public Long getTax()
    {
        return tax;
    }
    public void setHousing(Long housing)
    {
        this.housing = housing;
    }

    public Long getHousing()
    {
        return housing;
    }
    public void setInsurance(Long insurance)
    {
        this.insurance = insurance;
    }

    public Long getInsurance()
    {
        return insurance;
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
            .append("month", getMonth())
            .append("basicPay", getBasicPay())
            .append("job", getJob())
            .append("title", getTitle())
            .append("livingSubsidy", getLivingSubsidy())
            .append("readingSubsidy", getReadingSubsidy())
            .append("transportationSubsidy", getTransportationSubsidy())
            .append("washingSubsidy", getWashingSubsidy())
            .append("teacherPay", getTeacherPay())
            .append("staffPay", getStaffPay())
            .append("extraTeacherPay", getExtraTeacherPay())
            .append("totalPay", getTotalPay())
            .append("tax", getTax())
            .append("housing", getHousing())
            .append("insurance", getInsurance())
            .append("netPay", getNetPay())
            .toString();
    }
}
