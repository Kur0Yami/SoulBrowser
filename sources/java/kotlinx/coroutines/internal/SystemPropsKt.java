package kotlinx.coroutines.internal;

import com.google.android.gms.internal.ads.a;
import kotlin.Metadata;
import kotlin.text.StringsKt;

@Metadata(d1 = {"kotlinx/coroutines/internal/SystemPropsKt__SystemPropsKt", "kotlinx/coroutines/internal/SystemPropsKt__SystemProps_commonKt"}, k = 4, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SystemPropsKt {
    public static final int a() {
        return SystemPropsKt__SystemPropsKt.f21895a;
    }

    public static final long b(long j, long j2, long j3, String str) {
        String c2 = c(str);
        if (c2 == null) {
            return j;
        }
        Long longOrNull = StringsKt.toLongOrNull(c2);
        if (longOrNull != null) {
            long longValue = longOrNull.longValue();
            if (j2 <= longValue && longValue <= j3) {
                return longValue;
            }
            StringBuilder sb = new StringBuilder("System property '");
            sb.append(str);
            sb.append("' should be in range ");
            sb.append(j2);
            a.j(sb, "..", j3, ", but is '");
            sb.append(longValue);
            sb.append('\'');
            throw new IllegalStateException(sb.toString().toString());
        }
        throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + c2 + '\'').toString());
    }

    public static final String c(String str) {
        int i = SystemPropsKt__SystemPropsKt.f21895a;
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }

    public static int d(int i, int i2, String str) {
        int i3;
        if ((i2 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        } else {
            i3 = 2097150;
        }
        return (int) b(i, 1, i3, str);
    }
}
