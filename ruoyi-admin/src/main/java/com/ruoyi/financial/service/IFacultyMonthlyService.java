package com.ruoyi.financial.service;

import java.util.List;
import com.ruoyi.financial.domain.FacultyMonthly;

/**
 * 工资Service接口
 * 
 * @author Keven
 * @date 2023-05-30
 */
public interface IFacultyMonthlyService 
{
    /**
     * 查询工资
     * 
     * @param id 工资主键
     * @return 工资
     */
    public FacultyMonthly selectFacultyMonthlyById(Long id);

    /**
     * 查询工资列表
     * 
     * @param facultyMonthly 工资
     * @return 工资集合
     */
    public List<FacultyMonthly> selectFacultyMonthlyList(FacultyMonthly facultyMonthly);

    /**
     * 新增工资
     * 
     * @param facultyMonthly 工资
     * @return 结果
     */
    public int insertFacultyMonthly(FacultyMonthly facultyMonthly);

    /**
     * 修改工资
     * 
     * @param facultyMonthly 工资
     * @return 结果
     */
    public int updateFacultyMonthly(FacultyMonthly facultyMonthly);

    /**
     * 批量删除工资
     * 
     * @param ids 需要删除的工资主键集合
     * @return 结果
     */
    public int deleteFacultyMonthlyByIds(Long[] ids);

    /**
     * 删除工资信息
     * 
     * @param id 工资主键
     * @return 结果
     */
    public int deleteFacultyMonthlyById(Long id);
}
