package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.PositionMapper;
import com.ruoyi.financial.domain.Position;
import com.ruoyi.financial.service.IPositionService;

/**
 * 职务Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-27
 */
@Service
public class PositionServiceImpl implements IPositionService 
{
    @Autowired
    private PositionMapper positionMapper;

    /**
     * 查询职务
     * 
     * @param id 职务主键
     * @return 职务
     */
    @Override
    public Position selectPositionById(Long id)
    {
        return positionMapper.selectPositionById(id);
    }

    /**
     * 查询职务列表
     * 
     * @param position 职务
     * @return 职务
     */
    @Override
    public List<Position> selectPositionList(Position position)
    {
        return positionMapper.selectPositionList(position);
    }

    /**
     * 新增职务
     * 
     * @param position 职务
     * @return 结果
     */
    @Override
    public int insertPosition(Position position)
    {
        return positionMapper.insertPosition(position);
    }

    /**
     * 修改职务
     * 
     * @param position 职务
     * @return 结果
     */
    @Override
    public int updatePosition(Position position)
    {
        return positionMapper.updatePosition(position);
    }

    /**
     * 批量删除职务
     * 
     * @param ids 需要删除的职务主键
     * @return 结果
     */
    @Override
    public int deletePositionByIds(Long[] ids)
    {
        return positionMapper.deletePositionByIds(ids);
    }

    /**
     * 删除职务信息
     * 
     * @param id 职务主键
     * @return 结果
     */
    @Override
    public int deletePositionById(Long id)
    {
        return positionMapper.deletePositionById(id);
    }
}
