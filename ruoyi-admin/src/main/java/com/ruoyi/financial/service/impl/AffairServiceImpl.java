package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.AffairMapper;
import com.ruoyi.financial.domain.Affair;
import com.ruoyi.financial.service.IAffairService;

/**
 * 事务Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-30
 */
@Service
public class AffairServiceImpl implements IAffairService 
{
    @Autowired
    private AffairMapper affairMapper;

    /**
     * 查询事务
     * 
     * @param id 事务主键
     * @return 事务
     */
    @Override
    public Affair selectAffairById(Long id)
    {
        return affairMapper.selectAffairById(id);
    }

    /**
     * 查询事务列表
     * 
     * @param affair 事务
     * @return 事务
     */
    @Override
    public List<Affair> selectAffairList(Affair affair)
    {
        return affairMapper.selectAffairList(affair);
    }

    /**
     * 新增事务
     * 
     * @param affair 事务
     * @return 结果
     */
    @Override
    public int insertAffair(Affair affair)
    {
        return affairMapper.insertAffair(affair);
    }

    /**
     * 修改事务
     * 
     * @param affair 事务
     * @return 结果
     */
    @Override
    public int updateAffair(Affair affair)
    {
        return affairMapper.updateAffair(affair);
    }

    /**
     * 批量删除事务
     * 
     * @param ids 需要删除的事务主键
     * @return 结果
     */
    @Override
    public int deleteAffairByIds(Long[] ids)
    {
        return affairMapper.deleteAffairByIds(ids);
    }

    /**
     * 删除事务信息
     * 
     * @param id 事务主键
     * @return 结果
     */
    @Override
    public int deleteAffairById(Long id)
    {
        return affairMapper.deleteAffairById(id);
    }
}
