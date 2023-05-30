package com.ruoyi.financial.mapper;

import java.util.List;
import com.ruoyi.financial.domain.PayDetails;

/**
 * 全部工资明细表Mapper接口
 * 
 * @author Keven
 * @date 2023-05-30
 */
public interface PayDetailsMapper 
{
    /**
     * 查询全部工资明细表
     * 
     * @param facultyId 全部工资明细表主键
     * @return 全部工资明细表
     */
    public PayDetails selectPayDetailsByFacultyId(Long facultyId);

    /**
     * 查询全部工资明细表列表
     * 
     * @param payDetails 全部工资明细表
     * @return 全部工资明细表集合
     */
    public List<PayDetails> selectPayDetailsList(PayDetails payDetails);

    /**
     * 新增全部工资明细表
     * 
     * @param payDetails 全部工资明细表
     * @return 结果
     */
    public int insertPayDetails(PayDetails payDetails);

    /**
     * 修改全部工资明细表
     * 
     * @param payDetails 全部工资明细表
     * @return 结果
     */
    public int updatePayDetails(PayDetails payDetails);

    /**
     * 删除全部工资明细表
     * 
     * @param facultyId 全部工资明细表主键
     * @return 结果
     */
    public int deletePayDetailsByFacultyId(Long facultyId);

    /**
     * 批量删除全部工资明细表
     * 
     * @param facultyIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deletePayDetailsByFacultyIds(Long[] facultyIds);
}
