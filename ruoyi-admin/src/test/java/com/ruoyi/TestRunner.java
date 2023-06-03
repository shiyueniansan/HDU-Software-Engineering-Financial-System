package com.ruoyi;

import com.ruoyi.AffairServiceTest;
import org.junit.runner.JUnitCore;
import org.junit.runner.Result;
import org.junit.runner.notification.Failure;

/**
 * @author mikasa
 * @descrption 执行测试类
 */
public class TestRunner {
    public static void main(String[] args) {
        Result result = JUnitCore.runClasses(AffairServiceTest.class);
        for (Failure failure : result.getFailures()) {
            System.out.println("错误原因：" + failure.toString());
        }
        System.out.println("单元测试整体结果：" + result.wasSuccessful());
    }
}
