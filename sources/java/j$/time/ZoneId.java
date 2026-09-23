package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {
    public static final Map<String, String> SHORT_IDS;
    private static final long serialVersionUID = 8352817235686L;

    public abstract j$.time.zone.f K();

    public abstract void O(DataOutput dataOutput);

    public abstract String f();

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.K("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.K("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.K("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.K("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.K("AST", "America/Anchorage"), j$.com.android.tools.r8.a.K("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.K("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.K("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.K("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.K("CST", "America/Chicago"), j$.com.android.tools.r8.a.K("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.K("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.K("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.K("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.K("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.K("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.K("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.K("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.K("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.K("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.K("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.K("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.K("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.K("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.K("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.K("EST", "-05:00"), j$.com.android.tools.r8.a.K("MST", "-07:00"), j$.com.android.tools.r8.a.K("HST", "-10:00")};
        HashMap hashMap = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object requireNonNull = Objects.requireNonNull(entry.getKey());
            if (hashMap.put(requireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + requireNonNull);
            }
        }
        SHORT_IDS = Collections.unmodifiableMap(hashMap);
    }

    public static ZoneId M(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.f21144a != 0) {
            str = str.concat(zoneOffset.b);
        }
        return new x(str, zoneOffset.K());
    }

    public static ZoneId L(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        if (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) {
            return ZoneOffset.P(str);
        }
        if (str.startsWith("UTC") || str.startsWith("GMT")) {
            return N(str, 3, z);
        }
        if (str.startsWith("UT")) {
            return N(str, 2, z);
        }
        return x.P(str, z);
    }

    public static ZoneId N(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return M(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return x.P(str, z);
        }
        try {
            ZoneOffset P = ZoneOffset.P(str.substring(i));
            if (P == ZoneOffset.UTC) {
                return M(substring, P);
            }
            return M(substring, P);
        } catch (b e) {
            throw new RuntimeException("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != x.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return f().equals(((ZoneId) obj).f());
        }
        return false;
    }

    public int hashCode() {
        return f().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public String toString() {
        return f();
    }

    private Object writeReplace() {
        return new s((byte) 7, this);
    }
}
