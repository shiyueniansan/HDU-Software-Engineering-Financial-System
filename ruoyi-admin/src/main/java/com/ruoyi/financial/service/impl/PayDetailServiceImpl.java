package com.ruoyi.financial.service.impl;

import java.util.List;

import com.ruoyi.financial.constant.FinancialConstants;
import com.ruoyi.financial.domain.Affair;
import com.ruoyi.financial.domain.Faculty;
import com.ruoyi.financial.service.IAffairService;
import com.ruoyi.financial.service.IFacultyService;
import com.ruoyi.financial.service.ITitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.PayDetailMapper;
import com.ruoyi.financial.domain.PayDetail;
import com.ruoyi.financial.service.IPayDetailService;

/**
 * 工资明细表Service业务层处理
 *
 * @author Keven
 * @date 2023-05-31
 */
@Service
public class PayDetailServiceImpl implements IPayDetailService
{
    @Autowired
    private PayDetailMapper payDetailMapper;

    @Autowired
    private IFacultyService facultyService;

    @Autowired
    private IAffairService affairService;

    @Autowired
    private ITitleService titleService;

    /**
     * 查询工资明细表
     *
     * @param facultyId 工资明细表主键
     * @return 工资明细表
     */
    @Override
    public PayDetail selectPayDetailByFacultyId(Long facultyId)
    {
        return payDetailMapper.selectPayDetailByFacultyId(facultyId);
    }

    /**
     * 查询工资明细表列表
     *
     * @param payDetail 工资明细表
     * @return 工资明细表
     */
    @Override
    public List<PayDetail> selectPayDetailList(PayDetail payDetail)
    {
        return payDetailMapper.selectPayDetailList(payDetail);
    }

    /**
     * 新增工资明细表
     *
     * @param payDetail 工资明细表
     * @return 结果
     */
    @Override
    public int insertPayDetail(PayDetail payDetail)
    {
        return payDetailMapper.insertPayDetail(payDetail);
    }

    /**
     * 修改工资明细表
     *
     * @param payDetail 工资明细表
     * @return 结果
     */
    @Override
    public int updatePayDetail(PayDetail payDetail)
    {
        return payDetailMapper.updatePayDetail(payDetail);
    }

    /**
     * 批量删除工资明细表
     *
     * @param facultyIds 需要删除的工资明细表主键
     * @return 结果
     */
    @Override
    public int deletePayDetailByFacultyIds(Long[] facultyIds)
    {
        return payDetailMapper.deletePayDetailByFacultyIds(facultyIds);
    }

    /**
     * 删除工资明细表信息
     *
     * @param facultyId 工资明细表主键
     * @return 结果
     */
    @Override
    public int deletePayDetailByFacultyId(Long facultyId)
    {
        return payDetailMapper.deletePayDetailByFacultyId(facultyId);
    }

    @Override
    public void calculatePayDetail(List<PayDetail> list) {
        for (PayDetail payDetail : list) {
            Faculty faculty = facultyService.selectFacultyById(payDetail.getFacultyId());
            List<Affair> affairList = affairService.selectAffairList(new Affair(faculty.getId()));
            Long hours = 0L;
            for (Affair affair : affairList) {
                hours += affair.getHour();
            }
            if(faculty.getType()==0)//教师
            {
                payDetail.setTeacherPay(
                        hours* FinancialConstants.TEACHER_PAY_PER_HOUR *
                                titleService.selectTitleById(faculty.getTitle()).getFactor());
                if(payDetail.getMonth()==12)
                {
                    payDetail.setExtraTeacherPay(
                            (hours-faculty.getQuotaHour())* FinancialConstants.TEACHER_PAY_PER_HOUR *
                                    titleService.selectTitleById(faculty.getTitle()).getFactor()
//                                    *FinancialConstants.TEACHER_EXTRA_PAY_FACTOR
                    );
                }
                payDetail.setStaffPay(0L);
            }
        }
    }
}
