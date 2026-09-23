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
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 s2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001sB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u0017\u0010\rJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u0018\u0010\u000fJ\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u0019\u0010\u0012J\u0018\u0010\u0016\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b\u001a\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\u001d\u0010\rJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001e\u0010\u000fJ\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b\u001f\u0010\u0012J\u0018\u0010\u001c\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b \u0010\u001bJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b\"\u0010\rJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b#\u0010\u000fJ\u0018\u0010!\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b$\u0010\u0012J\u0018\u0010!\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b%\u0010\u001bJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b'\u0010\rJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b(\u0010\u000fJ\u0018\u0010&\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b)\u0010\u0012J\u0018\u0010&\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b*\u0010\u001bJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\n¢\u0006\u0004\b,\u0010\rJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b-\u0010\u000fJ\u0018\u0010+\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\n¢\u0006\u0004\b.\u0010\u0012J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\n¢\u0006\u0004\b/\u0010\u001bJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b1\u0010\rJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b2\u0010\u000fJ\u0018\u00100\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b3\u0010\u0012J\u0018\u00100\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b4\u0010\u001bJ\u0018\u00105\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b6\u00107J\u0018\u00105\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b8\u00109J\u0018\u00105\u001a\u00020\u00102\u0006\u0010\n\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b:\u0010\u0012J\u0018\u00105\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\b;\u0010\u001bJ\u0010\u0010<\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b=\u0010\u0005J\u0010\u0010>\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b?\u0010\u0005J\u0018\u0010@\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bB\u0010CJ\u0018\u0010D\u001a\u00020A2\u0006\u0010\n\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bE\u0010CJ\u0018\u0010F\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bG\u00109J\u0018\u0010H\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bI\u00109J\u0018\u0010J\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bK\u00109J\u0010\u0010L\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bM\u0010\u0005J\u0010\u0010N\u001a\u00020OH\u0087\b¢\u0006\u0004\bP\u0010QJ\u0010\u0010R\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\bS\u0010\u0005J\u0010\u0010T\u001a\u00020\tH\u0087\b¢\u0006\u0004\bU\u0010VJ\u0010\u0010W\u001a\u00020XH\u0087\b¢\u0006\u0004\bY\u0010ZJ\u0010\u0010[\u001a\u00020\u000bH\u0087\b¢\u0006\u0004\b\\\u0010QJ\u0010\u0010]\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b^\u0010\u0005J\u0010\u0010_\u001a\u00020\u0010H\u0087\b¢\u0006\u0004\b`\u0010VJ\u0010\u0010a\u001a\u00020\u0013H\u0087\b¢\u0006\u0004\bb\u0010ZJ\u0010\u0010c\u001a\u00020dH\u0087\b¢\u0006\u0004\be\u0010fJ\u0010\u0010g\u001a\u00020hH\u0087\b¢\u0006\u0004\bi\u0010jJ\u000f\u0010k\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u0013\u0010o\u001a\u00020p2\b\u0010\n\u001a\u0004\u0018\u00010qHÖ\u0003J\t\u0010r\u001a\u00020\tHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006t"}, d2 = {"Lkotlin/UShort;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "data", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "constructor-impl", "(S)S", "getData$annotations", "()V", "compareTo", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(SB)I", "compareTo-xj2QHRw", "(SS)I", "Lkotlin/UInt;", "compareTo-WZ4Q5Ns", "(SI)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(SJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(SJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(SB)B", "mod-xj2QHRw", "(SS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-Mh2AYeg", "dec", "dec-Mh2AYeg", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-xj2QHRw", "(SS)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-xj2QHRw", "and", "and-xj2QHRw", "or", "or-xj2QHRw", "xor", "xor-xj2QHRw", "inv", "inv-Mh2AYeg", "toByte", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toByte-impl", "(S)B", "toShort", "toShort-impl", "toInt", "toInt-impl", "(S)I", "toLong", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toLong-impl", "(S)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toFloat-impl", "(S)F", "toDouble", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toDouble-impl", "(S)D", "toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString-impl", "(S)Ljava/lang/String;", "equals", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UShort implements Comparable<UShort> {
    public static final short MAX_VALUE = -1;
    public static final short MIN_VALUE = 0;
    public static final int SIZE_BITS = 16;
    public static final int SIZE_BYTES = 2;
    private final short data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UShort(short s) {
        this.data = s;
    }

    @InlineOnly
    /* renamed from: and-xj2QHRw */
    private static final short m304andxj2QHRw(short s, short s2) {
        return m311constructorimpl((short) (s & s2));
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ UShort m305boximpl(short s) {
        return new UShort(s);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU */
    private static final int m306compareTo7apg3OU(short s, byte b) {
        return Intrinsics.compare(s & MAX_VALUE, b & UByte.MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ */
    private static final int m307compareToVKZWuLQ(short s, long j) {
        return Long.compare(ULong.m204constructorimpl(s & 65535) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns */
    private static final int m308compareToWZ4Q5Ns(short s, int i) {
        return Integer.compare(UInt.m125constructorimpl(s & MAX_VALUE) ^ IntCompanionObject.MIN_VALUE, i ^ IntCompanionObject.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw */
    private int m309compareToxj2QHRw(short s) {
        return Intrinsics.compare(getData() & MAX_VALUE, s & MAX_VALUE);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* renamed from: constructor-impl */
    public static short m311constructorimpl(short s) {
        return s;
    }

    @InlineOnly
    /* renamed from: dec-Mh2AYeg */
    private static final short m312decMh2AYeg(short s) {
        return m311constructorimpl((short) (s - 1));
    }

    @InlineOnly
    /* renamed from: div-7apg3OU */
    private static final int m313div7apg3OU(short s, byte b) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ */
    private static final long m314divVKZWuLQ(short s, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(s & 65535);
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
    private static final int m315divWZ4Q5Ns(short s, int i) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) / (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw */
    private static final int m316divxj2QHRw(short s, short s2) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(s2 & MAX_VALUE) & 4294967295L));
    }

    /* renamed from: equals-impl */
    public static boolean m317equalsimpl(short s, Object obj) {
        return (obj instanceof UShort) && s == ((UShort) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m318equalsimpl0(short s, short s2) {
        return s == s2;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU */
    private static final int m319floorDiv7apg3OU(short s, byte b) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m320floorDivVKZWuLQ(short s, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(s & 65535);
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
    private static final int m321floorDivWZ4Q5Ns(short s, int i) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) / (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw */
    private static final int m322floorDivxj2QHRw(short s, short s2) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) / (UInt.m125constructorimpl(s2 & MAX_VALUE) & 4294967295L));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m323hashCodeimpl(short s) {
        return s;
    }

    @InlineOnly
    /* renamed from: inc-Mh2AYeg */
    private static final short m324incMh2AYeg(short s) {
        return m311constructorimpl((short) (s + 1));
    }

    @InlineOnly
    /* renamed from: inv-Mh2AYeg */
    private static final short m325invMh2AYeg(short s) {
        return m311constructorimpl((short) (~s));
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU */
    private static final int m326minus7apg3OU(short s, byte b) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & MAX_VALUE) - UInt.m125constructorimpl(b & UByte.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ */
    private static final long m327minusVKZWuLQ(short s, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(s & 65535) - j);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns */
    private static final int m328minusWZ4Q5Ns(short s, int i) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & MAX_VALUE) - i);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw */
    private static final int m329minusxj2QHRw(short s, short s2) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & MAX_VALUE) - UInt.m125constructorimpl(s2 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU */
    private static final byte m330mod7apg3OU(short s, byte b) {
        return UByte.m48constructorimpl((byte) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ */
    private static final long m331modVKZWuLQ(short s, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(s & 65535);
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
    private static final int m332modWZ4Q5Ns(short s, int i) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) % (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw */
    private static final short m333modxj2QHRw(short s, short s2) {
        return m311constructorimpl((short) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(s2 & MAX_VALUE) & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: or-xj2QHRw */
    private static final short m334orxj2QHRw(short s, short s2) {
        return m311constructorimpl((short) (s | s2));
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU */
    private static final int m335plus7apg3OU(short s, byte b) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & UByte.MAX_VALUE) + UInt.m125constructorimpl(s & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ */
    private static final long m336plusVKZWuLQ(short s, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(s & 65535) + j);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns */
    private static final int m337plusWZ4Q5Ns(short s, int i) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & MAX_VALUE) + i);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw */
    private static final int m338plusxj2QHRw(short s, short s2) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s2 & MAX_VALUE) + UInt.m125constructorimpl(s & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rangeTo-xj2QHRw */
    private static final UIntRange m339rangeToxj2QHRw(short s, short s2) {
        return new UIntRange(UInt.m125constructorimpl(s & MAX_VALUE), UInt.m125constructorimpl(s2 & MAX_VALUE), null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: rangeUntil-xj2QHRw */
    private static final UIntRange m340rangeUntilxj2QHRw(short s, short s2) {
        return URangesKt.m1301untilJ1ME1BU(UInt.m125constructorimpl(s & MAX_VALUE), UInt.m125constructorimpl(s2 & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU */
    private static final int m341rem7apg3OU(short s, byte b) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ */
    private static final long m342remVKZWuLQ(short s, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(s & 65535);
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
    private static final int m343remWZ4Q5Ns(short s, int i) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) % (i & 4294967295L));
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw */
    private static final int m344remxj2QHRw(short s, short s2) {
        return (int) ((UInt.m125constructorimpl(s & MAX_VALUE) & 4294967295L) % (UInt.m125constructorimpl(s2 & MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: times-7apg3OU */
    private static final int m345times7apg3OU(short s, byte b) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(b & UByte.MAX_VALUE) * UInt.m125constructorimpl(s & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ */
    private static final long m346timesVKZWuLQ(short s, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(s & 65535) * j);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns */
    private static final int m347timesWZ4Q5Ns(short s, int i) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s & MAX_VALUE) * i);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw */
    private static final int m348timesxj2QHRw(short s, short s2) {
        return UInt.m125constructorimpl(UInt.m125constructorimpl(s2 & MAX_VALUE) * UInt.m125constructorimpl(s & MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: toByte-impl */
    private static final byte m349toByteimpl(short s) {
        return (byte) s;
    }

    @InlineOnly
    /* renamed from: toDouble-impl */
    private static final double m350toDoubleimpl(short s) {
        return UnsignedKt.uintToDouble(s & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toFloat-impl */
    private static final float m351toFloatimpl(short s) {
        return (float) UnsignedKt.uintToDouble(s & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toInt-impl */
    private static final int m352toIntimpl(short s) {
        return s & MAX_VALUE;
    }

    @InlineOnly
    /* renamed from: toLong-impl */
    private static final long m353toLongimpl(short s) {
        return s & 65535;
    }

    @InlineOnly
    /* renamed from: toShort-impl */
    private static final short m354toShortimpl(short s) {
        return s;
    }

    @NotNull
    /* renamed from: toString-impl */
    public static String m355toStringimpl(short s) {
        return String.valueOf(s & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ */
    private static final byte m356toUBytew2LRezQ(short s) {
        return UByte.m48constructorimpl((byte) s);
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA */
    private static final int m357toUIntpVg5ArA(short s) {
        return UInt.m125constructorimpl(s & MAX_VALUE);
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU */
    private static final long m358toULongsVKNKU(short s) {
        return ULong.m204constructorimpl(s & 65535);
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg */
    private static final short m359toUShortMh2AYeg(short s) {
        return s;
    }

    @InlineOnly
    /* renamed from: xor-xj2QHRw */
    private static final short m360xorxj2QHRw(short s, short s2) {
        return m311constructorimpl((short) (s ^ s2));
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.compare(getData() & MAX_VALUE, uShort.getData() & MAX_VALUE);
    }

    public boolean equals(Object other) {
        return m317equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m323hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m355toStringimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ short getData() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw */
    private static int m310compareToxj2QHRw(short s, short s2) {
        return Intrinsics.compare(s & MAX_VALUE, s2 & MAX_VALUE);
    }
}
