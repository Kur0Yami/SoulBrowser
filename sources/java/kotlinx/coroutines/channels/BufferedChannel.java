package kotlinx.coroutines.channels;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.time.DurationKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.StackTraceRecoveryKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectClause1Impl;
import kotlinx.coroutines.selects.SelectImplementation;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectKt;
import kotlinx.coroutines.selects.TrySelectDetailedResult;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0002\u0010\u0011R\u0013\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0082\u0004R\u000b\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004R\u0017\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u00038\u0002X\u0082\u0004R\u0013\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0082\u0004R\u000b\u0010\u000b\u001a\u00020\u00068\u0002X\u0082\u0004R\u0017\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u00038\u0002X\u0082\u0004R\u000b\u0010\r\u001a\u00020\u00068\u0002X\u0082\u0004R\u0017\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b0\u00038\u0002X\u0082\u0004R\u000b\u0010\u000f\u001a\u00020\u00068\u0002X\u0082\u0004¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel;", "E", "Lkotlinx/coroutines/channels/Channel;", "Lkotlinx/atomicfu/AtomicRef;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_closeCause", "Lkotlinx/atomicfu/AtomicLong;", "bufferEnd", "Lkotlinx/coroutines/channels/ChannelSegment;", "bufferEndSegment", "closeHandler", "completedExpandBuffersAndPauseFlag", "receiveSegment", "receivers", "sendSegment", "sendersAndCloseStatus", "BufferedChannelIterator", "SendBroadcast", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannelKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 7 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$sendImpl$1\n+ 8 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 9 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 10 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 11 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,3063:1\n273#1,6:3066\n280#1,68:3073\n374#1,18:3164\n244#1:3182\n269#1,10:3183\n280#1,48:3194\n395#1:3242\n334#1,14:3243\n399#1,3:3258\n244#1:3271\n269#1,10:3272\n280#1,68:3283\n244#1:3361\n269#1,10:3362\n280#1,68:3373\n244#1:3445\n269#1,10:3446\n280#1,68:3457\n886#1,52:3527\n964#1,8:3583\n858#1:3591\n882#1,33:3592\n974#1:3625\n916#1,14:3626\n935#1,3:3641\n979#1,6:3644\n886#1,52:3658\n964#1,8:3714\n858#1:3722\n882#1,33:3723\n974#1:3756\n916#1,14:3757\n935#1,3:3772\n979#1,6:3775\n858#1:3790\n882#1,48:3791\n935#1,3:3840\n858#1:3843\n882#1,48:3844\n935#1,3:3893\n244#1:3905\n269#1,10:3906\n280#1,68:3917\n858#1:3986\n882#1,48:3987\n935#1,3:4036\n1#2:3064\n3046#3:3065\n3046#3:3072\n3046#3:3193\n3046#3:3282\n3046#3:3372\n3046#3:3444\n3046#3:3456\n3046#3:3526\n3046#3:3789\n3046#3:3896\n3046#3:3897\n3060#3:3898\n3060#3:3899\n3059#3:3900\n3059#3:3901\n3059#3:3902\n3060#3:3903\n3059#3:3904\n3046#3:3916\n3047#3:4039\n3046#3:4040\n3046#3:4041\n3046#3:4042\n3047#3:4043\n3046#3:4044\n3047#3:4067\n3046#3:4068\n3046#3:4069\n3047#3:4070\n3046#3:4120\n3047#3:4121\n3047#3:4122\n3047#3:4140\n3047#3:4141\n310#4,9:3141\n319#4,2:3158\n328#4,4:3160\n332#4,8:3261\n310#4,9:3352\n319#4,2:3442\n328#4,4:3579\n332#4,8:3650\n328#4,4:3710\n332#4,8:3781\n216#5:3150\n217#5:3153\n216#5:3154\n217#5:3157\n57#6,2:3151\n57#6,2:3155\n57#6,2:3269\n269#7:3257\n269#7:3351\n269#7:3441\n269#7:3525\n269#7:3985\n882#8:3640\n882#8:3771\n882#8:3839\n882#8:3892\n882#8:4035\n33#9,11:4045\n33#9,11:4056\n68#10,3:4071\n42#10,8:4074\n68#10,3:4082\n42#10,8:4085\n42#10,8:4093\n68#10,3:4101\n42#10,8:4104\n42#10,8:4112\n766#11:4123\n857#11,2:4124\n2310#11,14:4126\n766#11:4142\n857#11,2:4143\n2310#11,14:4145\n766#11:4159\n857#11,2:4160\n2310#11,14:4162\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n*L\n113#1:3066,6\n113#1:3073,68\n154#1:3164,18\n154#1:3182\n154#1:3183,10\n154#1:3194,48\n154#1:3242\n154#1:3243,14\n154#1:3258,3\n194#1:3271\n194#1:3272,10\n194#1:3283,68\n225#1:3361\n225#1:3362,10\n225#1:3373,68\n391#1:3445\n391#1:3446,10\n391#1:3457,68\n667#1:3527,52\n696#1:3583,8\n696#1:3591\n696#1:3592,33\n696#1:3625\n696#1:3626,14\n696#1:3641,3\n696#1:3644,6\n732#1:3658,52\n748#1:3714,8\n748#1:3722\n748#1:3723,33\n748#1:3756\n748#1:3757,14\n748#1:3772,3\n748#1:3775,6\n781#1:3790\n781#1:3791,48\n781#1:3840,3\n971#1:3843\n971#1:3844,48\n971#1:3893,3\n1464#1:3905\n1464#1:3906,10\n1464#1:3917,68\n1512#1:3986\n1512#1:3987,48\n1512#1:4036,3\n70#1:3065\n113#1:3072\n154#1:3193\n194#1:3282\n225#1:3372\n278#1:3444\n391#1:3456\n606#1:3526\n771#1:3789\n1007#1:3896\n1056#1:3897\n1374#1:3898\n1376#1:3899\n1406#1:3900\n1416#1:3901\n1425#1:3902\n1426#1:3903\n1433#1:3904\n1464#1:3916\n1873#1:4039\n1875#1:4040\n1877#1:4041\n1890#1:4042\n1901#1:4043\n1902#1:4044\n2204#1:4067\n2217#1:4068\n2227#1:4069\n2230#1:4070\n2547#1:4120\n2549#1:4121\n2574#1:4122\n2636#1:4140\n2637#1:4141\n134#1:3141,9\n134#1:3158,2\n153#1:3160,4\n153#1:3261,8\n221#1:3352,9\n221#1:3442,2\n695#1:3579,4\n695#1:3650,8\n746#1:3710,4\n746#1:3781,8\n138#1:3150\n138#1:3153\n141#1:3154\n141#1:3157\n138#1:3151,2\n141#1:3155,2\n183#1:3269,2\n154#1:3257\n194#1:3351\n225#1:3441\n391#1:3525\n1464#1:3985\n696#1:3640\n748#1:3771\n781#1:3839\n971#1:3892\n1512#1:4035\n2106#1:4045,11\n2161#1:4056,11\n2369#1:4071,3\n2369#1:4074,8\n2424#1:4082,3\n2424#1:4085,8\n2443#1:4093,8\n2473#1:4101,3\n2473#1:4104,8\n2534#1:4112,8\n2583#1:4123\n2583#1:4124,2\n2584#1:4126,14\n2648#1:4142\n2648#1:4143,2\n2649#1:4145,14\n2689#1:4159\n2689#1:4160,2\n2690#1:4162,14\n*E\n"})
/* loaded from: classes4.dex */
public class BufferedChannel<E> implements Channel<E> {
    public static final /* synthetic */ AtomicLongFieldUpdater g = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater h = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater i = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater j = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater m = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater n = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater o = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler$volatile");
    private volatile /* synthetic */ Object _closeCause$volatile;
    private volatile /* synthetic */ long bufferEnd$volatile;
    private volatile /* synthetic */ Object bufferEndSegment$volatile;

