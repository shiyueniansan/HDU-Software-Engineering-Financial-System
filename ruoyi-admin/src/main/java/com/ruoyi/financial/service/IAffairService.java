package com.ruoyi.financial.service;

import java.util.List;
import com.ruoyi.financial.domain.Affair;

/**
 * 事务Service接口
 * 
 * @author Keven
 * @date 2023-05-30
 */
public interface IAffairService 
{
    /**
     * 查询事务
     * 
     * @param id 事务主键
     * @return 事务
     */
    public Affair selectAffairById(Long id);

    /**
     * 查询事务列表
     * 
     * @param affair 事务
     * @return 事务集合
     */
    public List<Affair> selectAffairList(Affair affair);

    /**
     * 新增事务
     * 
     * @param affair 事务
     * @return 结果
     */
    public int insertAffair(Affair affair);

    /**
     * 修改事务
     * 
     * @param affair 事务
     * @return 结果
     */
    public int updateAffair(Affair affair);

    /**
     * 批量删除事务
     * 
     * @param ids 需要删除的事务主键集合
     * @return 结果
     */
    public int deleteAffairByIds(Long[] ids);

    /**
     * 删除事务信息
     * 
     * @param id 事务主键
     * @return 结果
     */
    public int deleteAffairById(Long id);
}
