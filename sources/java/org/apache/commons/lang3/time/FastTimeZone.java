package org.apache.commons.lang3.time;

import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class FastTimeZone {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f22442a = Pattern.compile("^(?:(?i)GMT)?([+-])?(\\d\\d?)?(:?(\\d\\d?))?$");
    public static final TimeZone b = new GmtTimeZone(0, 0, false);

    public static TimeZone a(String str) {
        int i;
        int i2;
        if (!"Z".equals(str) && !"UTC".equals(str)) {
            Matcher matcher = f22442a.matcher(str);
            if (matcher.matches()) {
                String group = matcher.group(2);
                boolean z = false;
                if (group != null) {
                    i = Integer.parseInt(group);
                } else {
                    i = 0;
                }
                String group2 = matcher.group(4);
                if (group2 != null) {
                    i2 = Integer.parseInt(group2);
                } else {
                    i2 = 0;
                }
                if (i != 0 || i2 != 0) {
                    String group3 = matcher.group(1);
                    if (group3 != null && group3.charAt(0) == '-') {
                        z = true;
                    }
                    return new GmtTimeZone(i, i2, z);
                }
            } else {
                return null;
            }
        }
        return b;
    }
}
