package com.ruoyi.financial.mapper;

import java.util.List;
import com.ruoyi.financial.domain.FacultyYearly;

/**
 * 教职工年度Mapper接口
 * 
 * @author Keven
 * @date 2023-05-30
 */
public interface FacultyYearlyMapper 
{
    /**
     * 查询教职工年度
     * 
     * @param id 教职工年度主键
     * @return 教职工年度
     */
    public FacultyYearly selectFacultyYearlyById(Long id);

    /**
     * 查询教职工年度列表
     * 
     * @param facultyYearly 教职工年度
     * @return 教职工年度集合
     */
    public List<FacultyYearly> selectFacultyYearlyList(FacultyYearly facultyYearly);

    /**
     * 新增教职工年度
     * 
     * @param facultyYearly 教职工年度
     * @return 结果
     */
    public int insertFacultyYearly(FacultyYearly facultyYearly);

    /**
     * 修改教职工年度
     * 
     * @param facultyYearly 教职工年度
     * @return 结果
     */
    public int updateFacultyYearly(FacultyYearly facultyYearly);

    /**
     * 删除教职工年度
     * 
     * @param id 教职工年度主键
     * @return 结果
     */
    public int deleteFacultyYearlyById(Long id);

    /**
     * 批量删除教职工年度
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteFacultyYearlyByIds(Long[] ids);
}
