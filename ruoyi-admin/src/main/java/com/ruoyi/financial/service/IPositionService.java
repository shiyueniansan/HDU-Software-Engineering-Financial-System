package com.ruoyi.financial.service;

import java.util.List;
import com.ruoyi.financial.domain.Position;

/**
 * 职务Service接口
 * 
 * @author Keven
 * @date 2023-05-27
 */
public interface IPositionService 
{
    /**
     * 查询职务
     * 
     * @param id 职务主键
     * @return 职务
     */
    public Position selectPositionById(Long id);

    /**
     * 查询职务列表
     * 
     * @param position 职务
     * @return 职务集合
     */
    public List<Position> selectPositionList(Position position);

    /**
     * 新增职务
     * 
     * @param position 职务
     * @return 结果
     */
    public int insertPosition(Position position);

    /**
     * 修改职务
     * 
     * @param position 职务
     * @return 结果
     */
    public int updatePosition(Position position);

    /**
     * 批量删除职务
     * 
     * @param ids 需要删除的职务主键集合
     * @return 结果
     */
    public int deletePositionByIds(Long[] ids);

    /**
     * 删除职务信息
     * 
     * @param id 职务主键
     * @return 结果
     */
    public int deletePositionById(Long id);
}
