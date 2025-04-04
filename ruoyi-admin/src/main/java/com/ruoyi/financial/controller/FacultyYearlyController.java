package com.ruoyi.financial.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.financial.domain.FacultyYearly;
import com.ruoyi.financial.service.IFacultyYearlyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教职工年度Controller
 *
 * @author Keven
 * @date 2023-05-31
 */
@RestController
@RequestMapping("/financial/yearly")
public class FacultyYearlyController extends BaseController
{
    @Autowired
    private IFacultyYearlyService facultyYearlyService;

    /**
     * 查询教职工年度列表
     */
    @PreAuthorize("@ss.hasPermi('financial:yearly:list')")
    @GetMapping("/list")
    public TableDataInfo list(FacultyYearly facultyYearly)
    {
        startPage();
        List<FacultyYearly> list = facultyYearlyService.selectFacultyYearlyList(facultyYearly);
        //计算本年度累计授课时数
        facultyYearlyService.updateHours(list);
        //计算本年度累计工资总额及实发工资
        facultyYearlyService.updatePay(list);
        return getDataTable(list);
    }

    /**
     * 导出教职工年度列表
     */
    @PreAuthorize("@ss.hasPermi('financial:yearly:export')")
    @Log(title = "教职工年度", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, FacultyYearly facultyYearly)
    {
        List<FacultyYearly> list = facultyYearlyService.selectFacultyYearlyList(facultyYearly);
        facultyYearlyService.updateHours(list);
        facultyYearlyService.updatePay(list);
        ExcelUtil<FacultyYearly> util = new ExcelUtil<FacultyYearly>(FacultyYearly.class);
        util.exportExcel(response, list, "教职工年度数据");
    }
}
