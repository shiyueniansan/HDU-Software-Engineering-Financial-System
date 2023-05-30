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
import com.ruoyi.financial.domain.PayDetail;
import com.ruoyi.financial.service.IPayDetailService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工资明细表Controller
 * 
 * @author Keven
 * @date 2023-05-30
 */
@RestController
@RequestMapping("/financial/payDetail")
public class PayDetailController extends BaseController
{
    @Autowired
    private IPayDetailService payDetailService;

    /**
     * 查询工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:list')")
    @GetMapping("/list")
    public TableDataInfo list(PayDetail payDetail)
    {
        startPage();
        List<PayDetail> list = payDetailService.selectPayDetailList(payDetail);
        return getDataTable(list);
    }

    /**
     * 导出工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:export')")
    @Log(title = "工资明细表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PayDetail payDetail)
    {
        List<PayDetail> list = payDetailService.selectPayDetailList(payDetail);
        ExcelUtil<PayDetail> util = new ExcelUtil<PayDetail>(PayDetail.class);
        util.exportExcel(response, list, "工资明细表数据");
    }

    /**
     * 获取工资明细表详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:query')")
    @GetMapping(value = "/{facultyId}")
    public AjaxResult getInfo(@PathVariable("facultyId") Long facultyId)
    {
        return success(payDetailService.selectPayDetailByFacultyId(facultyId));
    }

    /**
     * 新增工资明细表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:add')")
    @Log(title = "工资明细表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PayDetail payDetail)
    {
        return toAjax(payDetailService.insertPayDetail(payDetail));
    }

    /**
     * 修改工资明细表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:edit')")
    @Log(title = "工资明细表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PayDetail payDetail)
    {
        return toAjax(payDetailService.updatePayDetail(payDetail));
    }

    /**
     * 删除工资明细表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:remove')")
    @Log(title = "工资明细表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{facultyIds}")
    public AjaxResult remove(@PathVariable Long[] facultyIds)
    {
        return toAjax(payDetailService.deletePayDetailByFacultyIds(facultyIds));
    }
}
