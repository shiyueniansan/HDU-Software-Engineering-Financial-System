package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.WorkMapper;
import com.ruoyi.financial.domain.Work;
import com.ruoyi.financial.service.IWorkService;

/**
 * 课时任务Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-27
 */
@Service
public class WorkServiceImpl implements IWorkService 
{
    @Autowired
    private WorkMapper workMapper;

    /**
     * 查询课时任务
     * 
     * @param id 课时任务主键
     * @return 课时任务
     */
    @Override
    public Work selectWorkById(Long id)
    {
        return workMapper.selectWorkById(id);
    }

    /**
     * 查询课时任务列表
     * 
     * @param work 课时任务
     * @return 课时任务
     */
    @Override
    public List<Work> selectWorkList(Work work)
    {
        return workMapper.selectWorkList(work);
    }

    /**
     * 新增课时任务
     * 
     * @param work 课时任务
     * @return 结果
     */
    @Override
    public int insertWork(Work work)
    {
        return workMapper.insertWork(work);
    }

    /**
     * 修改课时任务
     * 
     * @param work 课时任务
     * @return 结果
     */
    @Override
    public int updateWork(Work work)
    {
        return workMapper.updateWork(work);
    }

    /**
     * 批量删除课时任务
     * 
     * @param ids 需要删除的课时任务主键
     * @return 结果
     */
    @Override
    public int deleteWorkByIds(Long[] ids)
    {
        return workMapper.deleteWorkByIds(ids);
    }

    /**
     * 删除课时任务信息
     * 
     * @param id 课时任务主键
     * @return 结果
     */
    @Override
    public int deleteWorkById(Long id)
    {
        return workMapper.deleteWorkById(id);
    }
}
