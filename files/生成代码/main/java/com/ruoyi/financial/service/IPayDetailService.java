package com.ruoyi.financial.service;

import java.util.List;
import com.ruoyi.financial.domain.PayDetail;

/**
 * 工资明细表Service接口
 * 
 * @author Keven
 * @date 2023-05-31
 */
public interface IPayDetailService 
{
    /**
     * 查询工资明细表
     * 
     * @param facultyId 工资明细表主键
     * @return 工资明细表
     */
    public PayDetail selectPayDetailByFacultyId(Long facultyId);

    /**
     * 查询工资明细表列表
     * 
     * @param payDetail 工资明细表
     * @return 工资明细表集合
     */
    public List<PayDetail> selectPayDetailList(PayDetail payDetail);

    /**
     * 新增工资明细表
     * 
     * @param payDetail 工资明细表
     * @return 结果
     */
    public int insertPayDetail(PayDetail payDetail);

    /**
     * 修改工资明细表
     * 
     * @param payDetail 工资明细表
     * @return 结果
     */
    public int updatePayDetail(PayDetail payDetail);

    /**
     * 批量删除工资明细表
     * 
     * @param facultyIds 需要删除的工资明细表主键集合
     * @return 结果
     */
    public int deletePayDetailByFacultyIds(Long[] facultyIds);

    /**
     * 删除工资明细表信息
     * 
     * @param facultyId 工资明细表主键
     * @return 结果
     */
    public int deletePayDetailByFacultyId(Long facultyId);
}
