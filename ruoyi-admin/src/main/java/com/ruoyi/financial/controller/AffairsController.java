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
    private IAffairService affairService;

    @Autowired
    private IFacultyService facultyService;

//    @Autowired
//    private IFacultyService facultyService;
//
//    /**
//     * 同步事务
//     */
//    public void syncAffair(List<Affair> affairList) {
//        for (Affair affair : affairList) {
//            affair.setName(facultyService.selectFacultyById(affair.getFacultyId()).getName());
//            affairService.updateAffair(affair);
//        }
//    }

    /**
     * 查询事务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:list')")
    @GetMapping("/list")
    public TableDataInfo list(Affair affair)
    {
        startPage();
        List<Affair> list = affairService.selectAffairList(affair);
//        syncAffair(list);
        return getDataTable(list);
    }

    /**
     * 导出事务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:export')")
    @Log(title = "事务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Affair affair)
    {
        List<Affair> list = affairService.selectAffairList(affair);
//        syncAffair(list);
        ExcelUtil<Affair> util = new ExcelUtil<Affair>(Affair.class);
        util.exportExcel(response, list, "事务数据");
    }

    /**
     * 获取事务详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(affairService.selectAffairById(id));
    }

    /**
     * 新增事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:add')")
    @Log(title = "事务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Affair affair)
    {
        affair.setName(facultyService.selectFacultyById(affair.getFacultyId()).getName());
        return toAjax(affairService.insertAffair(affair));
    }

    /**
     * 修改事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:edit')")
    @Log(title = "事务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Affair affair)
    {
        affair.setName(facultyService.selectFacultyById(affair.getFacultyId()).getName());
        return toAjax(affairService.updateAffair(affair));
    }

    /**
     * 删除事务
     */
    @PreAuthorize("@ss.hasPermi('financial:affairs:remove')")
    @Log(title = "事务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(affairService.deleteAffairByIds(ids));
    }
}