    /* renamed from: c, reason: collision with root package name */
    public final int f21617c;
    private volatile /* synthetic */ Object closeHandler$volatile;
    private volatile /* synthetic */ long completedExpandBuffersAndPauseFlag$volatile;
    public final Function3 f;
    private volatile /* synthetic */ Object receiveSegment$volatile;
    private volatile /* synthetic */ long receivers$volatile;
    private volatile /* synthetic */ Object sendSegment$volatile;
    private volatile /* synthetic */ long sendersAndCloseStatus$volatile;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator;", "Lkotlinx/coroutines/channels/ChannelIterator;", "Lkotlinx/coroutines/Waiter;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3063:1\n886#2,52:3064\n964#2,8:3120\n858#2:3128\n882#2,33:3129\n974#2:3162\n916#2,14:3163\n935#2,3:3178\n979#2,6:3181\n328#3,4:3116\n332#3,8:3187\n882#4:3177\n57#5,2:3195\n57#5,2:3198\n1#6:3197\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1595#1:3064,52\n1632#1:3120,8\n1632#1:3128\n1632#1:3129,33\n1632#1:3162\n1632#1:3163,14\n1632#1:3178,3\n1632#1:3181,6\n1630#1:3116,4\n1630#1:3187,8\n1632#1:3177\n1668#1:3195,2\n1716#1:3198,2\n*E\n"})
    /* loaded from: classes4.dex */
    public final class BufferedChannelIterator implements ChannelIterator<E>, Waiter {

        /* renamed from: c, reason: collision with root package name */
        public Object f21618c = BufferedChannelKt.p;
        public CancellableContinuationImpl f;

        public BufferedChannelIterator() {
        }

