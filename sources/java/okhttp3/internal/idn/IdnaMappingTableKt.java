package okhttp3.internal.idn;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class IdnaMappingTableKt {
    public static final int a(int i, String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        char charAt = str.charAt(i);
        return (charAt << 7) + str.charAt(i + 1);
    }
}
