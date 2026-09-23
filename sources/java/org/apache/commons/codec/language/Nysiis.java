package org.apache.commons.codec.language;

import java.util.regex.Pattern;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes4.dex */
public class Nysiis implements StringEncoder {
    static {
        Pattern.compile("^MAC");
        Pattern.compile("^KN");
        Pattern.compile("^K");
        Pattern.compile("^(PH|PF)");
        Pattern.compile("^SCH");
        Pattern.compile("(EE|IE)$");
        Pattern.compile("(DT|RT|RD|NT|ND)$");
    }
}
