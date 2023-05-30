package com.ruoyi.financial.mapper;

import java.util.List;
import com.ruoyi.financial.domain.Affair;

/**
 * 事务Mapper接口
 * 
 * @author Keven
 * @date 2023-05-30
 */
public interface AffairMapper 
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
     * 删除事务
     * 
     * @param id 事务主键
     * @return 结果
     */
    public int deleteAffairById(Long id);

    /**
     * 批量删除事务
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteAffairByIds(Long[] ids);
}
