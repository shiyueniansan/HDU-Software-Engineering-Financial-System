package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.PayMapper;
import com.ruoyi.financial.domain.Pay;
import com.ruoyi.financial.service.IPayService;

/**
 * 工资表Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-31
 */
@Service
public class PayServiceImpl implements IPayService 
{
    @Autowired
    private PayMapper payMapper;

    /**
     * 查询工资表
     * 
     * @param facultyId 工资表主键
     * @return 工资表
     */
    @Override
    public Pay selectPayByFacultyId(Long facultyId)
    {
        return payMapper.selectPayByFacultyId(facultyId);
    }

    /**
     * 查询工资表列表
     * 
     * @param pay 工资表
     * @return 工资表
     */
    @Override
    public List<Pay> selectPayList(Pay pay)
    {
        return payMapper.selectPayList(pay);
    }

    /**
     * 新增工资表
     * 
     * @param pay 工资表
     * @return 结果
     */
    @Override
    public int insertPay(Pay pay)
    {
        return payMapper.insertPay(pay);
    }

    /**
     * 修改工资表
     * 
     * @param pay 工资表
     * @return 结果
     */
    @Override
    public int updatePay(Pay pay)
    {
        return payMapper.updatePay(pay);
    }

    /**
     * 批量删除工资表
     * 
     * @param facultyIds 需要删除的工资表主键
     * @return 结果
     */
    @Override
    public int deletePayByFacultyIds(Long[] facultyIds)
    {
        return payMapper.deletePayByFacultyIds(facultyIds);
    }

    /**
     * 删除工资表信息
     * 
     * @param facultyId 工资表主键
     * @return 结果
     */
    @Override
    public int deletePayByFacultyId(Long facultyId)
    {
        return payMapper.deletePayByFacultyId(facultyId);
    }
}
