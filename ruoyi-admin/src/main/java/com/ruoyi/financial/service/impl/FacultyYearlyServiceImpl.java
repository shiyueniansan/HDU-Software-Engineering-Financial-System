package com.ruoyi.financial.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.FacultyYearlyMapper;
import com.ruoyi.financial.domain.FacultyYearly;
import com.ruoyi.financial.service.IFacultyYearlyService;

/**
 * 教职工年度Service业务层处理
 * 
 * @author Keven
 * @date 2023-05-30
 */
@Service
public class FacultyYearlyServiceImpl implements IFacultyYearlyService 
{
    @Autowired
    private FacultyYearlyMapper facultyYearlyMapper;

    /**
     * 查询教职工年度
     * 
     * @param id 教职工年度主键
     * @return 教职工年度
     */
    @Override
    public FacultyYearly selectFacultyYearlyById(Long id)
    {
        return facultyYearlyMapper.selectFacultyYearlyById(id);
    }

    /**
     * 查询教职工年度列表
     * 
     * @param facultyYearly 教职工年度
     * @return 教职工年度
     */
    @Override
    public List<FacultyYearly> selectFacultyYearlyList(FacultyYearly facultyYearly)
    {
        return facultyYearlyMapper.selectFacultyYearlyList(facultyYearly);
    }

    /**
     * 新增教职工年度
     * 
     * @param facultyYearly 教职工年度
     * @return 结果
     */
    @Override
    public int insertFacultyYearly(FacultyYearly facultyYearly)
    {
        return facultyYearlyMapper.insertFacultyYearly(facultyYearly);
    }

    /**
     * 修改教职工年度
     * 
     * @param facultyYearly 教职工年度
     * @return 结果
     */
    @Override
    public int updateFacultyYearly(FacultyYearly facultyYearly)
    {
        return facultyYearlyMapper.updateFacultyYearly(facultyYearly);
    }

    /**
     * 批量删除教职工年度
     * 
     * @param ids 需要删除的教职工年度主键
     * @return 结果
     */
    @Override
    public int deleteFacultyYearlyByIds(Long[] ids)
    {
        return facultyYearlyMapper.deleteFacultyYearlyByIds(ids);
    }

    /**
     * 删除教职工年度信息
     * 
     * @param id 教职工年度主键
     * @return 结果
     */
    @Override
    public int deleteFacultyYearlyById(Long id)
    {
        return facultyYearlyMapper.deleteFacultyYearlyById(id);
    }
}
