package kotlin.collections;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0006\u0010\u0007\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\n\u0010\u000b\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\r\u0010\u000e\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u000f\u0010\u0010\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0012\u0010\u0013\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0014\u0010\u0015\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0017\u0010\u0018\u001a'\u0010\b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\u0003¢\u0006\u0004\b\u0019\u0010\u001a\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001e\u0010\u000b\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b\u001f\u0010\u0010\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b \u0010\u0015\u001a'\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u0001H\u0001¢\u0006\u0004\b!\u0010\u001a¨\u0006\""}, d2 = {"partition", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "array", "Lkotlin/UByteArray;", "left", "right", "partition-4UcCI2c", "([BII)I", "quickSort", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "quickSort-4UcCI2c", "([BII)V", "Lkotlin/UShortArray;", "partition-Aa5vz7o", "([SII)I", "quickSort-Aa5vz7o", "([SII)V", "Lkotlin/UIntArray;", "partition-oBK06Vg", "([III)I", "quickSort-oBK06Vg", "([III)V", "Lkotlin/ULongArray;", "partition--nroSd4", "([JII)I", "quickSort--nroSd4", "([JII)V", "sortArray", "fromIndex", "toIndex", "sortArray-4UcCI2c", "sortArray-Aa5vz7o", "sortArray-oBK06Vg", "sortArray--nroSd4", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UArraySortingKt {
    @ExperimentalUnsignedTypes
    /* renamed from: partition--nroSd4, reason: not valid java name */
    private static final int m485partitionnroSd4(long[] jArr, int i, int i2) {
        long j;
        long m264getsVKNKU = ULongArray.m264getsVKNKU(jArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                j = m264getsVKNKU ^ Long.MIN_VALUE;
                if (Long.compare(ULongArray.m264getsVKNKU(jArr, i) ^ Long.MIN_VALUE, j) >= 0) {
                    break;
                }
                i++;
            }
            while (Long.compare(ULongArray.m264getsVKNKU(jArr, i2) ^ Long.MIN_VALUE, j) > 0) {
                i2--;
            }
            if (i <= i2) {
                long m264getsVKNKU2 = ULongArray.m264getsVKNKU(jArr, i);
                ULongArray.m269setk8EXiF4(jArr, i, ULongArray.m264getsVKNKU(jArr, i2));
                ULongArray.m269setk8EXiF4(jArr, i2, m264getsVKNKU2);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-4UcCI2c, reason: not valid java name */
    private static final int m486partition4UcCI2c(byte[] bArr, int i, int i2) {
        int i3;
        byte m106getw2LRezQ = UByteArray.m106getw2LRezQ(bArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m106getw2LRezQ2 = UByteArray.m106getw2LRezQ(bArr, i) & UByte.MAX_VALUE;
                i3 = m106getw2LRezQ & UByte.MAX_VALUE;
                if (Intrinsics.compare(m106getw2LRezQ2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UByteArray.m106getw2LRezQ(bArr, i2) & UByte.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                byte m106getw2LRezQ3 = UByteArray.m106getw2LRezQ(bArr, i);
                UByteArray.m111setVurrAj0(bArr, i, UByteArray.m106getw2LRezQ(bArr, i2));
                UByteArray.m111setVurrAj0(bArr, i2, m106getw2LRezQ3);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-Aa5vz7o, reason: not valid java name */
    private static final int m487partitionAa5vz7o(short[] sArr, int i, int i2) {
        int i3;
        short m369getMh2AYeg = UShortArray.m369getMh2AYeg(sArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m369getMh2AYeg2 = UShortArray.m369getMh2AYeg(sArr, i) & UShort.MAX_VALUE;
                i3 = m369getMh2AYeg & UShort.MAX_VALUE;
                if (Intrinsics.compare(m369getMh2AYeg2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Intrinsics.compare(UShortArray.m369getMh2AYeg(sArr, i2) & UShort.MAX_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                short m369getMh2AYeg3 = UShortArray.m369getMh2AYeg(sArr, i);
                UShortArray.m374set01HTLdE(sArr, i, UShortArray.m369getMh2AYeg(sArr, i2));
                UShortArray.m374set01HTLdE(sArr, i2, m369getMh2AYeg3);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: partition-oBK06Vg, reason: not valid java name */
    private static final int m488partitionoBK06Vg(int[] iArr, int i, int i2) {
        int i3;
        int m185getpVg5ArA = UIntArray.m185getpVg5ArA(iArr, (i + i2) / 2);
        while (i <= i2) {
            while (true) {
                int m185getpVg5ArA2 = UIntArray.m185getpVg5ArA(iArr, i) ^ IntCompanionObject.MIN_VALUE;
                i3 = m185getpVg5ArA ^ IntCompanionObject.MIN_VALUE;
                if (Integer.compare(m185getpVg5ArA2, i3) >= 0) {
                    break;
                }
                i++;
            }
            while (Integer.compare(UIntArray.m185getpVg5ArA(iArr, i2) ^ IntCompanionObject.MIN_VALUE, i3) > 0) {
                i2--;
            }
            if (i <= i2) {
                int m185getpVg5ArA3 = UIntArray.m185getpVg5ArA(iArr, i);
                UIntArray.m190setVXSXFK8(iArr, i, UIntArray.m185getpVg5ArA(iArr, i2));
                UIntArray.m190setVXSXFK8(iArr, i2, m185getpVg5ArA3);
                i++;
                i2--;
            }
        }
        return i;
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort--nroSd4, reason: not valid java name */
    private static final void m489quickSortnroSd4(long[] jArr, int i, int i2) {
        int m485partitionnroSd4 = m485partitionnroSd4(jArr, i, i2);
        int i3 = m485partitionnroSd4 - 1;
        if (i < i3) {
            m489quickSortnroSd4(jArr, i, i3);
        }
        if (m485partitionnroSd4 < i2) {
            m489quickSortnroSd4(jArr, m485partitionnroSd4, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-4UcCI2c, reason: not valid java name */
    private static final void m490quickSort4UcCI2c(byte[] bArr, int i, int i2) {
        int m486partition4UcCI2c = m486partition4UcCI2c(bArr, i, i2);
        int i3 = m486partition4UcCI2c - 1;
        if (i < i3) {
            m490quickSort4UcCI2c(bArr, i, i3);
        }
        if (m486partition4UcCI2c < i2) {
            m490quickSort4UcCI2c(bArr, m486partition4UcCI2c, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-Aa5vz7o, reason: not valid java name */
    private static final void m491quickSortAa5vz7o(short[] sArr, int i, int i2) {
        int m487partitionAa5vz7o = m487partitionAa5vz7o(sArr, i, i2);
        int i3 = m487partitionAa5vz7o - 1;
        if (i < i3) {
            m491quickSortAa5vz7o(sArr, i, i3);
        }
        if (m487partitionAa5vz7o < i2) {
            m491quickSortAa5vz7o(sArr, m487partitionAa5vz7o, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: quickSort-oBK06Vg, reason: not valid java name */
    private static final void m492quickSortoBK06Vg(int[] iArr, int i, int i2) {
        int m488partitionoBK06Vg = m488partitionoBK06Vg(iArr, i, i2);
        int i3 = m488partitionoBK06Vg - 1;
        if (i < i3) {
            m492quickSortoBK06Vg(iArr, i, i3);
        }
        if (m488partitionoBK06Vg < i2) {
            m492quickSortoBK06Vg(iArr, m488partitionoBK06Vg, i2);
        }
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray--nroSd4, reason: not valid java name */
    public static final void m493sortArraynroSd4(@NotNull long[] jArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(jArr, "$v$c$kotlin-ULongArray$-array$0");
        m489quickSortnroSd4(jArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-4UcCI2c, reason: not valid java name */
    public static final void m494sortArray4UcCI2c(@NotNull byte[] bArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "$v$c$kotlin-UByteArray$-array$0");
        m490quickSort4UcCI2c(bArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-Aa5vz7o, reason: not valid java name */
    public static final void m495sortArrayAa5vz7o(@NotNull short[] sArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(sArr, "$v$c$kotlin-UShortArray$-array$0");
        m491quickSortAa5vz7o(sArr, i, i2 - 1);
    }

    @ExperimentalUnsignedTypes
    /* renamed from: sortArray-oBK06Vg, reason: not valid java name */
    public static final void m496sortArrayoBK06Vg(@NotNull int[] iArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(iArr, "$v$c$kotlin-UIntArray$-array$0");
        m492quickSortoBK06Vg(iArr, i, i2 - 1);
    }
}
