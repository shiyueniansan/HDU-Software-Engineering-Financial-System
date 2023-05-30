package com.ruoyi.financial.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教职工对象 faculty
 * 
 * @author Keven
 * @date 2023-05-30
 */
public class Faculty extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String name;

    /** 教师/职工 */
    @Excel(name = "教师/职工")
    private Long type;

    /** 职称 */
    @Excel(name = "职称")
    private Long title;

    /** 职务 */
    @Excel(name = "职务")
    private Long job;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long basicPay;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long livingSubsidy;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long readingSubsidy;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long transportationSubsidy;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long washingSubsidy;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long quotaHour;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setName(String name) 
    {
        this.name = name;
    }

    public String getName() 
    {
        return name;
    }
    public void setType(Long type) 
    {
        this.type = type;
    }

    public Long getType() 
    {
        return type;
    }
    public void setTitle(Long title) 
    {
        this.title = title;
    }

    public Long getTitle() 
    {
        return title;
    }
    public void setJob(Long job) 
    {
        this.job = job;
    }

    public Long getJob() 
    {
        return job;
    }
    public void setBasicPay(Long basicPay) 
    {
        this.basicPay = basicPay;
    }

    public Long getBasicPay() 
    {
        return basicPay;
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
    public void setQuotaHour(Long quotaHour) 
    {
        this.quotaHour = quotaHour;
    }

    public Long getQuotaHour() 
    {
        return quotaHour;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("type", getType())
            .append("title", getTitle())
            .append("job", getJob())
            .append("basicPay", getBasicPay())
            .append("livingSubsidy", getLivingSubsidy())
            .append("readingSubsidy", getReadingSubsidy())
            .append("transportationSubsidy", getTransportationSubsidy())
            .append("washingSubsidy", getWashingSubsidy())
            .append("quotaHour", getQuotaHour())
            .toString();
    }
}
