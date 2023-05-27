package com.ruoyi.financial.mapper;

import java.util.List;
import com.ruoyi.financial.domain.Work;

/**
 * 课时任务Mapper接口
 * 
 * @author Keven
 * @date 2023-05-27
 */
public interface WorkMapper 
{
    /**
     * 查询课时任务
     * 
     * @param id 课时任务主键
     * @return 课时任务
     */
    public Work selectWorkById(Long id);

    /**
     * 查询课时任务列表
     * 
     * @param work 课时任务
     * @return 课时任务集合
     */
    public List<Work> selectWorkList(Work work);

    /**
     * 新增课时任务
     * 
     * @param work 课时任务
     * @return 结果
     */
    public int insertWork(Work work);

    /**
     * 修改课时任务
     * 
     * @param work 课时任务
     * @return 结果
     */
    public int updateWork(Work work);

    /**
     * 删除课时任务
     * 
     * @param id 课时任务主键
     * @return 结果
     */
    public int deleteWorkById(Long id);

    /**
     * 批量删除课时任务
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteWorkByIds(Long[] ids);
}
