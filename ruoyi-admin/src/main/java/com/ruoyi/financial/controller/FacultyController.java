package com.ruoyi.financial.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.financial.domain.FacultyYearly;
import com.ruoyi.financial.domain.PayDetail;
import com.ruoyi.financial.service.IAffairService;
import com.ruoyi.financial.service.IFacultyYearlyService;
import com.ruoyi.financial.service.IPayDetailService;
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
import com.ruoyi.financial.domain.Faculty;
import com.ruoyi.financial.service.IFacultyService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 教职工Controller
 *
 * @author Keven
 * @date 2023-05-30
 */
@RestController
@RequestMapping("/financial/faculty")
public class FacultyController extends BaseController
{
    @Autowired
    private IFacultyService facultyService;

    @Autowired
    private IFacultyYearlyService facultyYearlyService;

    @Autowired
    private IAffairService affairService;

    @Autowired
    private IPayDetailService payDetailService;

    /**
     * 查询教职工列表
     */
    @PreAuthorize("@ss.hasPermi('financial:faculty:list')")
    @GetMapping("/list")
    public TableDataInfo list(Faculty faculty)
    {
        startPage();
        List<Faculty> list = facultyService.selectFacultyList(faculty);
        return getDataTable(list);
    }

    /**
     * 导出教职工列表
     */
    @PreAuthorize("@ss.hasPermi('financial:faculty:export')")
    @Log(title = "教职工", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Faculty faculty)
    {
        List<Faculty> list = facultyService.selectFacultyList(faculty);
        ExcelUtil<Faculty> util = new ExcelUtil<Faculty>(Faculty.class);
        util.exportExcel(response, list, "教职工数据");
    }

    /**
     * 获取教职工详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:faculty:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(facultyService.selectFacultyById(id));
    }

    /**
     * 新增教职工
     */
    @PreAuthorize("@ss.hasPermi('financial:faculty:add')")
    @Log(title = "教职工", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Faculty faculty)
    {
//        return toAjax(facultyService.insertFaculty(faculty));
        Integer result = facultyService.insertFaculty(faculty);
        if(result > 0){
            facultyYearlyService.insertFacultyYearly(new FacultyYearly(faculty.getId(), faculty.getName()));
            for(long i = 1; i <= 12; i++){
                payDetailService.insertPayDetail(new PayDetail(faculty.getId(),faculty.getName(),i));
            }
        }
        return toAjax(result);
    }

    /**
     * 修改教职工
     */
    @PreAuthorize("@ss.hasPermi('financial:faculty:edit')")
    @Log(title = "教职工", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Faculty faculty)
    {
        return toAjax(facultyService.updateFaculty(faculty));
    }

    /**
     * 删除教职工
     */
    @PreAuthorize("@ss.hasPermi('financial:faculty:remove')")
    @Log(title = "教职工", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
//        return toAjax(facultyService.deleteFacultyByIds(ids));
        Integer result = facultyService.deleteFacultyByIds(ids);
        if(result > 0){
            facultyYearlyService.deleteFacultyYearlyByFacultyIds(ids);
            affairService.deleteAffairByFacultyIds(ids);
            payDetailService.deletePayDetailByFacultyIds(ids);
        }
        return toAjax(result);
    }
}
