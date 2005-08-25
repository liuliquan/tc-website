/*
 * Copyright (c) 2005 TopCoder, Inc. All rights reserved.
 */
package com.topcoder.apps.screening.rules;
import java.io.File;
import com.topcoder.apps.screening.ScreeningRule;
import com.topcoder.apps.screening.ScreeningLogger;
import com.topcoder.apps.screening.ResponseCode;
import com.topcoder.apps.screening.SimpleScreeningData;

/**
 * <strong>Purpose</strong>:
 * Checks if c# source code and c# test source code exist.
 *
 * @author WishingBone
 * @version 1.0
 */
public class CSharpSourceCodeRule implements ScreeningRule {

    /**
     * <strong>Purpose</strong>:
     * Screen the submission. Both the file and the root directory are given. Screening responses
     * are written to the ScreeningLogger instance.
     *
     * @param file the file to screen.
     * @param root the root dir of the extracted submission.
     * @param logger the logger to write responses to.
     */
    public boolean screen(File file, File root, ScreeningLogger logger) {
        boolean success = true;

        File source = new File(new File(new File(root, "src"), "csharp"), "main");
        if (!containsCSharpFile(source)) {
            logger.log(new SimpleScreeningData("Does not contain C# source code.", ResponseCode.NO_SOURCE_CODE));
            success = false;
        }

        File test = new File(new File(new File(root, "src"), "csharp"), "tests");
        if (!containsCSharpFile(test)) {
            logger.log(new SimpleScreeningData("Does not contain C# test source code.", ResponseCode.NO_TEST_CODE));
            success = false;
        }

        return success;
    }

    /**
     * <strong>Purpose</strong>:
     * Recursively searches for C# source file.
     *
     * @param root the root dir to search from.
     *
     * @return whether the dir contains C# source file.
     */
    private boolean containsCSharpFile(File root) {
        if (!root.exists()) {
            return false;
        }
        File[] files = root.listFiles();
        for (int i = 0; i < files.length; ++i) {
            if (files[i].isDirectory()) {
                return containsCSharpFile(files[i]);
            } else if (files[i].length() > 0) {
                String name = files[i].getName().toLowerCase();
                if (name.endsWith(".cs")) {
                    return true;
                }
            }
        }
        return false;
    }

}
