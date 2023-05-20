

import hitChecker.HitCheck;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class HitCheckTest {

    @Test
    void result() {
        String x1 = "1";
        String y1 = "1";
        String r1 = "3";
        HitCheck hitCheck = new HitCheck();
        Assertions.assertTrue(hitCheck.result(x1, y1, r1));
        String x2 = "3";
        String y2 = "3";
        String r2 = "3";
        Assertions.assertFalse(hitCheck.result(x2, y2, r2));
    }
}