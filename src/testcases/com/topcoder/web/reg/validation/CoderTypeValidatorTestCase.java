package com.topcoder.web.reg.validation;

import com.topcoder.web.common.validation.StringInput;
import com.topcoder.web.reg.TCHibernateTestCase;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 12, 2006
 */
public class CoderTypeValidatorTestCase extends TCHibernateTestCase {
    public void testValid() {


        assertTrue("found a valid coder type to be invalid",
                new CoderTypeValidator().validate(new StringInput("2")).isValid());
    }

    public void testInvalid() {
        assertFalse("found an invalid coder type to be valid",
                new CoderTypeValidator().validate(new StringInput("666")).isValid());
    }

    public void testInvalidValue() {
        assertFalse("found an invalid coder type to be valid",
                new CoderTypeValidator().validate(new StringInput("k")).isValid());
    }
}
