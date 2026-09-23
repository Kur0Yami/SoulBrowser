package kotlin.comparisons;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000B\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u001f\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\b\u001a\u001f\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0007¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0007¢\u0006\u0004\b\r\u0010\u000e\u001a(\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a(\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a(\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\b¢\u0006\u0004\b\u0014\u0010\u0015\u001a(\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\b¢\u0006\u0004\b\u0016\u0010\u0017\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0007¢\u0006\u0004\b\u001a\u0010\u001b\u001a#\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0007¢\u0006\u0004\b\u001d\u0010\u001e\u001a#\u0010\u0000\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0007¢\u0006\u0004\b \u0010!\u001a#\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0007¢\u0006\u0004\b#\u0010$\u001a\u001f\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0007¢\u0006\u0004\b&\u0010\u0005\u001a\u001f\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0007¢\u0006\u0004\b'\u0010\b\u001a\u001f\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\tH\u0007¢\u0006\u0004\b(\u0010\u000b\u001a\u001f\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\fH\u0007¢\u0006\u0004\b)\u0010\u000e\u001a(\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\b¢\u0006\u0004\b*\u0010\u0011\u001a(\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0087\b¢\u0006\u0004\b+\u0010\u0013\u001a(\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0087\b¢\u0006\u0004\b,\u0010\u0015\u001a(\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\fH\u0087\b¢\u0006\u0004\b-\u0010\u0017\u001a#\u0010%\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\n\u0010\u0018\u001a\u00020\u0019\"\u00020\u0001H\u0007¢\u0006\u0004\b.\u0010\u001b\u001a#\u0010%\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\n\u0010\u0018\u001a\u00020\u001c\"\u00020\u0006H\u0007¢\u0006\u0004\b/\u0010\u001e\u001a#\u0010%\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\t2\n\u0010\u0018\u001a\u00020\u001f\"\u00020\tH\u0007¢\u0006\u0004\b0\u0010!\u001a#\u0010%\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\f2\n\u0010\u0018\u001a\u00020\"\"\u00020\fH\u0007¢\u0006\u0004\b1\u0010$¨\u00062"}, d2 = {"maxOf", "Lkotlin/UInt;", "a", "b", "maxOf-J1ME1BU", "(II)I", "Lkotlin/ULong;", "maxOf-eb3DHEI", "(JJ)J", "Lkotlin/UByte;", "maxOf-Kr8caGY", "(BB)B", "Lkotlin/UShort;", "maxOf-5PvTz6A", "(SS)S", "c", "maxOf-WZ9TVnA", "(III)I", "maxOf-sambcqE", "(JJJ)J", "maxOf-b33U2AM", "(BBB)B", "maxOf-VKSA0NQ", "(SSS)S", "other", "Lkotlin/UIntArray;", "maxOf-Md2H83M", "(I[I)I", "Lkotlin/ULongArray;", "maxOf-R03FKyM", "(J[J)J", "Lkotlin/UByteArray;", "maxOf-Wr6uiD8", "(B[B)B", "Lkotlin/UShortArray;", "maxOf-t1qELG4", "(S[S)S", "minOf", "minOf-J1ME1BU", "minOf-eb3DHEI", "minOf-Kr8caGY", "minOf-5PvTz6A", "minOf-WZ9TVnA", "minOf-sambcqE", "minOf-b33U2AM", "minOf-VKSA0NQ", "minOf-Md2H83M", "minOf-R03FKyM", "minOf-Wr6uiD8", "minOf-t1qELG4", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/comparisons/UComparisonsKt")
/* loaded from: classes3.dex */
public class UComparisonsKt___UComparisonsKt {
    @SinceKotlin(version = "1.5")
    /* renamed from: maxOf-5PvTz6A, reason: not valid java name */
    public static final short m1214maxOf5PvTz6A(short s, short s2) {
        if (Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) >= 0) {
            return s;
        }
        return s2;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: maxOf-J1ME1BU, reason: not valid java name */
    public static int m1215maxOfJ1ME1BU(int i, int i2) {
        if (Integer.compare(i ^ IntCompanionObject.MIN_VALUE, Integer.MIN_VALUE ^ i2) >= 0) {
            return i;
        }
        return i2;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: maxOf-Kr8caGY, reason: not valid java name */
    public static final byte m1216maxOfKr8caGY(byte b, byte b2) {
        if (Intrinsics.compare(b & UByte.MAX_VALUE, b2 & UByte.MAX_VALUE) >= 0) {
            return b;
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Md2H83M, reason: not valid java name */
    public static final int m1217maxOfMd2H83M(int i, @NotNull int... iArr) {
        Intrinsics.checkNotNullParameter(iArr, "$v$c$kotlin-UIntArray$-other$0");
        int m186getSizeimpl = UIntArray.m186getSizeimpl(iArr);
        for (int i2 = 0; i2 < m186getSizeimpl; i2++) {
            i = m1215maxOfJ1ME1BU(i, UIntArray.m185getpVg5ArA(iArr, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-R03FKyM, reason: not valid java name */
    public static final long m1218maxOfR03FKyM(long j, @NotNull long... jArr) {
        Intrinsics.checkNotNullParameter(jArr, "$v$c$kotlin-ULongArray$-other$0");
        int m265getSizeimpl = ULongArray.m265getSizeimpl(jArr);
        for (int i = 0; i < m265getSizeimpl; i++) {
            j = m1223maxOfeb3DHEI(j, ULongArray.m264getsVKNKU(jArr, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: maxOf-VKSA0NQ, reason: not valid java name */
    private static final short m1219maxOfVKSA0NQ(short s, short s2, short s3) {
        return m1214maxOf5PvTz6A(s, m1214maxOf5PvTz6A(s2, s3));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: maxOf-WZ9TVnA, reason: not valid java name */
    private static final int m1220maxOfWZ9TVnA(int i, int i2, int i3) {
        return m1215maxOfJ1ME1BU(i, m1215maxOfJ1ME1BU(i2, i3));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-Wr6uiD8, reason: not valid java name */
    public static final byte m1221maxOfWr6uiD8(byte b, @NotNull byte... bArr) {
        Intrinsics.checkNotNullParameter(bArr, "$v$c$kotlin-UByteArray$-other$0");
        int m107getSizeimpl = UByteArray.m107getSizeimpl(bArr);
        for (int i = 0; i < m107getSizeimpl; i++) {
            b = m1216maxOfKr8caGY(b, UByteArray.m106getw2LRezQ(bArr, i));
        }
        return b;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: maxOf-b33U2AM, reason: not valid java name */
    private static final byte m1222maxOfb33U2AM(byte b, byte b2, byte b3) {
        return m1216maxOfKr8caGY(b, m1216maxOfKr8caGY(b2, b3));
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: maxOf-eb3DHEI, reason: not valid java name */
    public static long m1223maxOfeb3DHEI(long j, long j2) {
        if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) >= 0) {
            return j;
        }
        return j2;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: maxOf-sambcqE, reason: not valid java name */
    private static final long m1224maxOfsambcqE(long j, long j2, long j3) {
        return m1223maxOfeb3DHEI(j, m1223maxOfeb3DHEI(j2, j3));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: maxOf-t1qELG4, reason: not valid java name */
    public static final short m1225maxOft1qELG4(short s, @NotNull short... sArr) {
        Intrinsics.checkNotNullParameter(sArr, "$v$c$kotlin-UShortArray$-other$0");
        int m370getSizeimpl = UShortArray.m370getSizeimpl(sArr);
        for (int i = 0; i < m370getSizeimpl; i++) {
            s = m1214maxOf5PvTz6A(s, UShortArray.m369getMh2AYeg(sArr, i));
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: minOf-5PvTz6A, reason: not valid java name */
    public static final short m1226minOf5PvTz6A(short s, short s2) {
        if (Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) <= 0) {
            return s;
        }
        return s2;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: minOf-J1ME1BU, reason: not valid java name */
    public static int m1227minOfJ1ME1BU(int i, int i2) {
        if (Integer.compare(i ^ IntCompanionObject.MIN_VALUE, Integer.MIN_VALUE ^ i2) <= 0) {
            return i;
        }
        return i2;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: minOf-Kr8caGY, reason: not valid java name */
    public static final byte m1228minOfKr8caGY(byte b, byte b2) {
        if (Intrinsics.compare(b & UByte.MAX_VALUE, b2 & UByte.MAX_VALUE) <= 0) {
            return b;
        }
        return b2;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Md2H83M, reason: not valid java name */
    public static final int m1229minOfMd2H83M(int i, @NotNull int... iArr) {
        Intrinsics.checkNotNullParameter(iArr, "$v$c$kotlin-UIntArray$-other$0");
        int m186getSizeimpl = UIntArray.m186getSizeimpl(iArr);
        for (int i2 = 0; i2 < m186getSizeimpl; i2++) {
            i = m1227minOfJ1ME1BU(i, UIntArray.m185getpVg5ArA(iArr, i2));
        }
        return i;
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-R03FKyM, reason: not valid java name */
    public static final long m1230minOfR03FKyM(long j, @NotNull long... jArr) {
        Intrinsics.checkNotNullParameter(jArr, "$v$c$kotlin-ULongArray$-other$0");
        int m265getSizeimpl = ULongArray.m265getSizeimpl(jArr);
        for (int i = 0; i < m265getSizeimpl; i++) {
            j = m1235minOfeb3DHEI(j, ULongArray.m264getsVKNKU(jArr, i));
        }
        return j;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: minOf-VKSA0NQ, reason: not valid java name */
    private static final short m1231minOfVKSA0NQ(short s, short s2, short s3) {
        return m1226minOf5PvTz6A(s, m1226minOf5PvTz6A(s2, s3));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: minOf-WZ9TVnA, reason: not valid java name */
    private static final int m1232minOfWZ9TVnA(int i, int i2, int i3) {
        return m1227minOfJ1ME1BU(i, m1227minOfJ1ME1BU(i2, i3));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-Wr6uiD8, reason: not valid java name */
    public static final byte m1233minOfWr6uiD8(byte b, @NotNull byte... bArr) {
        Intrinsics.checkNotNullParameter(bArr, "$v$c$kotlin-UByteArray$-other$0");
        int m107getSizeimpl = UByteArray.m107getSizeimpl(bArr);
        for (int i = 0; i < m107getSizeimpl; i++) {
            b = m1228minOfKr8caGY(b, UByteArray.m106getw2LRezQ(bArr, i));
        }
        return b;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: minOf-b33U2AM, reason: not valid java name */
    private static final byte m1234minOfb33U2AM(byte b, byte b2, byte b3) {
        return m1228minOfKr8caGY(b, m1228minOfKr8caGY(b2, b3));
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: minOf-eb3DHEI, reason: not valid java name */
    public static long m1235minOfeb3DHEI(long j, long j2) {
        if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) <= 0) {
            return j;
        }
        return j2;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: minOf-sambcqE, reason: not valid java name */
    private static final long m1236minOfsambcqE(long j, long j2, long j3) {
        return m1235minOfeb3DHEI(j, m1235minOfeb3DHEI(j2, j3));
    }

    @SinceKotlin(version = "1.4")
    @ExperimentalUnsignedTypes
    /* renamed from: minOf-t1qELG4, reason: not valid java name */
    public static final short m1237minOft1qELG4(short s, @NotNull short... sArr) {
        Intrinsics.checkNotNullParameter(sArr, "$v$c$kotlin-UShortArray$-other$0");
        int m370getSizeimpl = UShortArray.m370getSizeimpl(sArr);
        for (int i = 0; i < m370getSizeimpl; i++) {
            s = m1226minOf5PvTz6A(s, UShortArray.m369getMh2AYeg(sArr, i));
        }
        return s;
    }
}
