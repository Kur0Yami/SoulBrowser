package org.apache.commons.lang3.time;

import j$.time.ZoneId;
import j$.util.DesugarTimeZone;
import j$.util.Map;
import java.util.HashMap;
import java.util.TimeZone;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.JavaVersion;
import org.apache.commons.lang3.SystemProperties;
import org.apache.commons.lang3.SystemUtils;
import org.apache.commons.lang3.function.Suppliers;

/* loaded from: classes4.dex */
public class TimeZones {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f22446a;

    static {
        boolean z;
        a("GMT");
        JavaVersion javaVersion = JavaVersion.g;
        JavaVersion javaVersion2 = SystemUtils.b;
        if (javaVersion2 != null && javaVersion2.f22346c >= 25.0f) {
            z = true;
        } else {
            z = false;
        }
        f22446a = z;
    }

    public static TimeZone a(String str) {
        boolean parseBoolean;
        if (f22446a) {
            StringBuilder sb = new StringBuilder();
            HashMap hashMap = ClassUtils.f22343a;
            String a2 = SystemProperties.a(android.support.v4.media.a.p(sb, "TimeZones", ".mapShortIDs"), Suppliers.f22383a);
            if (a2 == null) {
                parseBoolean = true;
            } else {
                parseBoolean = Boolean.parseBoolean(a2);
            }
            if (parseBoolean) {
                str = (String) Map.EL.getOrDefault(ZoneId.SHORT_IDS, str, str);
            }
        }
        return DesugarTimeZone.getTimeZone(str);
    }
}
