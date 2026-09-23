package okhttp3.internal.url;

import kotlin.Metadata;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal._UtilCommonKt;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class _UrlKt {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f22191a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [okio.Buffer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public static String a(String input, int i, int i2, String encodeSet, int i3) {
        int i4;
        int i5;
        boolean z;
        boolean z2;
        boolean z3;
        boolean contains$default;
        boolean contains$default2;
        boolean z4 = false;
        if ((i3 & 1) != 0) {
            i4 = 0;
        } else {
            i4 = i;
        }
        if ((i3 & 2) != 0) {
            i5 = input.length();
        } else {
            i5 = i2;
        }
        if ((i3 & 8) != 0) {
            z = false;
        } else {
            z = true;
        }
        if ((i3 & 16) != 0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if ((i3 & 32) != 0) {
            z3 = false;
        } else {
            z3 = true;
        }
        if ((i3 & 64) == 0) {
            z4 = true;
        }
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
        int i6 = i4;
        while (i6 < i5) {
            int codePointAt = input.codePointAt(i6);
            int i7 = 32;
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || z4)) {
                contains$default2 = StringsKt__StringsKt.contains$default(encodeSet, (char) codePointAt, false, 2, (Object) null);
                if (!contains$default2 && ((codePointAt != 37 || (z && (!z2 || b(i6, i5, input)))) && (codePointAt != 43 || !z3))) {
                    i6 += Character.charCount(codePointAt);
                }
            }
            ?? obj = new Object();
            obj.Q(i4, i6, input);
            Intrinsics.checkNotNullParameter(obj, "<this>");
            Intrinsics.checkNotNullParameter(input, "input");
            Intrinsics.checkNotNullParameter(encodeSet, "encodeSet");
            ?? r2 = 0;
            while (i6 < i5) {
                int codePointAt2 = input.codePointAt(i6);
                if (z && (codePointAt2 == 9 || codePointAt2 == 10 || codePointAt2 == 12 || codePointAt2 == 13)) {
                    Unit unit = Unit.INSTANCE;
                } else {
                    String str = "+";
                    if (codePointAt2 == i7 && encodeSet == " !\"#$&'()+,/:;<=>?@[\\]^`{|}~") {
                        obj.S("+");
                    } else {
                        if (codePointAt2 == 43 && z3) {
                            if (!z) {
                                str = "%2B";
                            }
                            obj.S(str);
                        } else {
                            if (codePointAt2 >= i7 && codePointAt2 != 127 && (codePointAt2 < 128 || z4)) {
                                contains$default = StringsKt__StringsKt.contains$default(encodeSet, (char) codePointAt2, false, 2, (Object) null);
                                if (!contains$default && (codePointAt2 != 37 || (z && (!z2 || b(i6, i5, input))))) {
                                    obj.T(codePointAt2);
                                }
                            }
                            if (r2 == 0) {
                                r2 = new Object();
                            }
                            r2.T(codePointAt2);
                            while (!r2.D()) {
                                byte readByte = r2.readByte();
                                int i8 = readByte & UByte.MAX_VALUE;
                                obj.v(37);
                                char[] cArr = f22191a;
                                obj.v(cArr[(i8 >> 4) & 15]);
                                obj.v(cArr[readByte & 15]);
                            }
                            Unit unit2 = Unit.INSTANCE;
                        }
                        i6 += Character.charCount(codePointAt2);
                        i7 = 32;
                        r2 = r2;
                    }
                }
                i6 += Character.charCount(codePointAt2);
                i7 = 32;
                r2 = r2;
            }
            return obj.k();
        }
        String substring = input.substring(i4, i5);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }

    public static final boolean b(int i, int i2, String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i3 = i + 2;
        if (i3 < i2 && str.charAt(i) == '%' && _UtilCommonKt.j(str.charAt(i + 1)) != -1 && _UtilCommonKt.j(str.charAt(i3)) != -1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [okio.Buffer, java.lang.Object] */
    public static String c(int i, int i2, int i3, String encoded) {
        int i4;
        boolean z = false;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = encoded.length();
        }
        if ((i3 & 4) == 0) {
            z = true;
        }
        Intrinsics.checkNotNullParameter(encoded, "<this>");
        int i5 = i;
        while (i5 < i2) {
            char charAt = encoded.charAt(i5);
            if (charAt != '%' && (charAt != '+' || !z)) {
                i5++;
            } else {
                ?? obj = new Object();
                obj.Q(i, i5, encoded);
                Intrinsics.checkNotNullParameter(obj, "<this>");
                Intrinsics.checkNotNullParameter(encoded, "encoded");
                while (i5 < i2) {
                    int codePointAt = encoded.codePointAt(i5);
                    if (codePointAt == 37 && (i4 = i5 + 2) < i2) {
                        int j = _UtilCommonKt.j(encoded.charAt(i5 + 1));
                        int j2 = _UtilCommonKt.j(encoded.charAt(i4));
                        if (j != -1 && j2 != -1) {
                            obj.v((j << 4) + j2);
                            i5 = Character.charCount(codePointAt) + i4;
                        }
                        obj.T(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    } else {
                        if (codePointAt == 43 && z) {
                            obj.v(32);
                            i5++;
                        }
                        obj.T(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    }
                }
                return obj.k();
            }
        }
        String substring = encoded.substring(i, i2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        return substring;
    }
}
