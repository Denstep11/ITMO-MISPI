

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import validators.RValidator;

import javax.xml.validation.Validator;

import static org.junit.jupiter.api.Assertions.*;

class RValidatorTest {

    @Test
    void validateR() {
        String r1 = "3";
        RValidator rValidator = new RValidator();
        Assertions.assertTrue(rValidator.validateR(r1));
        String r2 = "3a";
        Assertions.assertFalse(rValidator.validateR(r2));
    }
}