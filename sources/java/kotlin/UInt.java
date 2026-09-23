package kotlin;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.internal.InlineOnly;
import kotlin.internal.IntrinsicConstEvaluation;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.ranges.UIntRange;
import kotlin.ranges.URangesKt;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.5")
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\n\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087@\u0018\u0000 x2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001xB\u0011\b\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0087\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0000H\u0097\n¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0012H\u0087\n¢\u0006\u0004\b\u0013\u0010\u0014J\u0018\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\n¢\u0006\u0004\b\u0016\u0010\fJ\u0018\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u0017\u0010\u000fJ\u0018\u0010\u0015\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u0018\u0010\u0011J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\n¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\n¢\u0006\u0004\b\u001c\u0010\fJ\u0018\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\u001d\u0010\u000fJ\u0018\u0010\u001b\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b\u001e\u0010\u0011J\u0018\u0010\u001b\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\n¢\u0006\u0004\b\u001f\u0010\u001aJ\u0018\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\n¢\u0006\u0004\b!\u0010\fJ\u0018\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b\"\u0010\u000fJ\u0018\u0010 \u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b#\u0010\u0011J\u0018\u0010 \u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\n¢\u0006\u0004\b$\u0010\u001aJ\u0018\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\n¢\u0006\u0004\b&\u0010\fJ\u0018\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b'\u0010\u000fJ\u0018\u0010%\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b(\u0010\u0011J\u0018\u0010%\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\n¢\u0006\u0004\b)\u0010\u001aJ\u0018\u0010*\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\n¢\u0006\u0004\b+\u0010\fJ\u0018\u0010*\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\n¢\u0006\u0004\b,\u0010\u000fJ\u0018\u0010*\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b-\u0010\u0011J\u0018\u0010*\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\n¢\u0006\u0004\b.\u0010\u001aJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH\u0087\b¢\u0006\u0004\b0\u0010\fJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\rH\u0087\b¢\u0006\u0004\b1\u0010\u000fJ\u0018\u0010/\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b2\u0010\u0011J\u0018\u0010/\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\b¢\u0006\u0004\b3\u0010\u001aJ\u0018\u00104\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\nH\u0087\b¢\u0006\u0004\b5\u00106J\u0018\u00104\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\rH\u0087\b¢\u0006\u0004\b7\u00108J\u0018\u00104\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\b9\u0010\u0011J\u0018\u00104\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0012H\u0087\b¢\u0006\u0004\b:\u0010\u001aJ\u0010\u0010;\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b<\u0010\u0005J\u0010\u0010=\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\b>\u0010\u0005J\u0018\u0010?\u001a\u00020@2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bA\u0010BJ\u0018\u0010C\u001a\u00020@2\u0006\u0010\t\u001a\u00020\u0000H\u0087\n¢\u0006\u0004\bD\u0010BJ\u0018\u0010E\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0003H\u0087\f¢\u0006\u0004\bG\u0010\u0011J\u0018\u0010H\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0003H\u0087\f¢\u0006\u0004\bI\u0010\u0011J\u0018\u0010J\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bK\u0010\u0011J\u0018\u0010L\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bM\u0010\u0011J\u0018\u0010N\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0000H\u0087\f¢\u0006\u0004\bO\u0010\u0011J\u0010\u0010P\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\bQ\u0010\u0005J\u0010\u0010R\u001a\u00020SH\u0087\b¢\u0006\u0004\bT\u0010UJ\u0010\u0010V\u001a\u00020WH\u0087\b¢\u0006\u0004\bX\u0010YJ\u0010\u0010Z\u001a\u00020\u0003H\u0087\b¢\u0006\u0004\b[\u0010\u0005J\u0010\u0010\\\u001a\u00020]H\u0087\b¢\u0006\u0004\b^\u0010_J\u0010\u0010`\u001a\u00020\nH\u0087\b¢\u0006\u0004\ba\u0010UJ\u0010\u0010b\u001a\u00020\rH\u0087\b¢\u0006\u0004\bc\u0010YJ\u0010\u0010d\u001a\u00020\u0000H\u0087\b¢\u0006\u0004\be\u0010\u0005J\u0010\u0010f\u001a\u00020\u0012H\u0087\b¢\u0006\u0004\bg\u0010_J\u0010\u0010h\u001a\u00020iH\u0087\b¢\u0006\u0004\bj\u0010kJ\u0010\u0010l\u001a\u00020mH\u0087\b¢\u0006\u0004\bn\u0010oJ\u000f\u0010p\u001a\u00020qH\u0016¢\u0006\u0004\br\u0010sJ\u0013\u0010t\u001a\u00020u2\b\u0010\t\u001a\u0004\u0018\u00010vHÖ\u0003J\t\u0010w\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u0012\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006y"}, d2 = {"Lkotlin/UInt;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "data", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "constructor-impl", "(I)I", "getData$annotations", "()V", "compareTo", "other", "Lkotlin/UByte;", "compareTo-7apg3OU", "(IB)I", "Lkotlin/UShort;", "compareTo-xj2QHRw", "(IS)I", "compareTo-WZ4Q5Ns", "(II)I", "Lkotlin/ULong;", "compareTo-VKZWuLQ", "(IJ)I", "plus", "plus-7apg3OU", "plus-xj2QHRw", "plus-WZ4Q5Ns", "plus-VKZWuLQ", "(IJ)J", "minus", "minus-7apg3OU", "minus-xj2QHRw", "minus-WZ4Q5Ns", "minus-VKZWuLQ", "times", "times-7apg3OU", "times-xj2QHRw", "times-WZ4Q5Ns", "times-VKZWuLQ", "div", "div-7apg3OU", "div-xj2QHRw", "div-WZ4Q5Ns", "div-VKZWuLQ", "rem", "rem-7apg3OU", "rem-xj2QHRw", "rem-WZ4Q5Ns", "rem-VKZWuLQ", "floorDiv", "floorDiv-7apg3OU", "floorDiv-xj2QHRw", "floorDiv-WZ4Q5Ns", "floorDiv-VKZWuLQ", "mod", "mod-7apg3OU", "(IB)B", "mod-xj2QHRw", "(IS)S", "mod-WZ4Q5Ns", "mod-VKZWuLQ", "inc", "inc-pVg5ArA", "dec", "dec-pVg5ArA", "rangeTo", "Lkotlin/ranges/UIntRange;", "rangeTo-WZ4Q5Ns", "(II)Lkotlin/ranges/UIntRange;", "rangeUntil", "rangeUntil-WZ4Q5Ns", "shl", "bitCount", "shl-pVg5ArA", "shr", "shr-pVg5ArA", "and", "and-WZ4Q5Ns", "or", "or-WZ4Q5Ns", "xor", "xor-WZ4Q5Ns", "inv", "inv-pVg5ArA", "toByte", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toByte-impl", "(I)B", "toShort", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toShort-impl", "(I)S", "toInt", "toInt-impl", "toLong", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toLong-impl", "(I)J", "toUByte", "toUByte-w2LRezQ", "toUShort", "toUShort-Mh2AYeg", "toUInt", "toUInt-pVg5ArA", "toULong", "toULong-s-VKNKU", "toFloat", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toFloat-impl", "(I)F", "toDouble", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toDouble-impl", "(I)D", "toString", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "toString-impl", "(I)Ljava/lang/String;", "equals", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "hashCode", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = 48)
@JvmInline
/* loaded from: classes3.dex */
public final class UInt implements Comparable<UInt> {
    public static final int MAX_VALUE = -1;
    public static final int MIN_VALUE = 0;
    public static final int SIZE_BITS = 32;
    public static final int SIZE_BYTES = 4;
    private final int data;

