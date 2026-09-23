package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\b\u0012\u0004\u0012\u00020\u0002`\u0003¨\u0006\u0004"}, d2 = {"okhttp3/CipherSuite$Companion$ORDER_BY_NAME$1", "Ljava/util/Comparator;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlin/Comparator;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CipherSuite$Companion$ORDER_BY_NAME$1 implements Comparator<String> {
    @Override // java.util.Comparator
    public final int compare(String str, String str2) {
        String a2 = str;
        String b = str2;
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        int min = Math.min(a2.length(), b.length());
        for (int i = 4; i < min; i++) {
            char charAt = a2.charAt(i);
            char charAt2 = b.charAt(i);
            if (charAt != charAt2) {
                if (Intrinsics.compare((int) charAt, (int) charAt2) < 0) {
                    return -1;
                }
                return 1;
            }
        }
        int length = a2.length();
        int length2 = b.length();
        if (length != length2) {
            if (length < length2) {
                return -1;
            }
            return 1;
        }
        return 0;
    }
}