        public static final void c(BufferedChannelIterator bufferedChannelIterator) {
            CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.f;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            bufferedChannelIterator.f = null;
            bufferedChannelIterator.f21618c = BufferedChannelKt.l;
            Throwable v = BufferedChannel.this.v();
            if (v == null) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m30constructorimpl(Boolean.FALSE));
            } else {
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(v)));
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public final Object a(Continuation continuation) {
            ChannelSegment channelSegment;
            ChannelSegment channelSegment2;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.l;
            BufferedChannel bufferedChannel = BufferedChannel.this;
            ChannelSegment channelSegment3 = (ChannelSegment) atomicReferenceFieldUpdater.get(bufferedChannel);
            while (!bufferedChannel.B()) {
                long andIncrement = BufferedChannel.h.getAndIncrement(bufferedChannel);
                long j = BufferedChannelKt.b;
                long j2 = andIncrement / j;
                int i = (int) (andIncrement % j);
                if (channelSegment3.g != j2) {
                    channelSegment = bufferedChannel.u(j2, channelSegment3);
                    if (channelSegment == null) {
                        continue;
                    }
                } else {
                    channelSegment = channelSegment3;
                }
                Object N = bufferedChannel.N(channelSegment, i, andIncrement, null);
                Symbol symbol = BufferedChannelKt.m;
                if (N != symbol) {
                    Symbol symbol2 = BufferedChannelKt.o;
                    if (N == symbol2) {
                        if (andIncrement < bufferedChannel.y()) {
                            channelSegment.a();
                        }
                        channelSegment3 = channelSegment;
                    } else {
                        if (N == BufferedChannelKt.n) {
                            CancellableContinuationImpl b = CancellableContinuationKt.b(IntrinsicsKt.intercepted(continuation));
                            try {
                                this.f = b;
                                Object N2 = bufferedChannel.N(channelSegment, i, andIncrement, this);
                                if (N2 == symbol) {
                                    b(channelSegment, i);
                                } else {
                                    if (N2 == symbol2) {
                                        if (andIncrement < bufferedChannel.y()) {
                                            channelSegment.a();
                                        }
                                        ChannelSegment channelSegment4 = (ChannelSegment) BufferedChannel.l.get(bufferedChannel);
                                        while (true) {
                                            if (bufferedChannel.B()) {
                                                c(this);
                                                break;
                                            }
                                            long andIncrement2 = BufferedChannel.h.getAndIncrement(bufferedChannel);
                                            long j3 = BufferedChannelKt.b;
                                            long j4 = andIncrement2 / j3;
                                            int i2 = (int) (andIncrement2 % j3);
                                            if (channelSegment4.g != j4) {
                                                channelSegment2 = bufferedChannel.u(j4, channelSegment4);
                                                if (channelSegment2 == null) {
                                                }
                                            } else {
                                                channelSegment2 = channelSegment4;
                                            }
                                            Object N3 = bufferedChannel.N(channelSegment2, i2, andIncrement2, this);
                                            if (N3 == BufferedChannelKt.m) {
                                                b(channelSegment2, i2);
                                                break;
                                            }
                                            if (N3 == BufferedChannelKt.o) {
                                                if (andIncrement2 < bufferedChannel.y()) {
                                                    channelSegment2.a();
                                                }
                                                channelSegment4 = channelSegment2;
                                            } else if (N3 != BufferedChannelKt.n) {
                                                channelSegment2.a();
                                                this.f21618c = N3;
                                                this.f = null;
                                            } else {
                                                throw new IllegalStateException("unexpected");
                                            }
                                        }
                                    } else {
                                        channelSegment.a();
                                        this.f21618c = N2;
                                        this.f = null;
                                    }
                                    b.m(Boxing.boxBoolean(true), null);
                                }
                                Object q = b.q();
                                if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                                    DebugProbesKt.probeCoroutineSuspended(continuation);
                                }
                                return q;
                            } catch (Throwable th) {
                                b.z();
                                throw th;
                            }
                        }
                        channelSegment.a();
                        this.f21618c = N;
                        return Boxing.boxBoolean(true);
                    }
                } else {
                    throw new IllegalStateException("unreachable");
                }
            }
            this.f21618c = BufferedChannelKt.l;
            Throwable v = bufferedChannel.v();
            if (v == null) {
                return Boxing.boxBoolean(false);
            }
            int i3 = StackTraceRecoveryKt.f21893a;
            throw v;
        }

        @Override // kotlinx.coroutines.Waiter
        public final void b(Segment segment, int i) {
            CancellableContinuationImpl cancellableContinuationImpl = this.f;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.b(segment, i);
            }
        }

        @Override // kotlinx.coroutines.channels.ChannelIterator
        public final Object next() {
            Object obj = this.f21618c;
            Symbol symbol = BufferedChannelKt.p;
            if (obj != symbol) {
                this.f21618c = symbol;
                if (obj != BufferedChannelKt.l) {
                    return obj;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = BufferedChannel.g;
                Throwable w = BufferedChannel.this.w();
                int i = StackTraceRecoveryKt.f21893a;
                throw w;
            }
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/channels/BufferedChannel$SendBroadcast;", "Lkotlinx/coroutines/Waiter;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class SendBroadcast implements Waiter {

        /* renamed from: c, reason: collision with root package name */
        public final CancellableContinuationImpl f21619c;
        public final /* synthetic */ CancellableContinuationImpl f;

        public SendBroadcast(CancellableContinuationImpl cancellableContinuationImpl) {
            this.f21619c = cancellableContinuationImpl;
            Intrinsics.checkNotNull(cancellableContinuationImpl, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuationImpl<kotlin.Boolean>");
            this.f = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.Waiter
        public final void b(Segment segment, int i) {
            this.f.b(segment, i);
        }
    }

    public BufferedChannel(int i2) {
        long j2;
        this.f21617c = i2;
        if (i2 >= 0) {
            ChannelSegment channelSegment = BufferedChannelKt.f21629a;
            if (i2 != 0) {
                if (i2 != Integer.MAX_VALUE) {
                    j2 = i2;
                } else {
                    j2 = LongCompanionObject.MAX_VALUE;
                }
            } else {
                j2 = 0;
            }
            this.bufferEnd$volatile = j2;
            this.completedExpandBuffersAndPauseFlag$volatile = i.get(this);
            ChannelSegment channelSegment2 = new ChannelSegment(0L, null, this, 3);
            this.sendSegment$volatile = channelSegment2;
            this.receiveSegment$volatile = channelSegment2;
            if (D()) {
                channelSegment2 = BufferedChannelKt.f21629a;
                Intrinsics.checkNotNull(channelSegment2, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
            }
            this.bufferEndSegment$volatile = channelSegment2;
            this.f = null;
            this._closeCause$volatile = BufferedChannelKt.s;
            return;
        }
        throw new IllegalArgumentException(a.f(i2, "Invalid channel capacity: ", ", should be >=0").toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object G(kotlinx.coroutines.channels.BufferedChannel r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            boolean r0 = r14 instanceof kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            if (r0 == 0) goto L14
            r0 = r14
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = (kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1) r0
            int r1 = r0.g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.g = r1
        L12:
            r6 = r0
            goto L1a
        L14:
            kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1 r0 = new kotlinx.coroutines.channels.BufferedChannel$receiveCatching$1
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r6.f21627c
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.g
            r2 = 1
            if (r1 == 0) goto L37
            if (r1 != r2) goto L2f
            kotlin.ResultKt.throwOnFailure(r14)
            kotlinx.coroutines.channels.ChannelResult r14 = (kotlinx.coroutines.channels.ChannelResult) r14
            java.lang.Object r13 = r14.f21634a
            return r13
        L2f:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L37:
            kotlin.ResultKt.throwOnFailure(r14)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r14 = kotlinx.coroutines.channels.BufferedChannel.l
            java.lang.Object r14 = r14.get(r13)
            kotlinx.coroutines.channels.ChannelSegment r14 = (kotlinx.coroutines.channels.ChannelSegment) r14
        L42:
            boolean r1 = r13.B()
            if (r1 == 0) goto L52
            java.lang.Throwable r13 = r13.v()
            kotlinx.coroutines.channels.ChannelResult$Closed r14 = new kotlinx.coroutines.channels.ChannelResult$Closed
            r14.<init>(r13)
            return r14
        L52:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = kotlinx.coroutines.channels.BufferedChannel.h
            long r4 = r1.getAndIncrement(r13)
            int r1 = kotlinx.coroutines.channels.BufferedChannelKt.b
            long r7 = (long) r1
            long r9 = r4 / r7
            long r7 = r4 % r7
            int r3 = (int) r7
            long r7 = r14.g
            int r1 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r1 == 0) goto L6f
            kotlinx.coroutines.channels.ChannelSegment r1 = r13.u(r9, r14)
            if (r1 != 0) goto L6d
            goto L42
        L6d:
            r8 = r1
            goto L70
        L6f:
            r8 = r14
        L70:
            r12 = 0
            r7 = r13
            r9 = r3
            r10 = r4
            java.lang.Object r13 = r7.N(r8, r9, r10, r12)
            r1 = r7
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.m
            if (r13 == r14) goto La2
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.o
            if (r13 != r14) goto L8f
            long r13 = r1.y()
            int r13 = (r4 > r13 ? 1 : (r4 == r13 ? 0 : -1))
            if (r13 >= 0) goto L8c
            r8.a()
        L8c:
            r13 = r1
            r14 = r8
            goto L42
        L8f:
            kotlinx.coroutines.internal.Symbol r14 = kotlinx.coroutines.channels.BufferedChannelKt.n
            if (r13 != r14) goto L9e
            r6.g = r2
            r2 = r8
            java.lang.Object r13 = r1.H(r2, r3, r4, r6)
            if (r13 != r0) goto L9d
            return r0
        L9d:
            return r13
        L9e:
            r8.a()
            return r13
        La2:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected"
            r13.<init>(r14)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.G(kotlinx.coroutines.channels.BufferedChannel, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final ChannelSegment b(BufferedChannel bufferedChannel, long j2, ChannelSegment channelSegment) {
        Object a2;
        BufferedChannel bufferedChannel2;
        ChannelSegment channelSegment2 = BufferedChannelKt.f21629a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f21631c;
        loop0: while (true) {
            a2 = ConcurrentLinkedListKt.a(channelSegment, j2, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(a2)) {
                Segment a3 = SegmentOrClosed.a(a2);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(bufferedChannel);
                    if (segment.g >= a3.g) {
                        break loop0;
                    }
                    if (!a3.i()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, segment, a3)) {
                        if (atomicReferenceFieldUpdater.get(bufferedChannel) != segment) {
                            if (a3.e()) {
                                a3.d();
                            }
                        }
                    }
                    if (segment.e()) {
                        segment.d();
                    }
                }
            } else {
                break;
            }
        }
        boolean b = SegmentOrClosed.b(a2);
        AtomicLongFieldUpdater atomicLongFieldUpdater = h;
        if (b) {
            bufferedChannel.s();
            if (channelSegment.g * BufferedChannelKt.b < atomicLongFieldUpdater.get(bufferedChannel)) {
                channelSegment.a();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(a2);
            long j3 = channelSegment3.g;
            if (j3 > j2) {
                long j4 = BufferedChannelKt.b * j3;
                while (true) {
                    long j5 = g.get(bufferedChannel);
                    long j6 = 1152921504606846975L & j5;
                    if (j6 >= j4) {
                        bufferedChannel2 = bufferedChannel;
                        break;
                    }
                    bufferedChannel2 = bufferedChannel;
                    if (g.compareAndSet(bufferedChannel2, j5, (((int) (j5 >> 60)) << 60) + j6)) {
                        break;
                    }
                    bufferedChannel = bufferedChannel2;
                }
                if (j3 * BufferedChannelKt.b < atomicLongFieldUpdater.get(bufferedChannel2)) {
                    channelSegment3.a();
                }
            } else {
                return channelSegment3;
            }
        }
        return null;
    }

    public static final void d(BufferedChannel bufferedChannel, Object obj, CancellableContinuationImpl cancellableContinuationImpl) {
        Throwable x = bufferedChannel.x();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(x)));
    }

    public static final void f(BufferedChannel bufferedChannel, SelectInstance selectInstance) {
        ChannelSegment channelSegment;
        BufferedChannel bufferedChannel2;
        SelectInstance selectInstance2;
        int i2;
        Waiter waiter;
        bufferedChannel.getClass();
        ChannelSegment channelSegment2 = (ChannelSegment) l.get(bufferedChannel);
        while (!bufferedChannel.B()) {
            long andIncrement = h.getAndIncrement(bufferedChannel);
            long j2 = BufferedChannelKt.b;
            long j3 = andIncrement / j2;
            int i3 = (int) (andIncrement % j2);
            if (channelSegment2.g != j3) {
                ChannelSegment u = bufferedChannel.u(j3, channelSegment2);
                if (u == null) {
                    continue;
                } else {
                    channelSegment = u;
                    selectInstance2 = selectInstance;
                    i2 = i3;
                    bufferedChannel2 = bufferedChannel;
                }
            } else {
                channelSegment = channelSegment2;
                bufferedChannel2 = bufferedChannel;
                selectInstance2 = selectInstance;
                i2 = i3;
            }
            Object N = bufferedChannel2.N(channelSegment, i2, andIncrement, selectInstance2);
            channelSegment2 = channelSegment;
            if (N == BufferedChannelKt.m) {
                if (selectInstance2 instanceof Waiter) {
                    waiter = (Waiter) selectInstance2;
                } else {
                    waiter = null;
                }
                if (waiter != null) {
                    waiter.b(channelSegment2, i2);
                    return;
                }
                return;
            }
            if (N == BufferedChannelKt.o) {
                if (andIncrement < bufferedChannel2.y()) {
                    channelSegment2.a();
                }
                bufferedChannel = bufferedChannel2;
                selectInstance = selectInstance2;
            } else {
                if (N != BufferedChannelKt.n) {
                    channelSegment2.a();
                    selectInstance2.d(N);
                    return;
                }
                throw new IllegalStateException("unexpected");
            }
        }
        selectInstance.d(BufferedChannelKt.l);
    }

    public static final int i(BufferedChannel bufferedChannel, ChannelSegment channelSegment, int i2, Object obj, long j2, Object obj2, boolean z) {
        channelSegment.m(i2, obj);
        if (z) {
            return bufferedChannel.O(channelSegment, i2, obj, j2, obj2, z);
        }
        Object k2 = channelSegment.k(i2);
        if (k2 == null) {
            if (bufferedChannel.j(j2)) {
                if (channelSegment.j(i2, null, BufferedChannelKt.d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (channelSegment.j(i2, null, obj2)) {
                    return 2;
                }
            }
        } else if (k2 instanceof Waiter) {
            channelSegment.m(i2, null);
            if (bufferedChannel.L(k2, obj)) {
                channelSegment.n(i2, BufferedChannelKt.i);
                return 0;
            }
            Symbol symbol = BufferedChannelKt.k;
            if (channelSegment.j.getAndSet((i2 * 2) + 1, symbol) != symbol) {
                channelSegment.l(i2, true);
                return 5;
            }
            return 5;
        }
        return bufferedChannel.O(channelSegment, i2, obj, j2, obj2, z);
    }

    public static void z(BufferedChannel bufferedChannel) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = j;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & 4611686018427387904L) == 0) {
            return;
        }
        do {
        } while ((atomicLongFieldUpdater.get(bufferedChannel) & 4611686018427387904L) != 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x00a2, code lost:
    
        r0 = (kotlinx.coroutines.channels.ChannelSegment) ((kotlinx.coroutines.internal.ConcurrentLinkedListNode) kotlinx.coroutines.internal.ConcurrentLinkedListNode.f.get(r0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A(long r14, boolean r16) {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.A(long, boolean):boolean");
    }

    public final boolean B() {
        return A(g.get(this), true);
    }

    public boolean C() {
        return false;
    }

    public final boolean D() {
        long j2 = i.get(this);
        if (j2 != 0 && j2 != LongCompanionObject.MAX_VALUE) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(long r5, kotlinx.coroutines.channels.ChannelSegment r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.g
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r0 = r7.b()
            kotlinx.coroutines.channels.ChannelSegment r0 = (kotlinx.coroutines.channels.ChannelSegment) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.c()
            if (r5 == 0) goto L22
            kotlinx.coroutines.internal.ConcurrentLinkedListNode r5 = r7.b()
            kotlinx.coroutines.channels.ChannelSegment r5 = (kotlinx.coroutines.channels.ChannelSegment) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.channels.BufferedChannel.m
            java.lang.Object r6 = r5.get(r4)
            kotlinx.coroutines.internal.Segment r6 = (kotlinx.coroutines.internal.Segment) r6
            long r0 = r6.g
            long r2 = r7.g
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L33
            goto L49
        L33:
            boolean r0 = r7.i()
            if (r0 != 0) goto L3a
            goto L11
        L3a:
            boolean r0 = r5.compareAndSet(r4, r6, r7)
            if (r0 == 0) goto L4a
            boolean r5 = r6.e()
            if (r5 == 0) goto L49
            r6.d()
        L49:
            return
        L4a:
            java.lang.Object r0 = r5.get(r4)
            if (r0 == r6) goto L3a
            boolean r5 = r7.e()
            if (r5 == 0) goto L22
            r7.d()
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.E(long, kotlinx.coroutines.channels.ChannelSegment):void");
    }

    public final Object F(Object obj, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation));
        cancellableContinuationImpl.r();
        Throwable x = x();
        Result.Companion companion = Result.INSTANCE;
        cancellableContinuationImpl.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(x)));
        Object q = cancellableContinuationImpl.q();
        if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return q;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object H(kotlinx.coroutines.channels.ChannelSegment r16, int r17, long r18, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.H(kotlinx.coroutines.channels.ChannelSegment, int, long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void I(SelectInstance selectInstance, Object obj) {
        ChannelSegment channelSegment;
        Waiter waiter;
        ChannelSegment channelSegment2 = (ChannelSegment) k.get(this);
        while (true) {
            long andIncrement = g.getAndIncrement(this);
            long j2 = andIncrement & 1152921504606846975L;
            boolean A = A(andIncrement, false);
            int i2 = BufferedChannelKt.b;
            long j3 = i2;
            long j4 = j2 / j3;
            int i3 = (int) (j2 % j3);
            if (channelSegment2.g != j4) {
                ChannelSegment b = b(this, j4, channelSegment2);
                if (b == null) {
                    if (A) {
                        selectInstance.d(BufferedChannelKt.l);
                        return;
                    }
                } else {
                    channelSegment = b;
                }
            } else {
                channelSegment = channelSegment2;
            }
            SelectInstance selectInstance2 = selectInstance;
            Object obj2 = obj;
            int i4 = i(this, channelSegment, i3, obj2, j2, selectInstance2, A);
            channelSegment2 = channelSegment;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 != 4) {
                                if (i4 == 5) {
                                    channelSegment2.a();
                                }
                                obj = obj2;
                                selectInstance = selectInstance2;
                            } else {
                                if (j2 < h.get(this)) {
                                    channelSegment2.a();
                                }
                                selectInstance2.d(BufferedChannelKt.l);
                                return;
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else {
                        if (A) {
                            channelSegment2.h();
                            selectInstance2.d(BufferedChannelKt.l);
                            return;
                        }
                        if (selectInstance2 instanceof Waiter) {
                            waiter = (Waiter) selectInstance2;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            waiter.b(channelSegment2, i3 + i2);
                            return;
                        }
                        return;
                    }
                } else {
                    selectInstance2.d(Unit.INSTANCE);
                    return;
                }
            } else {
                channelSegment2.a();
                selectInstance2.d(Unit.INSTANCE);
                return;
            }
        }
    }

    public final void J(Waiter waiter, boolean z) {
        Throwable x;
        if (waiter instanceof SendBroadcast) {
            CancellableContinuationImpl cancellableContinuationImpl = ((SendBroadcast) waiter).f21619c;
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuationImpl.resumeWith(Result.m30constructorimpl(Boolean.FALSE));
            return;
        }
        if (waiter instanceof CancellableContinuation) {
            Continuation continuation = (Continuation) waiter;
            Result.Companion companion2 = Result.INSTANCE;
            if (z) {
                x = w();
            } else {
                x = x();
            }
            continuation.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(x)));
            return;
        }
        if (waiter instanceof ReceiveCatching) {
            CancellableContinuationImpl cancellableContinuationImpl2 = ((ReceiveCatching) waiter).f21673c;
            Result.Companion companion3 = Result.INSTANCE;
            cancellableContinuationImpl2.resumeWith(Result.m30constructorimpl(new ChannelResult(new ChannelResult.Closed(v()))));
            return;
        }
        if (waiter instanceof BufferedChannelIterator) {
            BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) waiter;
            CancellableContinuationImpl cancellableContinuationImpl3 = bufferedChannelIterator.f;
            Intrinsics.checkNotNull(cancellableContinuationImpl3);
            bufferedChannelIterator.f = null;
            bufferedChannelIterator.f21618c = BufferedChannelKt.l;
            Throwable v = BufferedChannel.this.v();
            if (v == null) {
                Result.Companion companion4 = Result.INSTANCE;
                cancellableContinuationImpl3.resumeWith(Result.m30constructorimpl(Boolean.FALSE));
                return;
            } else {
                Result.Companion companion5 = Result.INSTANCE;
                cancellableContinuationImpl3.resumeWith(Result.m30constructorimpl(ResultKt.createFailure(v)));
                return;
            }
        }
        if (waiter instanceof SelectInstance) {
            ((SelectInstance) waiter).c(this, BufferedChannelKt.l);
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + waiter).toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x008d, code lost:
    
        r1 = kotlin.Result.Companion;
        r8.resumeWith(kotlin.Result.m30constructorimpl(kotlin.coroutines.jvm.internal.Boxing.boxBoolean(true)));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object K(kotlin.coroutines.Continuation r17) {
        /*
            r16 = this;
            r0 = r16
            kotlinx.coroutines.CancellableContinuationImpl r8 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r17)
            r9 = 1
            r8.<init>(r9, r1)
            r8.r()
            kotlinx.coroutines.channels.BufferedChannel$SendBroadcast r6 = new kotlinx.coroutines.channels.BufferedChannel$SendBroadcast
            r6.<init>(r8)
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = kotlinx.coroutines.channels.BufferedChannel.k
            java.lang.Object r1 = r1.get(r0)
            kotlinx.coroutines.channels.ChannelSegment r1 = (kotlinx.coroutines.channels.ChannelSegment) r1
        L1c:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = kotlinx.coroutines.channels.BufferedChannel.g
            long r2 = r2.getAndIncrement(r0)
            r4 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r4 = r4 & r2
            r10 = 0
            boolean r7 = r0.A(r2, r10)
            int r11 = kotlinx.coroutines.channels.BufferedChannelKt.b
            long r2 = (long) r11
            long r12 = r4 / r2
            long r2 = r4 % r2
            int r2 = (int) r2
            long r14 = r1.g
            int r3 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r3 == 0) goto L52
            kotlinx.coroutines.channels.ChannelSegment r3 = b(r0, r12, r1)
            if (r3 != 0) goto L51
            if (r7 == 0) goto L1c
        L43:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
            java.lang.Object r1 = kotlin.Result.m30constructorimpl(r1)
            r8.resumeWith(r1)
            goto L9f
        L51:
            r1 = r3
        L52:
            r3 = 0
            int r3 = i(r0, r1, r2, r3, r4, r6, r7)
            if (r3 == 0) goto L9b
            if (r3 == r9) goto L8d
            r12 = 2
            if (r3 == r12) goto L82
            r2 = 3
            if (r3 == r2) goto L7a
            r2 = 4
            if (r3 == r2) goto L6c
            r2 = 5
            if (r3 == r2) goto L68
            goto L1c
        L68:
            r1.a()
            goto L1c
        L6c:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = kotlinx.coroutines.channels.BufferedChannel.h
            long r2 = r2.get(r0)
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 >= 0) goto L43
            r1.a()
            goto L43
        L7a:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "unexpected"
            r1.<init>(r2)
            throw r1
        L82:
            if (r7 == 0) goto L88
            r1.h()
            goto L43
        L88:
            int r2 = r2 + r11
            r6.b(r1, r2)
            goto L9f
        L8d:
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE
            java.lang.Boolean r1 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r9)
            java.lang.Object r1 = kotlin.Result.m30constructorimpl(r1)
            r8.resumeWith(r1)
            goto L9f
        L9b:
            r1.a()
            goto L8d
        L9f:
            java.lang.Object r1 = r8.q()
            java.lang.Object r2 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r1 != r2) goto Lac
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r17)
        Lac:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.K(kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final boolean L(Object obj, Object obj2) {
        if (obj instanceof SelectInstance) {
            return ((SelectInstance) obj).c(this, obj2);
        }
        if (obj instanceof ReceiveCatching) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveCatching<E of kotlinx.coroutines.channels.BufferedChannel>");
            return BufferedChannelKt.a(((ReceiveCatching) obj).f21673c, new ChannelResult(obj2), null);
        }
        if (obj instanceof BufferedChannelIterator) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            BufferedChannelIterator bufferedChannelIterator = (BufferedChannelIterator) obj;
            CancellableContinuationImpl cancellableContinuationImpl = bufferedChannelIterator.f;
            Intrinsics.checkNotNull(cancellableContinuationImpl);
            bufferedChannelIterator.f = null;
            bufferedChannelIterator.f21618c = obj2;
            return BufferedChannelKt.a(cancellableContinuationImpl, Boolean.TRUE, null);
        }
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
            return BufferedChannelKt.a((CancellableContinuation) obj, obj2, null);
        }
        throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
    }

    public final boolean M(Object obj, ChannelSegment channelSegment, int i2) {
        TrySelectDetailedResult trySelectDetailedResult;
        if (obj instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            return BufferedChannelKt.a((CancellableContinuation) obj, Unit.INSTANCE, null);
        }
        if (obj instanceof SelectInstance) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            int l2 = ((SelectImplementation) obj).l(this, Unit.INSTANCE);
            Function3 function3 = SelectKt.f21929a;
            if (l2 != 0) {
                if (l2 != 1) {
                    if (l2 != 2) {
                        if (l2 == 3) {
                            trySelectDetailedResult = TrySelectDetailedResult.h;
                        } else {
                            throw new IllegalStateException(("Unexpected internal result: " + l2).toString());
                        }
                    } else {
                        trySelectDetailedResult = TrySelectDetailedResult.g;
                    }
                } else {
                    trySelectDetailedResult = TrySelectDetailedResult.f;
                }
            } else {
                trySelectDetailedResult = TrySelectDetailedResult.f21932c;
            }
            if (trySelectDetailedResult == TrySelectDetailedResult.f) {
                channelSegment.m(i2, null);
            }
            if (trySelectDetailedResult == TrySelectDetailedResult.f21932c) {
                return true;
            }
            return false;
        }
        if (obj instanceof SendBroadcast) {
            return BufferedChannelKt.a(((SendBroadcast) obj).f21619c, Boolean.TRUE, null);
        }
        throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
    }

    public final Object N(ChannelSegment channelSegment, int i2, long j2, Object obj) {
        Object k2 = channelSegment.k(i2);
        AtomicReferenceArray atomicReferenceArray = channelSegment.j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        if (k2 == null) {
            if (j2 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (channelSegment.j(i2, k2, obj)) {
                    t();
                    return BufferedChannelKt.m;
                }
            }
        } else if (k2 == BufferedChannelKt.d && channelSegment.j(i2, k2, BufferedChannelKt.i)) {
            t();
            Object obj2 = atomicReferenceArray.get(i2 * 2);
            channelSegment.m(i2, null);
            return obj2;
        }
        while (true) {
            Object k3 = channelSegment.k(i2);
            if (k3 != null && k3 != BufferedChannelKt.e) {
                if (k3 == BufferedChannelKt.d) {
                    if (channelSegment.j(i2, k3, BufferedChannelKt.i)) {
                        t();
                        Object obj3 = atomicReferenceArray.get(i2 * 2);
                        channelSegment.m(i2, null);
                        return obj3;
                    }
                } else {
                    Symbol symbol = BufferedChannelKt.j;
                    if (k3 == symbol) {
                        return BufferedChannelKt.o;
                    }
                    if (k3 == BufferedChannelKt.h) {
                        return BufferedChannelKt.o;
                    }
                    if (k3 == BufferedChannelKt.l) {
                        t();
                        return BufferedChannelKt.o;
                    }
                    if (k3 != BufferedChannelKt.g && channelSegment.j(i2, k3, BufferedChannelKt.f)) {
                        boolean z = k3 instanceof WaiterEB;
                        if (z) {
                            k3 = ((WaiterEB) k3).f21678a;
                        }
                        if (M(k3, channelSegment, i2)) {
                            channelSegment.n(i2, BufferedChannelKt.i);
                            t();
                            Object obj4 = atomicReferenceArray.get(i2 * 2);
                            channelSegment.m(i2, null);
                            return obj4;
                        }
                        channelSegment.n(i2, symbol);
                        channelSegment.h();
                        if (z) {
                            t();
                        }
                        return BufferedChannelKt.o;
                    }
                }
            } else if (j2 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (channelSegment.j(i2, k3, BufferedChannelKt.h)) {
                    t();
                    return BufferedChannelKt.o;
                }
            } else {
                if (obj == null) {
                    return BufferedChannelKt.n;
                }
                if (channelSegment.j(i2, k3, obj)) {
                    t();
                    return BufferedChannelKt.m;
                }
            }
        }
    }

    public final int O(ChannelSegment channelSegment, int i2, Object obj, long j2, Object obj2, boolean z) {
        while (true) {
            Object k2 = channelSegment.k(i2);
            if (k2 == null) {
                if (j(j2) && !z) {
                    if (channelSegment.j(i2, null, BufferedChannelKt.d)) {
                        break;
                    }
                } else if (z) {
                    if (channelSegment.j(i2, null, BufferedChannelKt.j)) {
                        channelSegment.h();
                        return 4;
                    }
                } else {
                    if (obj2 == null) {
                        return 3;
                    }
                    if (channelSegment.j(i2, null, obj2)) {
                        return 2;
                    }
                }
            } else if (k2 == BufferedChannelKt.e) {
                if (channelSegment.j(i2, k2, BufferedChannelKt.d)) {
                    break;
                }
            } else {
                Symbol symbol = BufferedChannelKt.k;
                if (k2 == symbol) {
                    channelSegment.m(i2, null);
                    return 5;
                }
                if (k2 == BufferedChannelKt.h) {
                    channelSegment.m(i2, null);
                    return 5;
                }
                if (k2 == BufferedChannelKt.l) {
                    channelSegment.m(i2, null);
                    s();
                    return 4;
                }
                channelSegment.m(i2, null);
                if (k2 instanceof WaiterEB) {
                    k2 = ((WaiterEB) k2).f21678a;
                }
                if (L(k2, obj)) {
                    channelSegment.n(i2, BufferedChannelKt.i);
                    return 0;
                }
                if (channelSegment.j.getAndSet((i2 * 2) + 1, symbol) != symbol) {
                    channelSegment.l(i2, true);
                }
                return 5;
            }
        }
        return 1;
    }

    public final void P(long j2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        boolean z;
        BufferedChannel<E> bufferedChannel = this;
        if (!bufferedChannel.D()) {
            while (true) {
                atomicLongFieldUpdater = i;
                if (atomicLongFieldUpdater.get(bufferedChannel) > j2) {
                    break;
                } else {
                    bufferedChannel = this;
                }
            }
            int i2 = BufferedChannelKt.f21630c;
            int i3 = 0;
            while (true) {
                AtomicLongFieldUpdater atomicLongFieldUpdater2 = j;
                if (i3 < i2) {
                    long j3 = atomicLongFieldUpdater.get(bufferedChannel);
                    if (j3 != (DurationKt.MAX_MILLIS & atomicLongFieldUpdater2.get(bufferedChannel)) || j3 != atomicLongFieldUpdater.get(bufferedChannel)) {
                        i3++;
                    } else {
                        return;
                    }
                } else {
                    while (true) {
                        long j4 = atomicLongFieldUpdater2.get(bufferedChannel);
                        if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j4, (j4 & DurationKt.MAX_MILLIS) + 4611686018427387904L)) {
                            break;
                        } else {
                            bufferedChannel = this;
                        }
                    }
                    while (true) {
                        long j5 = atomicLongFieldUpdater.get(bufferedChannel);
                        long j6 = atomicLongFieldUpdater2.get(bufferedChannel);
                        long j7 = j6 & DurationKt.MAX_MILLIS;
                        if ((j6 & 4611686018427387904L) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (j5 == j7 && j5 == atomicLongFieldUpdater.get(bufferedChannel)) {
                            break;
                        }
                        if (!z) {
                            bufferedChannel = this;
                            atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j6, 4611686018427387904L + j7);
                        } else {
                            bufferedChannel = this;
                        }
                    }
                    while (true) {
                        long j8 = atomicLongFieldUpdater2.get(bufferedChannel);
                        if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j8, j8 & DurationKt.MAX_MILLIS)) {
                            return;
                        } else {
                            bufferedChannel = this;
                        }
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final void a(CancellationException cancellationException) {
        k(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 c() {
        BufferedChannel$onReceive$1 bufferedChannel$onReceive$1 = BufferedChannel$onReceive$1.f21620c;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$1, 3);
        BufferedChannel$onReceive$2 bufferedChannel$onReceive$2 = BufferedChannel$onReceive$2.f21621c;
        Intrinsics.checkNotNull(bufferedChannel$onReceive$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceive$2, 3), this.f);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final SelectClause1 e() {
        BufferedChannel$onReceiveCatching$1 bufferedChannel$onReceiveCatching$1 = BufferedChannel$onReceiveCatching$1.f21622c;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$1, 3);
        BufferedChannel$onReceiveCatching$2 bufferedChannel$onReceiveCatching$2 = BufferedChannel$onReceiveCatching$2.f21623c;
        Intrinsics.checkNotNull(bufferedChannel$onReceiveCatching$2, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'param')] kotlin.Any?, @[ParameterName(name = 'clauseResult')] kotlin.Any?, kotlin.Any?>{ kotlinx.coroutines.selects.SelectKt.ProcessResultFunction }");
        return new SelectClause1Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(bufferedChannel$onReceiveCatching$2, 3), this.f);
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object g() {
        ChannelSegment channelSegment;
        Waiter waiter;
        AtomicLongFieldUpdater atomicLongFieldUpdater = h;
        long j2 = atomicLongFieldUpdater.get(this);
        long j3 = g.get(this);
        if (A(j3, true)) {
            return new ChannelResult.Closed(v());
        }
        long j4 = j3 & 1152921504606846975L;
        ChannelResult.Failed failed = ChannelResult.b;
        if (j2 >= j4) {
            return failed;
        }
        Object obj = BufferedChannelKt.k;
        ChannelSegment channelSegment2 = (ChannelSegment) l.get(this);
        while (!B()) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j5 = BufferedChannelKt.b;
            long j6 = andIncrement / j5;
            int i2 = (int) (andIncrement % j5);
            if (channelSegment2.g != j6) {
                ChannelSegment u = u(j6, channelSegment2);
                if (u == null) {
                    continue;
                } else {
                    channelSegment = u;
                }
            } else {
                channelSegment = channelSegment2;
            }
            Object N = N(channelSegment, i2, andIncrement, obj);
            ChannelSegment channelSegment3 = channelSegment;
            if (N == BufferedChannelKt.m) {
                if (obj instanceof Waiter) {
                    waiter = (Waiter) obj;
                } else {
                    waiter = null;
                }
                if (waiter != null) {
                    waiter.b(channelSegment3, i2);
                }
                P(andIncrement);
                channelSegment3.h();
                return failed;
            }
            if (N == BufferedChannelKt.o) {
                if (andIncrement < y()) {
                    channelSegment3.a();
                }
                channelSegment2 = channelSegment3;
            } else {
                if (N != BufferedChannelKt.n) {
                    channelSegment3.a();
                    return N;
                }
                throw new IllegalStateException("unexpected");
            }
        }
        return new ChannelResult.Closed(v());
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final ChannelIterator iterator() {
        return new BufferedChannelIterator();
    }

    public final boolean j(long j2) {
        if (j2 >= i.get(this) && j2 >= h.get(this) + this.f21617c) {
            return false;
        }
        return true;
    }

    public void k(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new CancellationException("Channel was cancelled");
        }
        l(cancellationException, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002d, code lost:
    
        if (r6.compareAndSet(r12, r5, r13) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0035, code lost:
    
        if (r6.get(r12) == r5) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
    
        if (r14 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
    
        r5 = r3.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
    
        if (r3.compareAndSet(r4, r5, (3 << 60) + (r5 & 1152921504606846975L)) == false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        s();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006c, code lost:
    
        if (r10 == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
    
        r13 = kotlinx.coroutines.channels.BufferedChannel.o;
        r14 = r13.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r14 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
    
        r0 = kotlinx.coroutines.channels.BufferedChannelKt.q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007f, code lost:
    
        if (r13.compareAndSet(r12, r14, r0) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0098, code lost:
    
        if (r13.get(r12) == r14) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000a, code lost:
    
        if (r14 != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0081, code lost:
    
        if (r14 != null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0084, code lost:
    
        r13 = (kotlin.jvm.functions.Function1) kotlin.jvm.internal.TypeIntrinsics.beforeCheckcastToFunctionOfArity(r14, 1);
        ((kotlin.jvm.functions.Function1) r14).invoke(v());
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0093, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0079, code lost:
    
        r0 = kotlinx.coroutines.channels.BufferedChannelKt.r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009b, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        r5 = r3.get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x004c, code lost:
    
        r5 = r3.get(r12);
        r13 = (int) (r5 >> 60);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0053, code lost:
    
        if (r13 == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0055, code lost:
    
        if (r13 == 1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0058, code lost:
    
        r13 = r5 & 1152921504606846975L;
        r7 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0067, code lost:
    
        if (r3.compareAndSet(r4, r5, (r7 << 60) + r13) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (((int) (r5 >> 60)) != 0) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x005e, code lost:
    
        r13 = r5 & 1152921504606846975L;
        r7 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x002f, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0024, code lost:
    
        r4 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
    
        r4 = kotlinx.coroutines.channels.BufferedChannelKt.f21629a;
        r4 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r3.compareAndSet(r4, r5, (r5 & 1152921504606846975L) + (1 << 60)) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        r5 = kotlinx.coroutines.channels.BufferedChannelKt.s;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
    
        r6 = kotlinx.coroutines.channels.BufferedChannel.n;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean l(java.lang.Throwable r13, boolean r14) {
        /*
            r12 = this;
            r0 = 60
            r1 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.channels.BufferedChannel.g
            r9 = 1
            if (r14 == 0) goto L24
        Lc:
            long r5 = r3.get(r12)
            long r7 = r5 >> r0
            int r4 = (int) r7
            if (r4 != 0) goto L24
            long r7 = r5 & r1
            kotlinx.coroutines.channels.ChannelSegment r4 = kotlinx.coroutines.channels.BufferedChannelKt.f21629a
            long r10 = (long) r9
            long r10 = r10 << r0
            long r7 = r7 + r10
            r4 = r12
            boolean r5 = r3.compareAndSet(r4, r5, r7)
            if (r5 == 0) goto Lc
            goto L25
        L24:
            r4 = r12
        L25:
            kotlinx.coroutines.internal.Symbol r5 = kotlinx.coroutines.channels.BufferedChannelKt.s
        L27:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = kotlinx.coroutines.channels.BufferedChannel.n
            boolean r7 = r6.compareAndSet(r12, r5, r13)
            if (r7 == 0) goto L31
            r10 = r9
            goto L39
        L31:
            java.lang.Object r6 = r6.get(r12)
            if (r6 == r5) goto L27
            r13 = 0
            r10 = r13
        L39:
            r11 = 3
            if (r14 == 0) goto L4c
        L3c:
            long r5 = r3.get(r12)
            long r13 = r5 & r1
            long r7 = (long) r11
            long r7 = r7 << r0
            long r7 = r7 + r13
            boolean r13 = r3.compareAndSet(r4, r5, r7)
            if (r13 == 0) goto L3c
            goto L69
        L4c:
            long r5 = r3.get(r12)
            long r13 = r5 >> r0
            int r13 = (int) r13
            if (r13 == 0) goto L5e
            if (r13 == r9) goto L58
            goto L69
        L58:
            long r13 = r5 & r1
            long r7 = (long) r11
        L5b:
            long r7 = r7 << r0
            long r7 = r7 + r13
            goto L63
        L5e:
            long r13 = r5 & r1
            r7 = 2
            long r7 = (long) r7
            goto L5b
        L63:
            boolean r13 = r3.compareAndSet(r4, r5, r7)
            if (r13 == 0) goto L4c
        L69:
            r12.s()
            if (r10 == 0) goto L9b
        L6e:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r13 = kotlinx.coroutines.channels.BufferedChannel.o
            java.lang.Object r14 = r13.get(r12)
            if (r14 != 0) goto L79
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.channels.BufferedChannelKt.q
            goto L7b
        L79:
            kotlinx.coroutines.internal.Symbol r0 = kotlinx.coroutines.channels.BufferedChannelKt.r
        L7b:
            boolean r1 = r13.compareAndSet(r12, r14, r0)
            if (r1 == 0) goto L94
            if (r14 != 0) goto L84
            goto L9b
        L84:
            java.lang.Object r13 = kotlin.jvm.internal.TypeIntrinsics.beforeCheckcastToFunctionOfArity(r14, r9)
            kotlin.jvm.functions.Function1 r13 = (kotlin.jvm.functions.Function1) r13
            kotlin.jvm.functions.Function1 r14 = (kotlin.jvm.functions.Function1) r14
            java.lang.Throwable r13 = r12.v()
            r14.invoke(r13)
            return r10
        L94:
            java.lang.Object r1 = r13.get(r12)
            if (r1 == r14) goto L7b
            goto L6e
        L9b:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.l(java.lang.Throwable, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x008d, code lost:
    
        r1 = (kotlinx.coroutines.channels.ChannelSegment) ((kotlinx.coroutines.internal.ConcurrentLinkedListNode) kotlinx.coroutines.internal.ConcurrentLinkedListNode.f.get(r1));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.channels.ChannelSegment m(long r13) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.m(long):kotlinx.coroutines.channels.ChannelSegment");
    }

    public final void n(long j2) {
        ChannelSegment channelSegment = (ChannelSegment) l.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = h;
            long j3 = atomicLongFieldUpdater.get(this);
            if (j2 < Math.max(this.f21617c + j3, i.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j3, 1 + j3)) {
                long j4 = BufferedChannelKt.b;
                long j5 = j3 / j4;
                int i2 = (int) (j3 % j4);
                if (channelSegment.g != j5) {
                    ChannelSegment u = u(j5, channelSegment);
                    if (u != null) {
                        channelSegment = u;
                    }
                }
                ChannelSegment channelSegment2 = channelSegment;
                if (N(channelSegment2, i2, j3, null) == BufferedChannelKt.o) {
                    if (j3 < y()) {
                        channelSegment2.a();
                    }
                } else {
                    channelSegment2.a();
                }
                channelSegment = channelSegment2;
            }
        }
    }

    @Override // kotlinx.coroutines.channels.ReceiveChannel
    public final Object o(ContinuationImpl continuationImpl) {
        return G(this, continuationImpl);
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public final void p(Function1 function1) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = o;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, function1)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            Symbol symbol = BufferedChannelKt.q;
            if (obj == symbol) {
                Symbol symbol2 = BufferedChannelKt.r;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, symbol, symbol2)) {
                    if (atomicReferenceFieldUpdater.get(this) != symbol) {
                        break;
                    }
                }
                function1.invoke(v());
                return;
            }
            if (obj == BufferedChannelKt.r) {
                throw new IllegalStateException("Another handler was already registered and successfully invoked");
            }
            throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
        }
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public Object q(Object obj) {
        boolean z;
        Waiter waiter;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        long j2 = atomicLongFieldUpdater.get(this);
        long j3 = 1152921504606846975L;
        boolean z2 = false;
        if (A(j2, false)) {
            z = false;
        } else {
            z = !j(j2 & 1152921504606846975L);
        }
        ChannelResult.Failed failed = ChannelResult.b;
        if (z) {
            return failed;
        }
        Object obj2 = BufferedChannelKt.j;
        ChannelSegment channelSegment = (ChannelSegment) k.get(this);
        while (true) {
            long andIncrement = atomicLongFieldUpdater.getAndIncrement(this);
            long j4 = andIncrement & j3;
            boolean A = A(andIncrement, z2);
            int i2 = BufferedChannelKt.b;
            long j5 = i2;
            long j6 = j4 / j5;
            int i3 = (int) (j4 % j5);
            ChannelResult.Failed failed2 = failed;
            if (channelSegment.g != j6) {
                ChannelSegment b = b(this, j6, channelSegment);
                if (b == null) {
                    if (A) {
                        return new ChannelResult.Closed(x());
                    }
                    failed = failed2;
                    j3 = 1152921504606846975L;
                    z2 = false;
                } else {
                    channelSegment = b;
                }
            }
            int i4 = i(this, channelSegment, i3, obj, j4, obj2, A);
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 3) {
                            if (i4 != 4) {
                                if (i4 == 5) {
                                    channelSegment.a();
                                }
                                failed = failed2;
                                j3 = 1152921504606846975L;
                                z2 = false;
                            } else {
                                if (j4 < h.get(this)) {
                                    channelSegment.a();
                                }
                                return new ChannelResult.Closed(x());
                            }
                        } else {
                            throw new IllegalStateException("unexpected");
                        }
                    } else {
                        if (A) {
                            channelSegment.h();
                            return new ChannelResult.Closed(x());
                        }
                        if (obj2 instanceof Waiter) {
                            waiter = (Waiter) obj2;
                        } else {
                            waiter = null;
                        }
                        if (waiter != null) {
                            waiter.b(channelSegment, i3 + i2);
                        }
                        channelSegment.h();
                        return failed2;
                    }
                } else {
                    return Unit.INSTANCE;
                }
            } else {
                channelSegment.a();
                return Unit.INSTANCE;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x00c4, code lost:
    
        d(r1, r4, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01ae, code lost:
    
        return kotlin.Unit.INSTANCE;
     */
    /* JADX WARN: Removed duplicated region for block: B:76:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0190 A[RETURN] */
    @Override // kotlinx.coroutines.channels.SendChannel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object r(java.lang.Object r23, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.r(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.channels.SendChannel
    public boolean s() {
        return A(g.get(this), false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:0x00bf, code lost:
    
        if ((r0.addAndGet(r15, (r11 * r13) - r8) & 4611686018427387904L) != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x00c8, code lost:
    
        if ((r0.get(r15) & 4611686018427387904L) == 0) goto L144;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t() {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.t():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x01d4, code lost:
    
        r16 = r7;
        r3 = (kotlinx.coroutines.channels.ChannelSegment) r3.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01dd, code lost:
    
        if (r3 != null) goto L100;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 521
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    public final ChannelSegment u(long j2, ChannelSegment channelSegment) {
        Object a2;
        long j3;
        ChannelSegment channelSegment2 = BufferedChannelKt.f21629a;
        BufferedChannelKt$createSegmentFunction$1 bufferedChannelKt$createSegmentFunction$1 = BufferedChannelKt$createSegmentFunction$1.f21631c;
        loop0: while (true) {
            a2 = ConcurrentLinkedListKt.a(channelSegment, j2, bufferedChannelKt$createSegmentFunction$1);
            if (!SegmentOrClosed.b(a2)) {
                Segment a3 = SegmentOrClosed.a(a2);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = l;
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.g >= a3.g) {
                        break loop0;
                    }
                    if (!a3.i()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, a3)) {
                        if (atomicReferenceFieldUpdater.get(this) != segment) {
                            if (a3.e()) {
                                a3.d();
                            }
                        }
                    }
                    if (segment.e()) {
                        segment.d();
                    }
                }
            } else {
                break;
            }
        }
        if (SegmentOrClosed.b(a2)) {
            s();
            if (channelSegment.g * BufferedChannelKt.b < y()) {
                channelSegment.a();
                return null;
            }
        } else {
            ChannelSegment channelSegment3 = (ChannelSegment) SegmentOrClosed.a(a2);
            long j4 = channelSegment3.g;
            if (!D() && j2 <= i.get(this) / BufferedChannelKt.b) {
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = m;
                    Segment segment2 = (Segment) atomicReferenceFieldUpdater2.get(this);
                    if (segment2.g >= j4) {
                        break;
                    }
                    if (!channelSegment3.i()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, segment2, channelSegment3)) {
                        if (atomicReferenceFieldUpdater2.get(this) != segment2) {
                            if (channelSegment3.e()) {
                                channelSegment3.d();
                            }
                        }
                    }
                    if (segment2.e()) {
                        segment2.d();
                    }
                }
            }
            if (j4 > j2) {
                long j5 = j4 * BufferedChannelKt.b;
                do {
                    j3 = h.get(this);
                    if (j3 >= j5) {
                        break;
                    }
                } while (!h.compareAndSet(this, j3, j5));
                if (j4 * BufferedChannelKt.b < y()) {
                    channelSegment3.a();
                }
            } else {
                return channelSegment3;
            }
        }
        return null;
    }

    public final Throwable v() {
        return (Throwable) n.get(this);
    }

    public final Throwable w() {
        Throwable v = v();
        if (v == null) {
            return new NoSuchElementException("Channel was closed");
        }
        return v;
    }

    public final Throwable x() {
        Throwable v = v();
        if (v == null) {
            return new IllegalStateException("Channel was closed");
        }
        return v;
    }

    public final long y() {
        return g.get(this) & 1152921504606846975L;
    }
}
