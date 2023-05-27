package com.ruoyi.financial.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 职称对象 title
 * 
 * @author Keven
 * @date 2023-05-27
 */
public class Title extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private Long id;

    /** 职称 */
    @Excel(name = "职称")
    private String des;

    /** 基本工资 */
    @Excel(name = "基本工资")
    private Long wage;

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
    public void setWage(Long wage) 
    {
        this.wage = wage;
    }

    public Long getWage() 
    {
        return wage;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("des", getDes())
            .append("wage", getWage())
            .toString();
    }
}