    @PublishedApi
    @IntrinsicConstEvaluation
    private /* synthetic */ UInt(int i) {
        this.data = i;
    }

    @InlineOnly
    /* renamed from: and-WZ4Q5Ns */
    private static final int m118andWZ4Q5Ns(int i, int i2) {
        return m125constructorimpl(i & i2);
    }

    /* renamed from: box-impl */
    public static final /* synthetic */ UInt m119boximpl(int i) {
        return new UInt(i);
    }

    @InlineOnly
    /* renamed from: compareTo-7apg3OU */
    private static final int m120compareTo7apg3OU(int i, byte b) {
        return Integer.compare(i ^ IntCompanionObject.MIN_VALUE, m125constructorimpl(b & UByte.MAX_VALUE) ^ IntCompanionObject.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-VKZWuLQ */
    private static final int m121compareToVKZWuLQ(int i, long j) {
        return Long.compare(ULong.m204constructorimpl(i & 4294967295L) ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns */
    private int m122compareToWZ4Q5Ns(int i) {
        return UnsignedKt.uintCompare(getData(), i);
    }

    @InlineOnly
    /* renamed from: compareTo-xj2QHRw */
    private static final int m124compareToxj2QHRw(int i, short s) {
        return Integer.compare(i ^ IntCompanionObject.MIN_VALUE, m125constructorimpl(s & UShort.MAX_VALUE) ^ IntCompanionObject.MIN_VALUE);
    }

    @PublishedApi
    @IntrinsicConstEvaluation
    /* renamed from: constructor-impl */
    public static int m125constructorimpl(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: dec-pVg5ArA */
    private static final int m126decpVg5ArA(int i) {
        return m125constructorimpl(i - 1);
    }

    @InlineOnly
    /* renamed from: div-7apg3OU */
    private static final int m127div7apg3OU(int i, byte b) {
        return (int) ((i & 4294967295L) / (m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: div-VKZWuLQ */
    private static final long m128divVKZWuLQ(int i, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(i & 4294967295L);
        if (j < 0) {
            if ((m204constructorimpl ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (m204constructorimpl >= 0) {
            return m204constructorimpl / j;
        }
        int i2 = 1;
        long j2 = ((m204constructorimpl >>> 1) / j) << 1;
        if (((m204constructorimpl - (j2 * j)) ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
            i2 = 0;
        }
        return j2 + i2;
    }

    @InlineOnly
    /* renamed from: div-WZ4Q5Ns */
    private static final int m129divWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m381uintDivideJ1ME1BU(i, i2);
    }

    @InlineOnly
    /* renamed from: div-xj2QHRw */
    private static final int m130divxj2QHRw(int i, short s) {
        return (int) ((i & 4294967295L) / (m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L));
    }

    /* renamed from: equals-impl */
    public static boolean m131equalsimpl(int i, Object obj) {
        return (obj instanceof UInt) && i == ((UInt) obj).getData();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m132equalsimpl0(int i, int i2) {
        return i == i2;
    }

    @InlineOnly
    /* renamed from: floorDiv-7apg3OU */
    private static final int m133floorDiv7apg3OU(int i, byte b) {
        return (int) ((i & 4294967295L) / (m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-VKZWuLQ */
    private static final long m134floorDivVKZWuLQ(int i, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(i & 4294967295L);
        if (j < 0) {
            if ((m204constructorimpl ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
                return 0L;
            }
            return 1L;
        }
        if (m204constructorimpl >= 0) {
            return m204constructorimpl / j;
        }
        int i2 = 1;
        long j2 = ((m204constructorimpl >>> 1) / j) << 1;
        if (((m204constructorimpl - (j2 * j)) ^ Long.MIN_VALUE) < (j ^ Long.MIN_VALUE)) {
            i2 = 0;
        }
        return j2 + i2;
    }

    @InlineOnly
    /* renamed from: floorDiv-WZ4Q5Ns */
    private static final int m135floorDivWZ4Q5Ns(int i, int i2) {
        return (int) ((i & 4294967295L) / (i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: floorDiv-xj2QHRw */
    private static final int m136floorDivxj2QHRw(int i, short s) {
        return (int) ((i & 4294967295L) / (m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L));
    }

    @PublishedApi
    public static /* synthetic */ void getData$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m137hashCodeimpl(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: inc-pVg5ArA */
    private static final int m138incpVg5ArA(int i) {
        return m125constructorimpl(i + 1);
    }

    @InlineOnly
    /* renamed from: inv-pVg5ArA */
    private static final int m139invpVg5ArA(int i) {
        return m125constructorimpl(~i);
    }

    @InlineOnly
    /* renamed from: minus-7apg3OU */
    private static final int m140minus7apg3OU(int i, byte b) {
        return m125constructorimpl(i - m125constructorimpl(b & UByte.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: minus-VKZWuLQ */
    private static final long m141minusVKZWuLQ(int i, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(i & 4294967295L) - j);
    }

    @InlineOnly
    /* renamed from: minus-WZ4Q5Ns */
    private static final int m142minusWZ4Q5Ns(int i, int i2) {
        return m125constructorimpl(i - i2);
    }

    @InlineOnly
    /* renamed from: minus-xj2QHRw */
    private static final int m143minusxj2QHRw(int i, short s) {
        return m125constructorimpl(i - m125constructorimpl(s & UShort.MAX_VALUE));
    }

    @InlineOnly
    /* renamed from: mod-7apg3OU */
    private static final byte m144mod7apg3OU(int i, byte b) {
        return UByte.m48constructorimpl((byte) ((i & 4294967295L) % (m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: mod-VKZWuLQ */
    private static final long m145modVKZWuLQ(int i, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(i & 4294967295L);
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
    private static final int m146modWZ4Q5Ns(int i, int i2) {
        return (int) ((i & 4294967295L) % (i2 & 4294967295L));
    }

    @InlineOnly
    /* renamed from: mod-xj2QHRw */
    private static final short m147modxj2QHRw(int i, short s) {
        return UShort.m311constructorimpl((short) ((i & 4294967295L) % (m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L)));
    }

    @InlineOnly
    /* renamed from: or-WZ4Q5Ns */
    private static final int m148orWZ4Q5Ns(int i, int i2) {
        return m125constructorimpl(i | i2);
    }

    @InlineOnly
    /* renamed from: plus-7apg3OU */
    private static final int m149plus7apg3OU(int i, byte b) {
        return m125constructorimpl(m125constructorimpl(b & UByte.MAX_VALUE) + i);
    }

    @InlineOnly
    /* renamed from: plus-VKZWuLQ */
    private static final long m150plusVKZWuLQ(int i, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(i & 4294967295L) + j);
    }

    @InlineOnly
    /* renamed from: plus-WZ4Q5Ns */
    private static final int m151plusWZ4Q5Ns(int i, int i2) {
        return m125constructorimpl(i + i2);
    }

    @InlineOnly
    /* renamed from: plus-xj2QHRw */
    private static final int m152plusxj2QHRw(int i, short s) {
        return m125constructorimpl(m125constructorimpl(s & UShort.MAX_VALUE) + i);
    }

    @InlineOnly
    /* renamed from: rangeTo-WZ4Q5Ns */
    private static final UIntRange m153rangeToWZ4Q5Ns(int i, int i2) {
        return new UIntRange(i, i2, null);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @InlineOnly
    /* renamed from: rangeUntil-WZ4Q5Ns */
    private static final UIntRange m154rangeUntilWZ4Q5Ns(int i, int i2) {
        return URangesKt.m1301untilJ1ME1BU(i, i2);
    }

    @InlineOnly
    /* renamed from: rem-7apg3OU */
    private static final int m155rem7apg3OU(int i, byte b) {
        return (int) ((i & 4294967295L) % (m125constructorimpl(b & UByte.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: rem-VKZWuLQ */
    private static final long m156remVKZWuLQ(int i, long j) {
        long m204constructorimpl = ULong.m204constructorimpl(i & 4294967295L);
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
    private static final int m157remWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.m382uintRemainderJ1ME1BU(i, i2);
    }

    @InlineOnly
    /* renamed from: rem-xj2QHRw */
    private static final int m158remxj2QHRw(int i, short s) {
        return (int) ((i & 4294967295L) % (m125constructorimpl(s & UShort.MAX_VALUE) & 4294967295L));
    }

    @InlineOnly
    /* renamed from: shl-pVg5ArA */
    private static final int m159shlpVg5ArA(int i, int i2) {
        return m125constructorimpl(i << i2);
    }

    @InlineOnly
    /* renamed from: shr-pVg5ArA */
    private static final int m160shrpVg5ArA(int i, int i2) {
        return m125constructorimpl(i >>> i2);
    }

    @InlineOnly
    /* renamed from: times-7apg3OU */
    private static final int m161times7apg3OU(int i, byte b) {
        return m125constructorimpl(m125constructorimpl(b & UByte.MAX_VALUE) * i);
    }

    @InlineOnly
    /* renamed from: times-VKZWuLQ */
    private static final long m162timesVKZWuLQ(int i, long j) {
        return ULong.m204constructorimpl(ULong.m204constructorimpl(i & 4294967295L) * j);
    }

    @InlineOnly
    /* renamed from: times-WZ4Q5Ns */
    private static final int m163timesWZ4Q5Ns(int i, int i2) {
        return m125constructorimpl(i * i2);
    }

    @InlineOnly
    /* renamed from: times-xj2QHRw */
    private static final int m164timesxj2QHRw(int i, short s) {
        return m125constructorimpl(m125constructorimpl(s & UShort.MAX_VALUE) * i);
    }

    @InlineOnly
    /* renamed from: toByte-impl */
    private static final byte m165toByteimpl(int i) {
        return (byte) i;
    }

    @InlineOnly
    /* renamed from: toDouble-impl */
    private static final double m166toDoubleimpl(int i) {
        return UnsignedKt.uintToDouble(i);
    }

    @InlineOnly
    /* renamed from: toFloat-impl */
    private static final float m167toFloatimpl(int i) {
        return (float) UnsignedKt.uintToDouble(i);
    }

    @InlineOnly
    /* renamed from: toInt-impl */
    private static final int m168toIntimpl(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: toLong-impl */
    private static final long m169toLongimpl(int i) {
        return i & 4294967295L;
    }

    @InlineOnly
    /* renamed from: toShort-impl */
    private static final short m170toShortimpl(int i) {
        return (short) i;
    }

    @NotNull
    /* renamed from: toString-impl */
    public static String m171toStringimpl(int i) {
        return String.valueOf(i & 4294967295L);
    }

    @InlineOnly
    /* renamed from: toUByte-w2LRezQ */
    private static final byte m172toUBytew2LRezQ(int i) {
        return UByte.m48constructorimpl((byte) i);
    }

    @InlineOnly
    /* renamed from: toUInt-pVg5ArA */
    private static final int m173toUIntpVg5ArA(int i) {
        return i;
    }

    @InlineOnly
    /* renamed from: toULong-s-VKNKU */
    private static final long m174toULongsVKNKU(int i) {
        return ULong.m204constructorimpl(i & 4294967295L);
    }

    @InlineOnly
    /* renamed from: toUShort-Mh2AYeg */
    private static final short m175toUShortMh2AYeg(int i) {
        return UShort.m311constructorimpl((short) i);
    }

    @InlineOnly
    /* renamed from: xor-WZ4Q5Ns */
    private static final int m176xorWZ4Q5Ns(int i, int i2) {
        return m125constructorimpl(i ^ i2);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(UInt uInt) {
        return UnsignedKt.uintCompare(getData(), uInt.getData());
    }

    public boolean equals(Object other) {
        return m131equalsimpl(this.data, other);
    }

    public int hashCode() {
        return m137hashCodeimpl(this.data);
    }

    @NotNull
    public String toString() {
        return m171toStringimpl(this.data);
    }

    /* renamed from: unbox-impl, reason: from getter */
    public final /* synthetic */ int getData() {
        return this.data;
    }

    @InlineOnly
    /* renamed from: compareTo-WZ4Q5Ns */
    private static int m123compareToWZ4Q5Ns(int i, int i2) {
        return UnsignedKt.uintCompare(i, i2);
    }
}
