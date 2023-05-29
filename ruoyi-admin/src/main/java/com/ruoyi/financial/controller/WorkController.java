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
import com.ruoyi.financial.domain.Work;
import com.ruoyi.financial.service.IWorkService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 课时任务Controller
 * 
 * @author ruoyi
 * @date 2023-05-29
 */
@RestController
@RequestMapping("/financial/work")
public class WorkController extends BaseController
{
    @Autowired
    private IWorkService workService;

    /**
     * 查询课时任务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:work:list')")
    @GetMapping("/list")
    public TableDataInfo list(Work work)
    {
        startPage();
        List<Work> list = workService.selectWorkList(work);
        return getDataTable(list);
    }

    /**
     * 导出课时任务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:work:export')")
    @Log(title = "课时任务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Work work)
    {
        List<Work> list = workService.selectWorkList(work);
        ExcelUtil<Work> util = new ExcelUtil<Work>(Work.class);
        util.exportExcel(response, list, "课时任务数据");
    }

    /**
     * 获取课时任务详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:work:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(workService.selectWorkById(id));
    }

    /**
     * 新增课时任务
     */
    @PreAuthorize("@ss.hasPermi('financial:work:add')")
    @Log(title = "课时任务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Work work)
    {
        return toAjax(workService.insertWork(work));
    }

    /**
     * 修改课时任务
     */
    @PreAuthorize("@ss.hasPermi('financial:work:edit')")
    @Log(title = "课时任务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Work work)
    {
        return toAjax(workService.updateWork(work));
    }

    /**
     * 删除课时任务
     */
    @PreAuthorize("@ss.hasPermi('financial:work:remove')")
    @Log(title = "课时任务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(workService.deleteWorkByIds(ids));
    }
}
