package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.PayDetailsMapper;
import com.ruoyi.financial.domain.PayDetails;
import com.ruoyi.financial.service.IPayDetailsService;

/**
 * 全部工资明细表Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-31
 */
@Service
public class PayDetailsServiceImpl implements IPayDetailsService 
{
    @Autowired
    private PayDetailsMapper payDetailsMapper;

    /**
     * 查询全部工资明细表
     * 
     * @param facultyId 全部工资明细表主键
     * @return 全部工资明细表
     */
    @Override
    public PayDetails selectPayDetailsByFacultyId(Long facultyId)
    {
        return payDetailsMapper.selectPayDetailsByFacultyId(facultyId);
    }

    /**
     * 查询全部工资明细表列表
     * 
     * @param payDetails 全部工资明细表
     * @return 全部工资明细表
     */
    @Override
    public List<PayDetails> selectPayDetailsList(PayDetails payDetails)
    {
        return payDetailsMapper.selectPayDetailsList(payDetails);
    }

    /**
     * 新增全部工资明细表
     * 
     * @param payDetails 全部工资明细表
     * @return 结果
     */
    @Override
    public int insertPayDetails(PayDetails payDetails)
    {
        return payDetailsMapper.insertPayDetails(payDetails);
    }

    /**
     * 修改全部工资明细表
     * 
     * @param payDetails 全部工资明细表
     * @return 结果
     */
    @Override
    public int updatePayDetails(PayDetails payDetails)
    {
        return payDetailsMapper.updatePayDetails(payDetails);
    }

    /**
     * 批量删除全部工资明细表
     * 
     * @param facultyIds 需要删除的全部工资明细表主键
     * @return 结果
     */
    @Override
    public int deletePayDetailsByFacultyIds(Long[] facultyIds)
    {
        return payDetailsMapper.deletePayDetailsByFacultyIds(facultyIds);
    }

    /**
     * 删除全部工资明细表信息
     * 
     * @param facultyId 全部工资明细表主键
     * @return 结果
     */
    @Override
    public int deletePayDetailsByFacultyId(Long facultyId)
    {
        return payDetailsMapper.deletePayDetailsByFacultyId(facultyId);
    }
}
