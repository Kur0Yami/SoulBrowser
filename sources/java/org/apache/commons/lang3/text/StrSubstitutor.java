package org.apache.commons.lang3.text;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.text.StrMatcher;

@Deprecated
/* loaded from: classes4.dex */
public class StrSubstitutor {
    static {
        StrMatcher strMatcher = StrMatcher.f22393a;
        if (!StringUtils.c("${")) {
            new StrMatcher.StringMatcher("${");
        }
        if (!StringUtils.c("}")) {
            new StrMatcher.StringMatcher("}");
        }
        if (StringUtils.c(":-")) {
            return;
        }
        new StrMatcher.StringMatcher(":-");
    }
}
