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
import com.ruoyi.financial.domain.PayDetails;
import com.ruoyi.financial.service.IPayDetailsService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 全部工资明细表Controller
 * 
 * @author Keven
 * @date 2023-05-30
 */
@RestController
@RequestMapping("/financial/payDetails")
public class PayDetailsController extends BaseController
{
    @Autowired
    private IPayDetailsService payDetailsService;

    /**
     * 查询全部工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:list')")
    @GetMapping("/list")
    public TableDataInfo list(PayDetails payDetails)
    {
        startPage();
        List<PayDetails> list = payDetailsService.selectPayDetailsList(payDetails);
        return getDataTable(list);
    }

    /**
     * 导出全部工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:export')")
    @Log(title = "全部工资明细表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PayDetails payDetails)
    {
        List<PayDetails> list = payDetailsService.selectPayDetailsList(payDetails);
        ExcelUtil<PayDetails> util = new ExcelUtil<PayDetails>(PayDetails.class);
        util.exportExcel(response, list, "全部工资明细表数据");
    }

    /**
     * 获取全部工资明细表详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:query')")
    @GetMapping(value = "/{facultyId}")
    public AjaxResult getInfo(@PathVariable("facultyId") Long facultyId)
    {
        return success(payDetailsService.selectPayDetailsByFacultyId(facultyId));
    }

    /**
     * 新增全部工资明细表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:add')")
    @Log(title = "全部工资明细表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody PayDetails payDetails)
    {
        return toAjax(payDetailsService.insertPayDetails(payDetails));
    }

    /**
     * 修改全部工资明细表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:edit')")
    @Log(title = "全部工资明细表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody PayDetails payDetails)
    {
        return toAjax(payDetailsService.updatePayDetails(payDetails));
    }

    /**
     * 删除全部工资明细表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:remove')")
    @Log(title = "全部工资明细表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{facultyIds}")
    public AjaxResult remove(@PathVariable Long[] facultyIds)
    {
        return toAjax(payDetailsService.deletePayDetailsByFacultyIds(facultyIds));
    }
}
