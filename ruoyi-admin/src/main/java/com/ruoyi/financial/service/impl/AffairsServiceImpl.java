package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.AffairsMapper;
import com.ruoyi.financial.domain.Affairs;
import com.ruoyi.financial.service.IAffairsService;

/**
 * 事务Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-30
 */
@Service
public class AffairsServiceImpl implements IAffairsService 
{
    @Autowired
    private AffairsMapper affairsMapper;

    /**
     * 查询事务
     * 
     * @param id 事务主键
     * @return 事务
     */
    @Override
    public Affairs selectAffairsById(Long id)
    {
        return affairsMapper.selectAffairsById(id);
    }

    /**
     * 查询事务列表
     * 
     * @param affairs 事务
     * @return 事务
     */
    @Override
    public List<Affairs> selectAffairsList(Affairs affairs)
    {
        return affairsMapper.selectAffairsList(affairs);
    }

    /**
     * 新增事务
     * 
     * @param affairs 事务
     * @return 结果
     */
    @Override
    public int insertAffairs(Affairs affairs)
    {
        return affairsMapper.insertAffairs(affairs);
    }

    /**
     * 修改事务
     * 
     * @param affairs 事务
     * @return 结果
     */
    @Override
    public int updateAffairs(Affairs affairs)
    {
        return affairsMapper.updateAffairs(affairs);
    }

    /**
     * 批量删除事务
     * 
     * @param ids 需要删除的事务主键
     * @return 结果
     */
    @Override
    public int deleteAffairsByIds(Long[] ids)
    {
        return affairsMapper.deleteAffairsByIds(ids);
    }

    /**
     * 删除事务信息
     * 
     * @param id 事务主键
     * @return 结果
     */
    @Override
    public int deleteAffairsById(Long id)
    {
        return affairsMapper.deleteAffairsById(id);
    }
}
