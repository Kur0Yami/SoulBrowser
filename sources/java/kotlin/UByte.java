package kotlin;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\n\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u0017\u0010\fJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u0018\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0019\u0010\u0012J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001d\u0010\fJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u001e\u0010\u000fJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u001f\u0010\u0012J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b \u0010\u001bJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\"\u0010\fJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b#\u0010\u000fJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b$\u0010\u0012J\u0018\u0010!\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b%\u0010\u001bJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b'\u0010\fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b(\u0010\u000fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b)\u0010\u0012J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b*\u0010\u001bJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b,\u0010\fJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\n¢\u0006\u0004\b-\u0010\u000fJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b.\u0010\u0012J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b/\u0010\u001bJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b1\u0010\fJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\rH\u0087\b¢\u0006\u0004\b2\u0010\u000fJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b3\u0010\u0012J\u0018\u00100\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b4\u0010\u001bJ\u0018\u00105\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b6\u00107J\u0018\u00105\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\rH\u0087\b¢\u0006\u0004\b8\u00109J\u0018\u00105\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b:\u0010\u0012J\u0018\u00105\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b;\u0010\u001bJ\u0010\u0010<\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b=\u0010\u0005J\u0010\u0010>\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b?\u0010\u0005J\u0018\u0010@\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010CJ\u0018\u0010D\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010CJ\u0018\u0010F\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bG\u00107J\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bI\u00107J\u0018\u0010J\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bK\u00107J\u0010\u0010L\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bM\u0010\u0005J\u0010\u0010N\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bO\u0010\u0005J\u0010\u0010P\u001a\u00020QH\u0087\b¢\u0006\u0004\bR\u0010SJ\u0010\u0010T\u001a\u00020\tH\u0087\b¢\u0006\u0004\bU\u0010VJ\u0010\u0010W\u001a\u00020XH\u0087\b¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b\\\u0010\u0005J\u0010\u0010]\u001a\u00020\rH\u0087\b¢\u0006\u0004\b^\u0010SJ\u0010\u0010_\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b`\u0010VJ\u0010\u0010a\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\bb\u0010ZJ\u0010\u0010c\u001a\u00020dH\u0087\b¢\u0006\u0004\be\u0010fJ\u0010\u0010g\u001a\u00020hH\u0087\b¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u0013\u0010o\u001a\u00020p2\b\u0010\n\u001a\u0004\u0018\u00010qHÖ\u0003J\t\u0010r\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006t"}, d2 = {"Lkotlin/UByte;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "data", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "constructor-impl", "(B)B", "getData$annotations", "()V", "compareTo", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "other", "compareTo-7apg3OU", "(BB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(BS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(BI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(BJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(BJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(BB)B", "mod-xj2QHRw", "(BS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-w2LRezQ", "dec", "dec-w2LRezQ", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-7apg3OU", "(BB)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-7apg3OU", "and", "and-7apg3OU", "or", "or-7apg3OU", "xor", "xor-7apg3OU", "inv", "inv-w2LRezQ", "toByte", "toByte-impl", "toShort", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toShort-impl", "(B)S", "toInt", "toInt-impl", "(B)I", "toLong", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toLong-impl", "(B)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toFloat-impl", "(B)F", "toDouble", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toDouble-impl", "(B)D", "toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString-impl", "(B)Ljava/lang/String;", "equals", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UByte implements Comparable<UByte> {
    public static final byte MAX_VALUE = -1;
    public static final byte MIN_VALUE = 0;
    public static final int SIZE_BITS = 8;
    public static final int SIZE_BYTES = 1;
    private final byte data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UByte(byte b) {
        this.data = b;
    }

    @InlineOnly
    /* renamed from: and-7apg3OU */
    private static final byte m41and7apg3OU(byte b, byte b2) {
        return m48constructorimpl((byte) (b & b2));
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ UByte m42boximpl(byte b) {
        return new UByte(b);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU */
    private int m43compareTo7apg3OU(byte b) {
        return Intrinsics.compare(getData() & MAX_VALUE, b & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ */
    private static final int m45compareToVKZWuLQ(byte b, long j) {
        return Long.compare(ULong.m204constructorimpl(b & 255) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m46compareToWZ4Q5Ns(byte b, int i) {
        return Integer.compare(UInt.m125constructorimpl(b & MAX_VALUE) ^ IntCompanionObject.MIN_VALUE, i ^ IntCompanionObject.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw */
    private static final int m47compareToxj2QHRw(byte b, short s) {
        return Intrinsics.compare(b & MAX_VALUE, s & UShort.MAX_VALUE);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* renamed from: constructor-impl */
    public static byte m48constructorimpl(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: dec-w2LRezQ */
    private static final byte m49decw2LRezQ(byte b) {
        return m48constructorimpl((byte) (b - 1));
    }

    @InlineOnly
    /* renamed from: div-7apg3OU */
    private static final int m50div7apg3OU(byte b, byte b2) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(b2 & MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ */
    private static final long m51divVKZWuLQ(byte b, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(b & 255);
        if (j < 0) {
            if ((m204constructorimpl ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (m204constructorimpl >= 0) {
            return m204constructorimpl / j;
        }
        int i = 1;
        long j2 = ((m204constructorimpl >>> 1) / j) << 1;
        if (((m204constructorimpl - (j2 * j)) ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j2 + i;
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns */
    private static final int m52divWZ4Q5Ns(byte b, int i) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) / (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw */
    private static final int m53divxj2QHRw(byte b, short s) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L));
    }

    /* renamed from: equals-impl */
    public static boolean m54equalsimpl(byte b, Object obj) {
        return (obj instanceof UByte) && b == ((UByte) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m55equalsimpl0(byte b, byte b2) {
        return b == b2;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU */
    private static final int m56floorDiv7apg3OU(byte b, byte b2) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(b2 & MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m57floorDivVKZWuLQ(byte b, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(b & 255);
        if (j < 0) {
            if ((m204constructorimpl ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (m204constructorimpl >= 0) {
            return m204constructorimpl / j;
        }
        int i = 1;
        long j2 = ((m204constructorimpl >>> 1) / j) << 1;
        if (((m204constructorimpl - (j2 * j)) ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
            i = 0;
        }
        return j2 + i;
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m58floorDivWZ4Q5Ns(byte b, int i) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) / (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw */
    private static final int m59floorDivxj2QHRw(byte b, short s) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m60hashCodeimpl(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: inc-w2LRezQ */
    private static final byte m61incw2LRezQ(byte b) {
        return m48constructorimpl((byte) (b + 1));
    }

    @InlineOnly
    /* renamed from: inv-w2LRezQ */
    private static final byte m62invw2LRezQ(byte b) {
        return m48constructorimpl((byte) (~b));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU */
    private static final int m63minus7apg3OU(byte b, byte b2) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & MAX_VALUE) - UInt.m125constructorimpl(b2 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ */
    private static final long m64minusVKZWuLQ(byte b, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(b & 255) - j);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns */
    private static final int m65minusWZ4Q5Ns(byte b, int i) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & MAX_VALUE) - i);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw */
    private static final int m66minusxj2QHRw(byte b, short s) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & MAX_VALUE) - UInt.m125constructorimpl(s & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU */
    private static final byte m67mod7apg3OU(byte b, byte b2) {
        return m48constructorimpl((byte) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(b2 & MAX_VALUE) & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ */
    private static final long m68modVKZWuLQ(byte b, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(b & 255);
        if (j < 0) {
            if ((m204constructorimpl ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j)) {
                return m204constructorimpl;
            }
            return m204constructorimpl - j;
        }
        if (m204constructorimpl >= 0) {
            return m204constructorimpl % j;
        }
        long j2 = m204constructorimpl - ((((m204constructorimpl >>> 1) / j) << 1) * j);
        if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j)) {
            j = 0;
        }
        return j2 - j;
    }

    @InlineOnly
    /* renamed from: mod-WZ4Q5Ns */
    private static final int m69modWZ4Q5Ns(byte b, int i) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) % (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw */
    private static final short m70modxj2QHRw(byte b, short s) {
        return UShort.m311constructorimpl((short) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: or-7apg3OU */
    private static final byte m71or7apg3OU(byte b, byte b2) {
        return m48constructorimpl((byte) (b | b2));
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU */
    private static final int m72plus7apg3OU(byte b, byte b2) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b2 & MAX_VALUE) + UInt.m125constructorimpl(b & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ */
    private static final long m73plusVKZWuLQ(byte b, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(b & 255) + j);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns */
    private static final int m74plusWZ4Q5Ns(byte b, int i) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & MAX_VALUE) + i);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw */
    private static final int m75plusxj2QHRw(byte b, short s) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & UShort.MAX_VALUE) + UInt.m125constructorimpl(b & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rangeTo-7apg3OU */
    private static final UIntRange m76rangeTo7apg3OU(byte b, byte b2) {
        return new UIntRange(UInt.m125constructorimpl(b & MAX_VALUE), UInt.m125constructorimpl(b2 & MAX_VALUE), null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: rangeUntil-7apg3OU */
    private static final UIntRange m77rangeUntil7apg3OU(byte b, byte b2) {
        return URangesKt.m1301untilJ1ME1BU(UInt.m125constructorimpl(b & MAX_VALUE), UInt.m125constructorimpl(b2 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU */
    private static final int m78rem7apg3OU(byte b, byte b2) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(b2 & MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ */
    private static final long m79remVKZWuLQ(byte b, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(b & 255);
        if (j < 0) {
            if ((m204constructorimpl ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j)) {
                return m204constructorimpl;
            }
            return m204constructorimpl - j;
        }
        if (m204constructorimpl >= 0) {
            return m204constructorimpl % j;
        }
        long j2 = m204constructorimpl - ((((m204constructorimpl >>> 1) / j) << 1) * j);
        if ((j2 ^ Long.MIN_VALUE) < (Long.MIN_VALUE ^ j)) {
            j = 0;
        }
        return j2 - j;
    }

    @InlineOnly
    /* renamed from: rem-WZ4Q5Ns */
    private static final int m80remWZ4Q5Ns(byte b, int i) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) % (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw */
    private static final int m81remxj2QHRw(byte b, short s) {
        return (int) ((UInt.m125constructorimpl(b & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: times-7apg3OU */
    private static final int m82times7apg3OU(byte b, byte b2) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b2 & MAX_VALUE) * UInt.m125constructorimpl(b & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ */
    private static final long m83timesVKZWuLQ(byte b, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(b & 255) * j);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns */
    private static final int m84timesWZ4Q5Ns(byte b, int i) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & MAX_VALUE) * i);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw */
    private static final int m85timesxj2QHRw(byte b, short s) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & UShort.MAX_VALUE) * UInt.m125constructorimpl(b & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: toByte-impl */
    private static final byte m86toByteimpl(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: toDouble-impl */
    private static final double m87toDoubleimpl(byte b) {
        return UnsignedKt.uintToDouble(b & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toFloat-impl */
    private static final float m88toFloatimpl(byte b) {
        return (float) UnsignedKt.uintToDouble(b & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toInt-impl */
    private static final int m89toIntimpl(byte b) {
        return b & MAX_VALUE;
    }

    @InlineOnly
    /* renamed from: toLong-impl */
    private static final long m90toLongimpl(byte b) {
        return b & 255;
    }

    @InlineOnly
    /* renamed from: toShort-impl */
    private static final short m91toShortimpl(byte b) {
        return (short) (b & 255);
    }

    @NotNull
    /* renamed from: toString-impl */
    public static String m92toStringimpl(byte b) {
        return String.valueOf(b & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ */
    private static final byte m93toUBytew2LRezQ(byte b) {
        return b;
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA */
    private static final int m94toUIntpVg5ArA(byte b) {
        return UInt.m125constructorimpl(b & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU */
    private static final long m95toULongsVKNKU(byte b) {
        return ULong.m204constructorimpl(b & 255);
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg */
    private static final short m96toUShortMh2AYeg(byte b) {
        return UShort.m311constructorimpl((short) (b & 255));
    }

    @InlineOnly
    /* renamed from: xor-7apg3OU */
    private static final byte m97xor7apg3OU(byte b, byte b2) {
        return m48constructorimpl((byte) (b ^ b2));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.compare(getData() & MAX_VALUE, uByte.getData() & MAX_VALUE);
    }

    public boolean equals(Object other) {
        return m54equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m60hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m92toStringimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ byte getData() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU */
    private static int m44compareTo7apg3OU(byte b, byte b2) {
        return Intrinsics.compare(b & MAX_VALUE, b2 & MAX_VALUE);
    }
}
