package com.ruoyi.financial.service;

import java.util.List;
import com.ruoyi.financial.domain.Affairs;

/**
 * 事务Service接口
 * 
 * @author Keven
 * @date 2023-05-30
 */
public interface IAffairsService 
{
    /**
     * 查询事务
     * 
     * @param id 事务主键
     * @return 事务
     */
    public Affairs selectAffairsById(Long id);

    /**
     * 查询事务列表
     * 
     * @param affairs 事务
     * @return 事务集合
     */
    public List<Affairs> selectAffairsList(Affairs affairs);

    /**
     * 新增事务
     * 
     * @param affairs 事务
     * @return 结果
     */
    public int insertAffairs(Affairs affairs);

    /**
     * 修改事务
     * 
     * @param affairs 事务
     * @return 结果
     */
    public int updateAffairs(Affairs affairs);

    /**
     * 批量删除事务
     * 
     * @param ids 需要删除的事务主键集合
     * @return 结果
     */
    public int deleteAffairsByIds(Long[] ids);

    /**
     * 删除事务信息
     * 
     * @param id 事务主键
     * @return 结果
     */
    public int deleteAffairsById(Long id);
}
