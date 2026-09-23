package j$.util;

import j$.time.ZoneId;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public class DesugarTimeZone {
    public static TimeZone getTimeZone(String str) {
        return TimeZone.getTimeZone(str);
    }

    public static ZoneId toZoneId(TimeZone timeZone) {
        String id = timeZone.getID();
        java.util.Map<String, String> map = ZoneId.SHORT_IDS;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        Object obj = (String) map.get(id);
        if (obj == null) {
            obj = Objects.requireNonNull(id, "defaultObj");
        }
        return ZoneId.L((String) obj, true);
    }
}
