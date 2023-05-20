
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import validators.XValidator;

import static org.junit.jupiter.api.Assertions.*;

class XValidatorTest {

    @Test
    void validateX() {
        String x1 = "2";
        XValidator xValidator = new XValidator();
        Assertions.assertTrue(xValidator.validateX(x1));
        String x2 = "10";
        Assertions.assertFalse(xValidator.validateX(x2));
    }
}