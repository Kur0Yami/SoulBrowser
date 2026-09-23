package kotlin.text;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.KotlinNothingValueException;
import kotlin.KotlinVersion;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u0011\u0010\u0010\u001a\u00020\u0002*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0011\u001a\u0019\u0010\u0010\u001a\u00020\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0012\u001a\u0011\u0010\u0013\u001a\u00020\u0007*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0014\u001a\u0019\u0010\u0013\u001a\u00020\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0015\u001a\u0011\u0010\u0016\u001a\u00020\n*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0017\u001a\u0019\u0010\u0016\u001a\u00020\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0018\u001a\u0011\u0010\u0019\u001a\u00020\r*\u00020\u0001H\u0007¢\u0006\u0002\u0010\u001a\u001a\u0019\u0010\u0019\u001a\u00020\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u001b\u001a\u000e\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u0001H\u0007\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u0001H\u0007\u001a\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u0007*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u0001H\u0007\u001a\u0016\u0010\u001e\u001a\u0004\u0018\u00010\n*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u001a\u000e\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u0001H\u0007\u001a\u0016\u0010\u001f\u001a\u0004\u0018\u00010\r*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006 "}, d2 = {"toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlin/UByte;", "radix", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString-LxnNnR4", "(BI)Ljava/lang/String;", "Lkotlin/UShort;", "toString-olVBNx4", "(SI)Ljava/lang/String;", "Lkotlin/UInt;", "toString-V7xB4Y4", "(II)Ljava/lang/String;", "Lkotlin/ULong;", "toString-JSWoG40", "(JI)Ljava/lang/String;", "toUByte", "(Ljava/lang/String;)B", "(Ljava/lang/String;I)B", "toUShort", "(Ljava/lang/String;)S", "(Ljava/lang/String;I)S", "toUInt", "(Ljava/lang/String;)I", "(Ljava/lang/String;I)I", "toULong", "(Ljava/lang/String;)J", "(Ljava/lang/String;I)J", "toUByteOrNull", "toUShortOrNull", "toUIntOrNull", "toULongOrNull", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "UStringsKt")
/* loaded from: classes4.dex */
public final class UStringsKt {
    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: toString-JSWoG40, reason: not valid java name */
    public static final String m1344toStringJSWoG40(long j, int i) {
        return UnsignedKt.ulongToString(j, CharsKt__CharJVMKt.checkRadix(i));
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: toString-LxnNnR4, reason: not valid java name */
    public static final String m1345toStringLxnNnR4(byte b, int i) {
        String num = Integer.toString(b & UByte.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
        return num;
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: toString-V7xB4Y4, reason: not valid java name */
    public static final String m1346toStringV7xB4Y4(int i, int i2) {
        return UnsignedKt.ulongToString(i & 4294967295L, CharsKt__CharJVMKt.checkRadix(i2));
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: toString-olVBNx4, reason: not valid java name */
    public static final String m1347toStringolVBNx4(short s, int i) {
        String num = Integer.toString(s & UShort.MAX_VALUE, CharsKt__CharJVMKt.checkRadix(i));
        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
        return num;
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUByteOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUIntOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final ULong toULongOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toULongOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toUShortOrNull(str, 10);
    }

    @SinceKotlin(version = "1.5")
    public static final byte toUByte(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UByte uByteOrNull = toUByteOrNull(str, i);
        if (uByteOrNull != null) {
            return uByteOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UByte toUByteOrNull(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ IntCompanionObject.MIN_VALUE, UInt.m125constructorimpl(KotlinVersion.MAX_COMPONENT_VALUE) ^ IntCompanionObject.MIN_VALUE) > 0) {
            return null;
        }
        return UByte.m42boximpl(UByte.m48constructorimpl((byte) data));
    }

    @SinceKotlin(version = "1.5")
    public static final int toUInt(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull != null) {
            return uIntOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UInt toUIntOrNull(@NotNull String str, int i) {
        int i2;
        UInt uInt;
        int i3;
        Intrinsics.checkNotNullParameter(str, "<this>");
        CharsKt__CharJVMKt.checkRadix(i);
        int length = str.length();
        UInt uInt2 = null;
        if (length == 0) {
            return null;
        }
        int i4 = 0;
        char charAt = str.charAt(0);
        if (Intrinsics.compare((int) charAt, 48) < 0) {
            i2 = 1;
            if (length == 1 || charAt != '+') {
                return null;
            }
        } else {
            i2 = 0;
        }
        int m125constructorimpl = UInt.m125constructorimpl(i);
        int i5 = 119304647;
        while (i2 < length) {
            int digitOf = CharsKt__CharJVMKt.digitOf(str.charAt(i2), i);
            if (digitOf < 0) {
                return uInt2;
            }
            int i6 = i4 ^ IntCompanionObject.MIN_VALUE;
            if (Integer.compare(i6, i5 ^ IntCompanionObject.MIN_VALUE) <= 0) {
                uInt = uInt2;
                i3 = i4;
            } else {
                if (i5 != 119304647) {
                    return uInt2;
                }
                uInt = uInt2;
                i3 = i4;
                i5 = (int) (((-1) & 4294967295L) / (m125constructorimpl & 4294967295L));
                if (Integer.compare(i6, i5 ^ IntCompanionObject.MIN_VALUE) > 0) {
                    return uInt;
                }
            }
            int m125constructorimpl2 = UInt.m125constructorimpl(i3 * m125constructorimpl);
            i4 = UInt.m125constructorimpl(UInt.m125constructorimpl(digitOf) + m125constructorimpl2);
            if (Integer.compare(i4 ^ IntCompanionObject.MIN_VALUE, m125constructorimpl2 ^ IntCompanionObject.MIN_VALUE) < 0) {
                return uInt;
            }
            i2++;
            uInt2 = uInt;
        }
        return UInt.m119boximpl(i4);
    }

    @SinceKotlin(version = "1.5")
    public static final long toULong(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ULong uLongOrNull = toULongOrNull(str, i);
        if (uLongOrNull != null) {
            return uLongOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[SYNTHETIC] */
    @kotlin.SinceKotlin(version = "1.5")
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final kotlin.ULong toULongOrNull(@org.jetbrains.annotations.NotNull java.lang.String r26, int r27) {
        /*
            r0 = r26
            r1 = r27
            java.lang.String r2 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r2)
            kotlin.text.CharsKt__CharJVMKt.checkRadix(r1)
            int r2 = r0.length()
            r3 = 0
            if (r2 != 0) goto L14
            return r3
        L14:
            r4 = 0
            char r5 = r0.charAt(r4)
            r6 = 48
            int r6 = kotlin.jvm.internal.Intrinsics.compare(r5, r6)
            r7 = 1
            if (r6 >= 0) goto L2c
            if (r2 == r7) goto L2b
            r6 = 43
            if (r5 == r6) goto L29
            goto L2b
        L29:
            r5 = r7
            goto L2d
        L2b:
            return r3
        L2c:
            r5 = r4
        L2d:
            long r8 = (long) r1
            long r8 = kotlin.ULong.m204constructorimpl(r8)
            r10 = 0
            r12 = 512409557603043100(0x71c71c71c71c71c, double:2.0539100454284282E-274)
            r14 = r10
            r16 = r12
        L3c:
            if (r5 >= r2) goto Lca
            char r6 = r0.charAt(r5)
            int r6 = kotlin.text.CharsKt__CharJVMKt.digitOf(r6, r1)
            if (r6 >= 0) goto L49
            return r3
        L49:
            r18 = -9223372036854775808
            r20 = r3
            long r3 = r14 ^ r18
            r21 = r7
            r22 = r8
            long r7 = r16 ^ r18
            int r7 = java.lang.Long.compare(r3, r7)
            if (r7 <= 0) goto L98
            int r7 = (r16 > r12 ? 1 : (r16 == r12 ? 0 : -1))
            if (r7 != 0) goto L97
            int r7 = (r22 > r10 ? 1 : (r22 == r10 ? 0 : -1))
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            if (r7 >= 0) goto L76
            long r16 = r22 ^ r18
            int r7 = (r8 > r16 ? 1 : (r8 == r16 ? 0 : -1))
            if (r7 >= 0) goto L71
            r16 = r10
            goto L8f
        L71:
            r7 = 1
        L73:
            r16 = r7
            goto L8f
        L76:
            long r8 = r8 / r22
            long r7 = r8 << r21
            long r16 = r7 * r22
            r24 = -1
            long r24 = r24 - r16
            long r16 = r24 ^ r18
            long r24 = r22 ^ r18
            int r9 = (r16 > r24 ? 1 : (r16 == r24 ? 0 : -1))
            if (r9 < 0) goto L8b
            r9 = r21
            goto L8c
        L8b:
            r9 = 0
        L8c:
            long r10 = (long) r9
            long r7 = r7 + r10
            goto L73
        L8f:
            long r7 = r16 ^ r18
            int r3 = java.lang.Long.compare(r3, r7)
            if (r3 <= 0) goto L98
        L97:
            return r20
        L98:
            long r14 = r14 * r22
            long r3 = kotlin.ULong.m204constructorimpl(r14)
            int r6 = kotlin.UInt.m125constructorimpl(r6)
            long r6 = (long) r6
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r6 = r6 & r8
            long r6 = kotlin.ULong.m204constructorimpl(r6)
            long r6 = r6 + r3
            long r14 = kotlin.ULong.m204constructorimpl(r6)
            long r6 = r14 ^ r18
            long r3 = r3 ^ r18
            int r3 = java.lang.Long.compare(r6, r3)
            if (r3 >= 0) goto Lbd
            return r20
        Lbd:
            int r5 = r5 + 1
            r3 = r20
            r7 = r21
            r8 = r22
            r4 = 0
            r10 = 0
            goto L3c
        Lca:
            kotlin.ULong r0 = kotlin.ULong.m198boximpl(r14)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.UStringsKt.toULongOrNull(java.lang.String, int):kotlin.ULong");
    }

    @SinceKotlin(version = "1.5")
    public static final short toUShort(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UShort uShortOrNull = toUShortOrNull(str, i);
        if (uShortOrNull != null) {
            return uShortOrNull.getData();
        }
        StringsKt__StringNumberConversionsKt.numberFormatError(str);
        throw new KotlinNothingValueException();
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UShort toUShortOrNull(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        UInt uIntOrNull = toUIntOrNull(str, i);
        if (uIntOrNull == null) {
            return null;
        }
        int data = uIntOrNull.getData();
        if (Integer.compare(data ^ IntCompanionObject.MIN_VALUE, UInt.m125constructorimpl(65535) ^ IntCompanionObject.MIN_VALUE) > 0) {
            return null;
        }
        return UShort.m305boximpl(UShort.m311constructorimpl((short) data));
    }
}
