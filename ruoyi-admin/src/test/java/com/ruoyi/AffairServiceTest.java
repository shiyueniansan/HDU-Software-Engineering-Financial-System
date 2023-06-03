package com.ruoyi;
import com.ruoyi.financial.service.IAffairService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.context.junit4.SpringRunner;

//@RunWith(RuoYiApplication.class)
//@SpringBootTest
public class AffairServiceTest {
    @Autowired
    private IAffairService affairService;

    @Test
    public void testAffairService() {
        System.out.println(affairService.selectAffairById(1L));
        System.out.println(affairService.selectAffairList(null));
        System.out.println(affairService.insertAffair(null));
        System.out.println(affairService.updateAffair(null));
        System.out.println(affairService.deleteAffairByIds(null));
        System.out.println(affairService.deleteAffairById(1L));
    }
}
