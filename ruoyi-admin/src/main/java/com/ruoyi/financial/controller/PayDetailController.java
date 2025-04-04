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
 * 个人工资明细表Controller
 *
 * @author Keven
 * @date 2023-05-31
 */
@RestController
@RequestMapping("/financial/payDetail")
public class PayDetailController extends BaseController
{
    @Autowired
    private IPayDetailService payDetailService;

    /**
     * 查询个人工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:list')")
    @GetMapping("/list")
    public TableDataInfo list(PayDetail payDetail)
    {
        startPage();
        payDetail.setFacultyId(getLoginUser().getUser().getFacultyId());
        List<PayDetail> list = payDetailService.selectPayDetailList(payDetail);
        payDetailService.calculatePayDetail(list);
        return getDataTable(list);
    }

    /**
     * 导出个人工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetail:export')")
    @Log(title = "个人工资明细表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PayDetail payDetail)
    {
        payDetail.setFacultyId(getLoginUser().getUser().getFacultyId());
        List<PayDetail> list = payDetailService.selectPayDetailList(payDetail);
        payDetailService.calculatePayDetail(list);
        ExcelUtil<PayDetail> util = new ExcelUtil<PayDetail>(PayDetail.class);
        util.exportExcel(response, list, "个人工资明细表数据");
    }
}
