package kotlin;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.ranges.ULongRange;
import kotlin.ranges.URangesKt;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0010\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 {2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001{B\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u0017\u0010\u0018J\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u0016\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001d\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b \u0010\u0018J\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b!\u0010\u001aJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b\"\u0010\u001cJ\u0018\u0010\u001f\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b#\u0010\u001eJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b%\u0010\u0018J\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b&\u0010\u001aJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b'\u0010\u001cJ\u0018\u0010$\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b(\u0010\u001eJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b*\u0010\u0018J\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b+\u0010\u001aJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b,\u0010\u001cJ\u0018\u0010)\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b-\u0010\u001eJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b/\u0010\u0018J\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\n¢\u0006\u0004\b0\u0010\u001aJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\n¢\u0006\u0004\b1\u0010\u001cJ\u0018\u0010.\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b2\u0010\u001eJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b4\u0010\u0018J\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b5\u0010\u001aJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b6\u0010\u001cJ\u0018\u00103\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b7\u0010\u001eJ\u0018\u00108\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b9\u0010:J\u0018\u00108\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\b;\u0010<J\u0018\u00108\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\b=\u0010\u0013J\u0018\u00108\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b>\u0010\u001eJ\u0010\u0010?\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b@\u0010\u0005J\u0010\u0010A\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010\u0005J\u0018\u0010C\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010FJ\u0018\u0010G\u001a\u00020D2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bH\u0010FJ\u0018\u0010I\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\f¢\u0006\u0004\bK\u0010\u001cJ\u0018\u0010L\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\tH\u0087\f¢\u0006\u0004\bM\u0010\u001cJ\u0018\u0010N\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bO\u0010\u001eJ\u0018\u0010P\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bQ\u0010\u001eJ\u0018\u0010R\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bS\u0010\u001eJ\u0010\u0010T\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bU\u0010\u0005J\u0010\u0010V\u001a\u00020WH\u0087\b¢\u0006\u0004\bX\u0010YJ\u0010\u0010Z\u001a\u00020[H\u0087\b¢\u0006\u0004\b\\\u0010]J\u0010\u0010^\u001a\u00020\tH\u0087\b¢\u0006\u0004\b_\u0010`J\u0010\u0010a\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bb\u0010\u0005J\u0010\u0010c\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\bd\u0010YJ\u0010\u0010e\u001a\u00020\u000eH\u0087\b¢\u0006\u0004\bf\u0010]J\u0010\u0010g\u001a\u00020\u0011H\u0087\b¢\u0006\u0004\bh\u0010`J\u0010\u0010i\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bj\u0010\u0005J\u0010\u0010k\u001a\u00020lH\u0087\b¢\u0006\u0004\bm\u0010nJ\u0010\u0010o\u001a\u00020pH\u0087\b¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020tH\u0016¢\u0006\u0004\bu\u0010vJ\u0013\u0010w\u001a\u00020x2\b\u0010\n\u001a\u0004\u0018\u00010yHÖ\u0003J\t\u0010z\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006|"}, d2 = {"Lkotlin/ULong;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "data", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "constructor-impl", "(J)J", "getData$annotations", "()V", "compareTo", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(JB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(JS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(JI)I", "compareTo-VKZWuLQ", "(JJ)I", "plus", "plus-7apg3OU", "(JB)J", "plus-xj2QHRw", "(JS)J", "plus-WZ4Q5Ns", "(JI)J", "plus-VKZWuLQ", "(JJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(JB)B", "mod-xj2QHRw", "(JS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-s-VKNKU", "dec", "dec-s-VKNKU", "rangeTo", "Lkotlin/ranges/ULongRange;", "rangeTo-VKZWuLQ", "(JJ)Lkotlin/ranges/ULongRange;", "rangeUntil", "rangeUntil-VKZWuLQ", "shl", "bitCount", "shl-s-VKNKU", "shr", "shr-s-VKNKU", "and", "and-VKZWuLQ", "or", "or-VKZWuLQ", "xor", "xor-VKZWuLQ", "inv", "inv-s-VKNKU", "toByte", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toByte-impl", "(J)B", "toShort", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toShort-impl", "(J)S", "toInt", "toInt-impl", "(J)I", "toLong", "toLong-impl", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toFloat-impl", "(J)F", "toDouble", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toDouble-impl", "(J)D", "toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString-impl", "(J)Ljava/lang/String;", "equals", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class ULong implements Comparable<ULong> {
    public static final long MAX_VALUE = -1;
    public static final long MIN_VALUE = 0;
    public static final int SIZE_BITS = 64;
    public static final int SIZE_BYTES = 8;
    private final long data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ ULong(long j) {
        this.data = j;
    }

    @InlineOnly
    /* renamed from: and-VKZWuLQ */
    private static final long m197andVKZWuLQ(long j, long j2) {
        return m204constructorimpl(j & j2);
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ ULong m198boximpl(long j) {
        return new ULong(j);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU */
    private static final int m199compareTo7apg3OU(long j, byte b) {
        return Long.compare(j ^ Long.MIN_VALUE, m204constructorimpl(b & 255) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ */
    private int m200compareToVKZWuLQ(long j) {
        return UnsignedKt.ulongCompare(getData(), j);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m202compareToWZ4Q5Ns(long j, int i) {
        return Long.compare(j ^ Long.MIN_VALUE, m204constructorimpl(i & 4294967295L) ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw */
    private static final int m203compareToxj2QHRw(long j, short s) {
        return Long.compare(j ^ Long.MIN_VALUE, m204constructorimpl(s & 65535) ^ Long.MIN_VALUE);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* renamed from: constructor-impl */
    public static long m204constructorimpl(long j) {
        return j;
    }

    @InlineOnly
    /* renamed from: dec-s-VKNKU */
    private static final long m205decsVKNKU(long j) {
        return m204constructorimpl(j - 1);
    }

    @InlineOnly
    /* renamed from: div-7apg3OU */
    private static final long m206div7apg3OU(long j, byte b) {
        long m204constructorimpl = m204constructorimpl(b & 255);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / m204constructorimpl;
        }
        int i = 1;
        long j2 = ((j >>> 1) / m204constructorimpl) << 1;
        if (((j - (j2 * m204constructorimpl)) ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j2 + i;
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ */
    private static final long m207divVKZWuLQ(long j, long j2) {
        return UnsignedKt.m383ulongDivideeb3DHEI(j, j2);
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns */
    private static final long m208divWZ4Q5Ns(long j, int i) {
        long m204constructorimpl = m204constructorimpl(i & 4294967295L);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / m204constructorimpl;
        }
        int i2 = 1;
        long j2 = ((j >>> 1) / m204constructorimpl) << 1;
        if (((j - (j2 * m204constructorimpl)) ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
            i2 = 0;
        }
        return j2 + i2;
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw */
    private static final long m209divxj2QHRw(long j, short s) {
        long m204constructorimpl = m204constructorimpl(s & 65535);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / m204constructorimpl;
        }
        int i = 1;
        long j2 = ((j >>> 1) / m204constructorimpl) << 1;
        if (((j - (j2 * m204constructorimpl)) ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j2 + i;
    }

    /* renamed from: equals-impl */
    public static boolean m210equalsimpl(long j, Object obj) {
        return (obj instanceof ULong) && j == ((ULong) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m211equalsimpl0(long j, long j2) {
        return j == j2;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU */
    private static final long m212floorDiv7apg3OU(long j, byte b) {
        long m204constructorimpl = m204constructorimpl(b & 255);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / m204constructorimpl;
        }
        int i = 1;
        long j2 = ((j >>> 1) / m204constructorimpl) << 1;
        if (((j - (j2 * m204constructorimpl)) ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j2 + i;
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m213floorDivVKZWuLQ(long j, long j2) {
        if (j2 < 0) {
            if ((j ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        int i = 1;
        long j3 = ((j >>> 1) / j2) << 1;
        if (((j - (j3 * j2)) ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j3 + i;
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final long m214floorDivWZ4Q5Ns(long j, int i) {
        long m204constructorimpl = m204constructorimpl(i & 4294967295L);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / m204constructorimpl;
        }
        int i2 = 1;
        long j2 = ((j >>> 1) / m204constructorimpl) << 1;
        if (((j - (j2 * m204constructorimpl)) ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
            i2 = 0;
        }
        return j2 + i2;
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw */
    private static final long m215floorDivxj2QHRw(long j, short s) {
        long m204constructorimpl = m204constructorimpl(s & 65535);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / m204constructorimpl;
        }
        int i = 1;
        long j2 = ((j >>> 1) / m204constructorimpl) << 1;
        if (((j - (j2 * m204constructorimpl)) ^ Long.MIN_VALUE) < (m204constructorimpl ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j2 + i;
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m216hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    @InlineOnly
    /* renamed from: inc-s-VKNKU */
    private static final long m217incsVKNKU(long j) {
        return m204constructorimpl(j + 1);
    }

    @InlineOnly
    /* renamed from: inv-s-VKNKU */
    private static final long m218invsVKNKU(long j) {
        return m204constructorimpl(~j);
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU */
    private static final long m219minus7apg3OU(long j, byte b) {
        return m204constructorimpl(j - m204constructorimpl(b & 255));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ */
    private static final long m220minusVKZWuLQ(long j, long j2) {
        return m204constructorimpl(j - j2);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns */
    private static final long m221minusWZ4Q5Ns(long j, int i) {
        return m204constructorimpl(j - m204constructorimpl(i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw */
    private static final long m222minusxj2QHRw(long j, short s) {
        return m204constructorimpl(j - m204constructorimpl(s & 65535));
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
    
        if ((r8 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ r0)) goto L32;
     */
    @kotlin.internal.InlineOnly
    /* renamed from: mod-7apg3OU */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final byte m223mod7apg3OU(long r8, byte r10) {
        /*
            long r0 = (long) r10
            r2 = 255(0xff, double:1.26E-321)
            long r0 = r0 & r2
            long r0 = m204constructorimpl(r0)
            r2 = 0
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r4 = -9223372036854775808
            if (r10 >= 0) goto L1a
            long r2 = r8 ^ r4
            long r4 = r4 ^ r0
            int r10 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r10 >= 0) goto L18
            goto L31
        L18:
            long r8 = r8 - r0
            goto L31
        L1a:
            int r10 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r10 < 0) goto L20
            long r8 = r8 % r0
            goto L31
        L20:
            r10 = 1
            long r6 = r8 >>> r10
            long r6 = r6 / r0
            long r6 = r6 << r10
            long r6 = r6 * r0
            long r8 = r8 - r6
            long r6 = r8 ^ r4
            long r4 = r4 ^ r0
            int r10 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r10 < 0) goto L2f
            goto L18
        L2f:
            r0 = r2
            goto L18
        L31:
            int r8 = (int) r8
            byte r8 = (byte) r8
            byte r8 = kotlin.UByte.m48constructorimpl(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ULong.m223mod7apg3OU(long, byte):byte");
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ */
    private static final long m224modVKZWuLQ(long j, long j2) {
        if (j2 < 0) {
            if ((j ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j2)) {
                return j;
            }
            return j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if ((j3 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j2)) {
            j2 = 0;
        }
        return j3 - j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0018, code lost:
    
        if ((r8 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ r0)) goto L32;
     */
    @kotlin.internal.InlineOnly
    /* renamed from: mod-WZ4Q5Ns */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final int m225modWZ4Q5Ns(long r8, int r10) {
        /*
            long r0 = (long) r10
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r0 = r0 & r2
            long r0 = m204constructorimpl(r0)
            r2 = 0
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r4 = -9223372036854775808
            if (r10 >= 0) goto L1d
            long r2 = r8 ^ r4
            long r4 = r4 ^ r0
            int r10 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r10 >= 0) goto L1b
            goto L34
        L1b:
            long r8 = r8 - r0
            goto L34
        L1d:
            int r10 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r10 < 0) goto L23
            long r8 = r8 % r0
            goto L34
        L23:
            r10 = 1
            long r6 = r8 >>> r10
            long r6 = r6 / r0
            long r6 = r6 << r10
            long r6 = r6 * r0
            long r8 = r8 - r6
            long r6 = r8 ^ r4
            long r4 = r4 ^ r0
            int r10 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r10 < 0) goto L32
            goto L1b
        L32:
            r0 = r2
            goto L1b
        L34:
            int r8 = (int) r8
            int r8 = kotlin.UInt.m125constructorimpl(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ULong.m225modWZ4Q5Ns(long, int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if ((r8 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ r0)) goto L32;
     */
    @kotlin.internal.InlineOnly
    /* renamed from: mod-xj2QHRw */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final short m226modxj2QHRw(long r8, short r10) {
        /*
            long r0 = (long) r10
            r2 = 65535(0xffff, double:3.23786E-319)
            long r0 = r0 & r2
            long r0 = m204constructorimpl(r0)
            r2 = 0
            int r10 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r4 = -9223372036854775808
            if (r10 >= 0) goto L1b
            long r2 = r8 ^ r4
            long r4 = r4 ^ r0
            int r10 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r10 >= 0) goto L19
            goto L32
        L19:
            long r8 = r8 - r0
            goto L32
        L1b:
            int r10 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r10 < 0) goto L21
            long r8 = r8 % r0
            goto L32
        L21:
            r10 = 1
            long r6 = r8 >>> r10
            long r6 = r6 / r0
            long r6 = r6 << r10
            long r6 = r6 * r0
            long r8 = r8 - r6
            long r6 = r8 ^ r4
            long r4 = r4 ^ r0
            int r10 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r10 < 0) goto L30
            goto L19
        L30:
            r0 = r2
            goto L19
        L32:
            int r8 = (int) r8
            short r8 = (short) r8
            short r8 = kotlin.UShort.m311constructorimpl(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ULong.m226modxj2QHRw(long, short):short");
    }

    @InlineOnly
    /* renamed from: or-VKZWuLQ */
    private static final long m227orVKZWuLQ(long j, long j2) {
        return m204constructorimpl(j | j2);
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU */
    private static final long m228plus7apg3OU(long j, byte b) {
        return m204constructorimpl(m204constructorimpl(b & 255) + j);
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ */
    private static final long m229plusVKZWuLQ(long j, long j2) {
        return m204constructorimpl(j + j2);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns */
    private static final long m230plusWZ4Q5Ns(long j, int i) {
        return m204constructorimpl(m204constructorimpl(i & 4294967295L) + j);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw */
    private static final long m231plusxj2QHRw(long j, short s) {
        return m204constructorimpl(m204constructorimpl(s & 65535) + j);
    }

    @InlineOnly
    /* renamed from: rangeTo-VKZWuLQ */
    private static final ULongRange m232rangeToVKZWuLQ(long j, long j2) {
        return new ULongRange(j, j2, null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: rangeUntil-VKZWuLQ */
    private static final ULongRange m233rangeUntilVKZWuLQ(long j, long j2) {
        return URangesKt.m1303untileb3DHEI(j, j2);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU */
    private static final long m234rem7apg3OU(long j, byte b) {
        long m204constructorimpl = m204constructorimpl(b & 255);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ m204constructorimpl)) {
                return j;
            }
            return j - m204constructorimpl;
        }
        if (j >= 0) {
            return j % m204constructorimpl;
        }
        long j2 = j - ((((j >>> 1) / m204constructorimpl) << 1) * m204constructorimpl);
        if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ m204constructorimpl)) {
            m204constructorimpl = 0;
        }
        return j2 - m204constructorimpl;
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ */
    private static final long m235remVKZWuLQ(long j, long j2) {
        return UnsignedKt.m384ulongRemaindereb3DHEI(j, j2);
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns */
    private static final long m236remWZ4Q5Ns(long j, int i) {
        long m204constructorimpl = m204constructorimpl(i & 4294967295L);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ m204constructorimpl)) {
                return j;
            }
            return j - m204constructorimpl;
        }
        if (j >= 0) {
            return j % m204constructorimpl;
        }
        long j2 = j - ((((j >>> 1) / m204constructorimpl) << 1) * m204constructorimpl);
        if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ m204constructorimpl)) {
            m204constructorimpl = 0;
        }
        return j2 - m204constructorimpl;
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw */
    private static final long m237remxj2QHRw(long j, short s) {
        long m204constructorimpl = m204constructorimpl(s & 65535);
        if (m204constructorimpl < 0) {
            if ((j ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ m204constructorimpl)) {
                return j;
            }
            return j - m204constructorimpl;
        }
        if (j >= 0) {
            return j % m204constructorimpl;
        }
        long j2 = j - ((((j >>> 1) / m204constructorimpl) << 1) * m204constructorimpl);
        if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ m204constructorimpl)) {
            m204constructorimpl = 0;
        }
        return j2 - m204constructorimpl;
    }

    @InlineOnly
    /* renamed from: shl-s-VKNKU */
    private static final long m238shlsVKNKU(long j, int i) {
        return m204constructorimpl(j << i);
    }

    @InlineOnly
    /* renamed from: shr-s-VKNKU */
    private static final long m239shrsVKNKU(long j, int i) {
        return m204constructorimpl(j >>> i);
    }

    @InlineOnly
    /* renamed from: times-7apg3OU */
    private static final long m240times7apg3OU(long j, byte b) {
        return m204constructorimpl(m204constructorimpl(b & 255) * j);
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ */
    private static final long m241timesVKZWuLQ(long j, long j2) {
        return m204constructorimpl(j * j2);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns */
    private static final long m242timesWZ4Q5Ns(long j, int i) {
        return m204constructorimpl(m204constructorimpl(i & 4294967295L) * j);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw */
    private static final long m243timesxj2QHRw(long j, short s) {
        return m204constructorimpl(m204constructorimpl(s & 65535) * j);
    }

    @InlineOnly
    /* renamed from: toByte-impl */
    private static final byte m244toByteimpl(long j) {
        return (byte) j;
    }

    @InlineOnly
    /* renamed from: toDouble-impl */
    private static final double m245toDoubleimpl(long j) {
        return UnsignedKt.ulongToDouble(j);
    }

    @InlineOnly
    /* renamed from: toFloat-impl */
    private static final float m246toFloatimpl(long j) {
        return (float) UnsignedKt.ulongToDouble(j);
    }

    @InlineOnly
    /* renamed from: toInt-impl */
    private static final int m247toIntimpl(long j) {
        return (int) j;
    }

    @InlineOnly
    /* renamed from: toLong-impl */
    private static final long m248toLongimpl(long j) {
        return j;
    }

    @InlineOnly
    /* renamed from: toShort-impl */
    private static final short m249toShortimpl(long j) {
        return (short) j;
    }

    @NotNull
    /* renamed from: toString-impl */
    public static String m250toStringimpl(long j) {
        return UnsignedKt.ulongToString(j, 10);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ */
    private static final byte m251toUBytew2LRezQ(long j) {
        return UByte.m48constructorimpl((byte) j);
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA */
    private static final int m252toUIntpVg5ArA(long j) {
        return UInt.m125constructorimpl((int) j);
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU */
    private static final long m253toULongsVKNKU(long j) {
        return j;
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg */
    private static final short m254toUShortMh2AYeg(long j) {
        return UShort.m311constructorimpl((short) j);
    }

    @InlineOnly
    /* renamed from: xor-VKZWuLQ */
    private static final long m255xorVKZWuLQ(long j, long j2) {
        return m204constructorimpl(j ^ j2);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(ULong uLong) {
        return UnsignedKt.ulongCompare(getData(), uLong.getData());
    }

    public boolean equals(Object other) {
        return m210equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m216hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m250toStringimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ long getData() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ */
    private static int m201compareToVKZWuLQ(long j, long j2) {
        return UnsignedKt.ulongCompare(j, j2);
    }
}
