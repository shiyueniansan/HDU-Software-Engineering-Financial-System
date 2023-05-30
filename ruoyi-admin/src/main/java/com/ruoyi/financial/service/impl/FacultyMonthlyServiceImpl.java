package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.FacultyMonthlyMapper;
import com.ruoyi.financial.domain.FacultyMonthly;
import com.ruoyi.financial.service.IFacultyMonthlyService;

/**
 * 工资Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-30
 */
@Service
public class FacultyMonthlyServiceImpl implements IFacultyMonthlyService 
{
    @Autowired
    private FacultyMonthlyMapper facultyMonthlyMapper;

    /**
     * 查询工资
     * 
     * @param id 工资主键
     * @return 工资
     */
    @Override
    public FacultyMonthly selectFacultyMonthlyById(Long id)
    {
        return facultyMonthlyMapper.selectFacultyMonthlyById(id);
    }

    /**
     * 查询工资列表
     * 
     * @param facultyMonthly 工资
     * @return 工资
     */
    @Override
    public List<FacultyMonthly> selectFacultyMonthlyList(FacultyMonthly facultyMonthly)
    {
        return facultyMonthlyMapper.selectFacultyMonthlyList(facultyMonthly);
    }

    /**
     * 新增工资
     * 
     * @param facultyMonthly 工资
     * @return 结果
     */
    @Override
    public int insertFacultyMonthly(FacultyMonthly facultyMonthly)
    {
        return facultyMonthlyMapper.insertFacultyMonthly(facultyMonthly);
    }

    /**
     * 修改工资
     * 
     * @param facultyMonthly 工资
     * @return 结果
     */
    @Override
    public int updateFacultyMonthly(FacultyMonthly facultyMonthly)
    {
        return facultyMonthlyMapper.updateFacultyMonthly(facultyMonthly);
    }

    /**
     * 批量删除工资
     * 
     * @param ids 需要删除的工资主键
     * @return 结果
     */
    @Override
    public int deleteFacultyMonthlyByIds(Long[] ids)
    {
        return facultyMonthlyMapper.deleteFacultyMonthlyByIds(ids);
    }

    /**
     * 删除工资信息
     * 
     * @param id 工资主键
     * @return 结果
     */
    @Override
    public int deleteFacultyMonthlyById(Long id)
    {
        return facultyMonthlyMapper.deleteFacultyMonthlyById(id);
    }
}
