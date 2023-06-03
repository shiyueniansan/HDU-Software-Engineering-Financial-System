package com.ruoyi.financial.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.financial.service.IFacultyService;
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
import com.ruoyi.financial.domain.Affair;
import com.ruoyi.financial.service.IAffairService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 个人事务Controller
 *
 * @author Keven
 * @date 2023-05-31
 */
@RestController
@RequestMapping("/financial/affair")
public class AffairController extends BaseController
{
    @Autowired
    private IAffairService affairService;

    @Autowired
    private IFacultyService facultyService;

    /**
     * 查询个人事务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:affair:list')")
    @GetMapping("/list")
    public TableDataInfo list(Affair affair)
    {
        startPage();
        affair.setFacultyId(getLoginUser().getUser().getFacultyId());
        List<Affair> list = affairService.selectAffairList(affair);
        return getDataTable(list);
    }

    /**
     * 导出个人事务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:affair:export')")
    @Log(title = "个人事务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Affair affair)
    {
        affair.setFacultyId(getLoginUser().getUser().getFacultyId());
        List<Affair> list = affairService.selectAffairList(affair);
        ExcelUtil<Affair> util = new ExcelUtil<Affair>(Affair.class);
        util.exportExcel(response, list, "个人事务数据");
    }

    /**
     * 获取个人事务详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:affair:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        Affair affair=affairService.selectAffairById(id);
        if( affair.getFacultyId() != getLoginUser().getUser().getFacultyId() )
        {
            affair = null;
        }
        return success(affair);
    }

    /**
     * 新增个人事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affair:add')")
    @Log(title = "个人事务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Affair affair)
    {
        affair.setFacultyId(getLoginUser().getUser().getFacultyId());
        affair.setName(facultyService.selectFacultyById(affair.getFacultyId()).getName());
        return toAjax(affairService.insertAffair(affair));
    }

    /**
     * 修改个人事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affair:edit')")
    @Log(title = "个人事务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Affair affair)
    {
        affair.setFacultyId(getLoginUser().getUser().getFacultyId());
        affair.setName(facultyService.selectFacultyById(affair.getFacultyId()).getName());
        return toAjax(affairService.updateAffair(affair));
    }

    /**
     * 删除个人事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affair:remove')")
    @Log(title = "个人事务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        for( Long id : ids )
        {
            Affair affair = affairService.selectAffairById(id);
            if( affair.getFacultyId() != getLoginUser().getUser().getFacultyId() )
            {
                return error("无权限删除");
            }
        }
        return toAjax(affairService.deleteAffairByIds(ids));
    }
}
