package kotlin.internal;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.IntCompanionObject;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, d2 = {"differenceModulo", "Lkotlin/UInt;", "a", "b", "c", "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "getProgressionLastElement-Nkh28Cs", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes.dex */
public final class UProgressionUtilKt {
    /* renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m1239differenceModuloWZ9TVnA(int i, int i2, int i3) {
        long j = i3 & 4294967295L;
        int i4 = (int) ((i & 4294967295L) % j);
        int i5 = (int) ((i2 & 4294967295L) % j);
        int compare = Integer.compare(i4 ^ IntCompanionObject.MIN_VALUE, Integer.MIN_VALUE ^ i5);
        int m125constructorimpl = UInt.m125constructorimpl(i4 - i5);
        if (compare >= 0) {
            return m125constructorimpl;
        }
        return UInt.m125constructorimpl(m125constructorimpl + i3);
    }

    /* renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m1240differenceModulosambcqE(long j, long j2, long j3) {
        long j4;
        long j5 = 0;
        if (j3 < 0) {
            if ((j ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j -= j3;
            }
        } else if (j >= 0) {
            j %= j3;
        } else {
            long j6 = j - ((((j >>> 1) / j3) << 1) * j3);
            if ((j6 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j4 = j3;
            } else {
                j4 = 0;
            }
            j = j6 - j4;
        }
        if (j3 < 0) {
            if ((j2 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j2 -= j3;
            }
        } else if (j2 >= 0) {
            j2 %= j3;
        } else {
            long j7 = j2 - ((((j2 >>> 1) / j3) << 1) * j3);
            if ((j7 ^ Long.MIN_VALUE) >= (j3 ^ Long.MIN_VALUE)) {
                j5 = j3;
            }
            j2 = j7 - j5;
        }
        int compare = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
        long m204constructorimpl = ULong.m204constructorimpl(j - j2);
        if (compare >= 0) {
            return m204constructorimpl;
        }
        return ULong.m204constructorimpl(m204constructorimpl + j3);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m1241getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) >= 0) {
                return j2;
            }
            return ULong.m204constructorimpl(j2 - m1240differenceModulosambcqE(j2, j, ULong.m204constructorimpl(j3)));
        }
        if (j3 < 0) {
            if (Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) <= 0) {
                return j2;
            }
            return ULong.m204constructorimpl(j2 + m1240differenceModulosambcqE(j, j2, ULong.m204constructorimpl(-j3)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    /* renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m1242getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            if (Integer.compare(i ^ IntCompanionObject.MIN_VALUE, Integer.MIN_VALUE ^ i2) < 0) {
                return UInt.m125constructorimpl(i2 - m1239differenceModuloWZ9TVnA(i2, i, UInt.m125constructorimpl(i3)));
            }
        } else if (i3 < 0) {
            if (Integer.compare(i ^ IntCompanionObject.MIN_VALUE, Integer.MIN_VALUE ^ i2) > 0) {
                return UInt.m125constructorimpl(i2 + m1239differenceModuloWZ9TVnA(i, i2, UInt.m125constructorimpl(-i3)));
            }
        } else {
            throw new IllegalArgumentException("Step is zero.");
        }
        return i2;
    }
}
