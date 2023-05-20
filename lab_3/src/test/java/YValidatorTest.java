
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import validators.YValidator;

import static org.junit.jupiter.api.Assertions.*;

class YValidatorTest {

    @Test
    void validateY() {
        String y1 = "1.5";
        YValidator yValidator = new YValidator();
        Assertions.assertTrue(yValidator.validateY(y1));
        String y2 = "1b";
        Assertions.assertFalse(yValidator.validateY(y2));
    }
}