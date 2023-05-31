package com.ruoyi.financial.controller;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.financial.domain.Faculty;
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
import com.ruoyi.financial.domain.PayDetail;
import com.ruoyi.financial.service.IPayDetailService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 工资明细表Controller
 *
 * @author Keven
 * @date 2023-05-31
 */
@RestController
@RequestMapping("/financial/payDetails")
public class PayDetailsController extends BaseController
{
    @Autowired
    private IPayDetailService payDetailService;

    @Autowired
    private IFacultyService facultyService;

    /**
     * 同步工资明细表
     */
    public void syncPayDetail(List<PayDetail> payDetailList) {
        for (PayDetail payDetail : payDetailList) {
            Faculty faculty= facultyService.selectFacultyById(payDetail.getFacultyId());
            payDetail.setFacultyId(faculty.getId());
            payDetail.setName(faculty.getName());
            payDetail.setBasicPay(faculty.getBasicPay());
            payDetail.setJob(faculty.getJob());
            payDetail.setTitle(faculty.getTitle());
            payDetail.setLivingSubsidy(faculty.getLivingSubsidy());
            payDetail.setReadingSubsidy(faculty.getReadingSubsidy());
            payDetail.setTransportationSubsidy(faculty.getTransportationSubsidy());
            payDetail.setWashingSubsidy(faculty.getWashingSubsidy());
            payDetailService.updatePayDetail(payDetail);
        }
    }

    /**
     * 查询工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:list')")
    @GetMapping("/list")
    public TableDataInfo list(PayDetail payDetail)
    {
        startPage();
        List<PayDetail> list = payDetailService.selectPayDetailList(payDetail);
        syncPayDetail(list);
        return getDataTable(list);
    }

    /**
     * 导出工资明细表列表
     */
    @PreAuthorize("@ss.hasPermi('financial:payDetails:export')")
    @Log(title = "工资明细表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, PayDetail payDetail)
    {
        List<PayDetail> list = payDetailService.selectPayDetailList(payDetail);
        syncPayDetail(list);
        ExcelUtil<PayDetail> util = new ExcelUtil<PayDetail>(PayDetail.class);
        util.exportExcel(response, list, "工资明细表数据");
    }

//    /**
//     * 获取工资明细表详细信息
//     */
//    @PreAuthorize("@ss.hasPermi('financial:payDetails:query')")
//    @GetMapping(value = "/{facultyId}")
//    public AjaxResult getInfo(@PathVariable("facultyId") Long facultyId)
//    {
//        return success(payDetailService.selectPayDetailByFacultyId(facultyId));
//    }
//
//    /**
//     * 新增工资明细表
//     */
//    @PreAuthorize("@ss.hasPermi('financial:payDetails:add')")
//    @Log(title = "工资明细表", businessType = BusinessType.INSERT)
//    @PostMapping
//    public AjaxResult add(@RequestBody PayDetail payDetail)
//    {
//        return toAjax(payDetailService.insertPayDetail(payDetail));
//    }
//
//    /**
//     * 修改工资明细表
//     */
//    @PreAuthorize("@ss.hasPermi('financial:payDetails:edit')")
//    @Log(title = "工资明细表", businessType = BusinessType.UPDATE)
//    @PutMapping
//    public AjaxResult edit(@RequestBody PayDetail payDetail)
//    {
//        return toAjax(payDetailService.updatePayDetail(payDetail));
//    }
//
//    /**
//     * 删除工资明细表
//     */
//    @PreAuthorize("@ss.hasPermi('financial:payDetails:remove')")
//    @Log(title = "工资明细表", businessType = BusinessType.DELETE)
//	@DeleteMapping("/{facultyIds}")
//    public AjaxResult remove(@PathVariable Long[] facultyIds)
//    {
//        return toAjax(payDetailService.deletePayDetailByFacultyIds(facultyIds));
//    }
}
