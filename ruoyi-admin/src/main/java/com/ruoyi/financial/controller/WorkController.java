package com.ruoyi.financial.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.financial.service.IFacultyService;
import com.ruoyi.framework.web.service.PermissionService;
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

    @Autowired
    private PermissionService permissionService;

    /**
     * 查询课时任务列表
     */
//    @PreAuthorize("@ss.hasPermi('financial:work:list')")
    @PreAuthorize("@ss.hasAnyPermi('financial:work:list,financial:work:self')")
    @GetMapping("/list")
    public TableDataInfo list(Work work)
    {
        startPage();
        List<Work> list = null;
        if( permissionService.hasPermi("financial:work:list") )
        {
            list = workService.selectWorkList(work);
        }
        else if( permissionService.hasPermi("financial:work:self") )
        {
            work.setFacultyId(getLoginUser().getUser().getFacultyId());
            list = workService.selectWorkList(work);
        }
        return getDataTable(list);
    }

    /**
     * 导出课时任务列表
     */
//    @PreAuthorize("@ss.hasPermi('financial:work:export')")
    @PreAuthorize("@ss.hasAnyPermi('financial:work:export,financial:work:exportself')")
    @Log(title = "课时任务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Work work)
    {
        List<Work> list = null;
        if( permissionService.hasPermi("financial:work:export") )
        {
            list = workService.selectWorkList(work);
        }
        else if( permissionService.hasPermi("financial:work:exportself") )
        {
            work.setFacultyId(getLoginUser().getUser().getFacultyId());
            list = workService.selectWorkList(work);
        }
        ExcelUtil<Work> util = new ExcelUtil<Work>(Work.class);
        util.exportExcel(response, list, "课时任务数据");
    }

    /**
     * 获取课时任务详细信息
     */
//    @PreAuthorize("@ss.hasPermi('financial:work:query')")
    @PreAuthorize("@ss.hasAnyPermi('financial:work:query,financial:work:queryself')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        Work work = null;
        if( permissionService.hasPermi("financial:work:query") )
        {
            work = workService.selectWorkById(id);
        }
        else if( permissionService.hasPermi("financial:work:queryself") )
        {
            work = workService.selectWorkById(id);
            if( work.getFacultyId() != getLoginUser().getUser().getFacultyId() )
            {
                work = null;
            }
        }
        return success(work);
    }

    /**
     * 新增课时任务
     */
//    @PreAuthorize("@ss.hasPermi('financial:work:add')")
    @PreAuthorize("@ss.hasAnyPermi('financial:work:add,financial:work:addself')")
    @Log(title = "课时任务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Work work)
    {
//        return toAjax(workService.insertWork(work));
        if( permissionService.hasPermi("financial:work:add") )
        {
            return toAjax(workService.insertWork(work));
        }
        else if( permissionService.hasPermi("financial:work:addself") )
        {
            work.setFacultyId(getLoginUser().getUser().getFacultyId());
            return toAjax(workService.insertWork(work));
        }
        return error("无权限新增");
    }

    /**
     * 修改课时任务
     */
//    @PreAuthorize("@ss.hasPermi('financial:work:edit')")
    @PreAuthorize("@ss.hasAnyPermi('financial:work:edit,financial:work:editself')")
    @Log(title = "课时任务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Work work)
    {
//        return toAjax(workService.updateWork(work));
        if( permissionService.hasPermi("financial:work:edit") )
        {
            return toAjax(workService.updateWork(work));
        }
        else if( permissionService.hasPermi("financial:work:editself") )
        {
            if( work.getFacultyId() == getLoginUser().getUser().getFacultyId() )
            {
                work.setFacultyId(getLoginUser().getUser().getFacultyId());
                return toAjax(workService.updateWork(work));
            }
        }
        return error("无权限修改");
    }

    /**
     * 删除课时任务
     */
//    @PreAuthorize("@ss.hasPermi('financial:work:remove')")
    @PreAuthorize("@ss.hasAnyPermi('financial:work:remove,financial:work:removeself')")
    @Log(title = "课时任务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        if( permissionService.hasPermi("financial:work:remove") )
        {
            return toAjax(workService.deleteWorkByIds(ids));
        }
        else if( permissionService.hasPermi("financial:work:removeself") )
        {
            for( Long id : ids )
            {
                Work work = workService.selectWorkById(id);
                if( work.getFacultyId() != getLoginUser().getUser().getFacultyId() )
                {
                    return error("无权限删除");
                }
            }
            return toAjax(workService.deleteWorkByIds(ids));
        }
        return error("无权限删除");
    }
}
