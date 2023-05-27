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
import com.ruoyi.financial.domain.Position;
import com.ruoyi.financial.service.IPositionService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 职务Controller
 * 
 * @author Keven
 * @date 2023-05-27
 */
@RestController
@RequestMapping("/financial/position")
public class PositionController extends BaseController
{
    @Autowired
    private IPositionService positionService;

    /**
     * 查询职务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:position:list')")
    @GetMapping("/list")
    public TableDataInfo list(Position position)
    {
        startPage();
        List<Position> list = positionService.selectPositionList(position);
        return getDataTable(list);
    }

    /**
     * 导出职务列表
     */
    @PreAuthorize("@ss.hasPermi('financial:position:export')")
    @Log(title = "职务", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Position position)
    {
        List<Position> list = positionService.selectPositionList(position);
        ExcelUtil<Position> util = new ExcelUtil<Position>(Position.class);
        util.exportExcel(response, list, "职务数据");
    }

    /**
     * 获取职务详细信息
     */
    @PreAuthorize("@ss.hasPermi('financial:position:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(positionService.selectPositionById(id));
    }

    /**
     * 新增职务
     */
    @PreAuthorize("@ss.hasPermi('financial:position:add')")
    @Log(title = "职务", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Position position)
    {
        return toAjax(positionService.insertPosition(position));
    }

    /**
     * 修改职务
     */
    @PreAuthorize("@ss.hasPermi('financial:position:edit')")
    @Log(title = "职务", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Position position)
    {
        return toAjax(positionService.updatePosition(position));
    }

    /**
     * 删除职务
     */
    @PreAuthorize("@ss.hasPermi('financial:position:remove')")
    @Log(title = "职务", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(positionService.deletePositionByIds(ids));
    }
}
