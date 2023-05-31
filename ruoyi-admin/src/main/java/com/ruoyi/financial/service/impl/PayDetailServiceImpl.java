package com.ruoyi.financial.service.impl;

import java.util.List;

import com.ruoyi.financial.constant.FinancialConstants;
import com.ruoyi.financial.domain.Affair;
import com.ruoyi.financial.domain.Faculty;
import com.ruoyi.financial.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.financial.mapper.PayDetailMapper;
import com.ruoyi.financial.domain.PayDetail;

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

    @Autowired
    private IJobService jobService;

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

    /**
     * 装填工资明细表
     *
     * @param list 工资明细表
     * @return 结果
     */
    @Override
    public void fillPayDetail(List<PayDetail> list) {
        for (PayDetail payDetail : list) {
            Faculty faculty = facultyService.selectFacultyById(payDetail.getFacultyId());
//            payDetail.setFaculty(faculty);
            payDetail.setName(faculty.getName());//非必需
            payDetail.setFacultyId(faculty.getId());
            payDetail.setBasicPay(faculty.getBasicPay());
            payDetail.setType(faculty.getType());
            payDetail.setJob(faculty.getJob());
            payDetail.setTitle(faculty.getTitle());
            payDetail.setLivingSubsidy(faculty.getLivingSubsidy());
            payDetail.setReadingSubsidy(faculty.getReadingSubsidy());
            payDetail.setTransportationSubsidy(faculty.getTransportationSubsidy());
            payDetail.setWashingSubsidy(faculty.getWashingSubsidy());
            payDetail.setQuotaHours(faculty.getQuotaHour());//TODO:Hour to Hours
        }
    }

    /**
     * 计算工资明细表
     *
     * @param list 工资明细表
     * @return 结果
     */
    @Override
    public void calculatePayDetail(List<PayDetail> list) {
        fillPayDetail(list);
        for (PayDetail payDetail : list) {
            List<Affair> affairList = affairService.selectAffairList(new Affair(payDetail.getFacultyId(),payDetail.getMonth()));
            Float hours = 0F;
            for (Affair affair : affairList) {
                hours += affair.getHour();
            }
            if(payDetail.getType()==0)//教师
            {
                payDetail.setTeacherPay(
                        hours * FinancialConstants.TEACHER_PAY_PER_HOUR *
                                titleService.selectTitleById(payDetail.getTitle()).getFactor());
                if (payDetail.getMonth() == 12&&hours>payDetail.getQuotaHours()) {
                    payDetail.setExtraTeacherPay(
                            (hours - payDetail.getQuotaHours()) * FinancialConstants.TEACHER_PAY_PER_HOUR *
                                    titleService.selectTitleById(payDetail.getTitle()).getFactor()
                                    * FinancialConstants.EXTRA_TEACHER_PAY_FACTOR
                    );
                }
                else {
                    payDetail.setExtraTeacherPay(0F);
                }
                payDetail.setStaffPay(0F);
            }
            else if(payDetail.getType()==1)//职工
            {
                payDetail.setStaffPay(
                        hours* FinancialConstants.STAFF_PAY_PER_HOUR *
                                jobService.selectJobById(payDetail.getJob()).getFactor()
                );
                payDetail.setTeacherPay(0F);
                payDetail.setExtraTeacherPay(0F);
            }
            updatePayDetail(payDetail);
        }
    }
}
