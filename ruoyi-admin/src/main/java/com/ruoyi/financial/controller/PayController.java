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
import com.ruoyi.financial.domain.Pay;
import com.ruoyi.financial.service.IPayService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工资表Controller
 *
 * @author Keven
 * @date 2023-05-31
 */
@RestController
@RequestMapping("/financial/pay")
public class PayController extends BaseController
{
    @Autowired
    private IPayService payService;

    /**
     * 查询工资表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:pay:list')")
    @GetMapping("/list")
    public TableDataInfo list(Pay pay)
    {
        startPage();
        List<Pay> list = payService.selectPayList(pay);
        payService.calculatePay(list);
        return getDataTable(list);
    }

    /**
     * 导出工资表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:pay:export')")
    @Log(title = "工资表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Pay pay)
    {
        List<Pay> list = payService.selectPayList(pay);
        payService.calculatePay(list);
        ExcelUtil<Pay> util = new ExcelUtil<Pay>(Pay.class);
        util.exportExcel(response, list, "工资表数据");
    }
}
