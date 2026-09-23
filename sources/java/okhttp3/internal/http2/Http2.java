package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt;
import okio.ByteString;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/Http2;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Http2 {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteString f22137a;
    public static final String[] b;

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f22138c;
    public static final String[] d;

    static {
        String replace$default;
        ByteString byteString = ByteString.h;
        f22137a = ByteString.Companion.b("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        b = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        f22138c = new String[64];
        String[] strArr = new String[256];
        for (int i = 0; i < 256; i++) {
            String binaryString = Integer.toBinaryString(i);
            Intrinsics.checkNotNullExpressionValue(binaryString, "toBinaryString(...)");
            replace$default = StringsKt__StringsJVMKt.replace$default(_UtilJvmKt.c("%8s", binaryString), ' ', '0', false, 4, (Object) null);
            strArr[i] = replace$default;
        }
        d = strArr;
        String[] strArr2 = f22138c;
        strArr2[0] = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i2 = iArr[0];
        strArr2[i2 | 8] = android.support.v4.media.a.p(new StringBuilder(), strArr2[i2], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = iArr2[i3];
            int i5 = iArr[0];
            String[] strArr3 = f22138c;
            int i6 = i5 | i4;
            strArr3[i6] = strArr3[i5] + '|' + strArr3[i4];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i5]);
            sb.append('|');
            strArr3[i6 | 8] = android.support.v4.media.a.p(sb, strArr3[i4], "|PADDED");
        }
        int length = f22138c.length;
        for (int i7 = 0; i7 < length; i7++) {
            String[] strArr4 = f22138c;
            if (strArr4[i7] == null) {
                strArr4[i7] = d[i7];
            }
        }
    }

    public static String a(int i) {
        String[] strArr = b;
        if (i < strArr.length) {
            return strArr[i];
        }
        return _UtilJvmKt.c("0x%02x", Integer.valueOf(i));
    }

    public static String b(boolean z, int i, int i2, int i3, int i4) {
        String str;
        String str2;
        String str3;
        String a2 = a(i3);
        if (i4 == 0) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            String[] strArr = d;
            if (i3 != 2 && i3 != 3) {
                if (i3 != 4 && i3 != 6) {
                    if (i3 != 7 && i3 != 8) {
                        String[] strArr2 = f22138c;
                        if (i4 < strArr2.length) {
                            str2 = strArr2[i4];
                            Intrinsics.checkNotNull(str2);
                        } else {
                            str2 = strArr[i4];
                        }
                        if (i3 == 5 && (i4 & 4) != 0) {
                            str = StringsKt__StringsJVMKt.replace$default(str2, "HEADERS", "PUSH_PROMISE", false, 4, (Object) null);
                        } else {
                            str = (i3 != 0 || (i4 & 32) == 0) ? str2 : StringsKt__StringsJVMKt.replace$default(str2, "PRIORITY", "COMPRESSED", false, 4, (Object) null);
                        }
                    }
                } else {
                    str = i4 == 1 ? "ACK" : strArr[i4];
                }
            }
            str = strArr[i4];
        }
        if (z) {
            str3 = "<<";
        } else {
            str3 = ">>";
        }
        return _UtilJvmKt.c("%s 0x%08x %5d %-13s %s", str3, Integer.valueOf(i), Integer.valueOf(i2), a2, str);
    }

    public static String c(int i, int i2, long j, boolean z) {
        String str;
        String a2 = a(8);
        if (z) {
            str = "<<";
        } else {
            str = ">>";
        }
        return _UtilJvmKt.c("%s 0x%08x %5d %-13s %d", str, Integer.valueOf(i), Integer.valueOf(i2), a2, Long.valueOf(j));
    }
}
