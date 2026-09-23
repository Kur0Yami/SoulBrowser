package okhttp3.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Headers;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-HeadersCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -HeadersCommon.kt\nokhttp3/internal/_HeadersCommonKt\n+ 2 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n242#2:208\n37#3,2:209\n1#4:211\n*S KotlinDebug\n*F\n+ 1 -HeadersCommon.kt\nokhttp3/internal/_HeadersCommonKt\n*L\n36#1:208\n136#1:209,2\n*E\n"})
/* loaded from: classes4.dex */
public final class _HeadersCommonKt {
    public static final void a(Headers.Builder builder, String name, String value) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.f22049a.add(name);
        ArrayList arrayList = builder.f22049a;
        trim = StringsKt__StringsKt.trim((CharSequence) value);
        arrayList.add(trim.toString());
    }

    public static final void b(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        if (name.length() > 0) {
            int length = name.length();
            for (int i = 0; i < length; i++) {
                char charAt = name.charAt(i);
                if ('!' > charAt || charAt >= 127) {
                    StringBuilder sb = new StringBuilder("Unexpected char 0x");
                    String num = Integer.toString(charAt, CharsKt.checkRadix(16));
                    Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
                    if (num.length() < 2) {
                        num = "0".concat(num);
                    }
                    sb.append(num);
                    sb.append(" at ");
                    sb.append(i);
                    sb.append(" in header name: ");
                    sb.append(name);
                    throw new IllegalArgumentException(sb.toString().toString());
                }
            }
            return;
        }
        throw new IllegalArgumentException("name is empty");
    }

    public static final void c(String value, String name) {
        String concat;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(name, "name");
        int length = value.length();
        for (int i = 0; i < length; i++) {
            char charAt = value.charAt(i);
            if (charAt != '\t' && (' ' > charAt || charAt >= 127)) {
                StringBuilder sb = new StringBuilder("Unexpected char 0x");
                String num = Integer.toString(charAt, CharsKt.checkRadix(16));
                Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
                if (num.length() < 2) {
                    num = "0".concat(num);
                }
                sb.append(num);
                sb.append(" at ");
                sb.append(i);
                sb.append(" in ");
                sb.append(name);
                sb.append(" value");
                if (_UtilCommonKt.i(name)) {
                    concat = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    concat = ": ".concat(value);
                }
                sb.append(concat);
                throw new IllegalArgumentException(sb.toString().toString());
            }
        }
    }
}
