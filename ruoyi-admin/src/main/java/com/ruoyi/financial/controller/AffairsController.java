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
import com.ruoyi.financial.domain.Affairs;
import com.ruoyi.financial.service.IAffairsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 事务Controller
 * 
 * @author Keven
 * @date 2023-05-30
 */
@RestController
@RequestMapping("/financial/affairs")
public class AffairsController extends BaseController
{
    @Autowired
    private IAffairsService affairsService;

    /**
     * 查询事务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:list')")
    @GetMapping("/list")
    public TableDataInfo list(Affairs affairs)
    {
        startPage();
        List<Affairs> list = affairsService.selectAffairsList(affairs);
        return getDataTable(list);
    }

    /**
     * 导出事务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:export')")
    @Log(title = "事务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Affairs affairs)
    {
        List<Affairs> list = affairsService.selectAffairsList(affairs);
        ExcelUtil<Affairs> util = new ExcelUtil<Affairs>(Affairs.class);
        util.exportExcel(response, list, "事务数据");
    }

    /**
     * 获取事务详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(affairsService.selectAffairsById(id));
    }

    /**
     * 新增事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:add')")
    @Log(title = "事务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Affairs affairs)
    {
        return toAjax(affairsService.insertAffairs(affairs));
    }

    /**
     * 修改事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:edit')")
    @Log(title = "事务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Affairs affairs)
    {
        return toAjax(affairsService.updateAffairs(affairs));
    }

    /**
     * 删除事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:remove')")
    @Log(title = "事务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(affairsService.deleteAffairsByIds(ids));
    }
}
