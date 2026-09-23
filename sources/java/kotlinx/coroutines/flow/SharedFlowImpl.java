package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006:\u0001\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/SharedFlowSlot;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "Emitter", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,741:1\n24#2,4:742\n24#2,4:748\n24#2,4:770\n24#2,4:777\n24#2,4:789\n24#2,4:803\n24#2,4:817\n16#3:746\n16#3:752\n16#3:774\n16#3:781\n16#3:793\n16#3:807\n16#3:821\n326#4:747\n1#5:753\n90#6,2:754\n92#6,2:757\n94#6:760\n90#6,2:782\n92#6,2:785\n94#6:788\n90#6,2:810\n92#6,2:813\n94#6:816\n13309#7:756\n13310#7:759\n13309#7:784\n13310#7:787\n13309#7:812\n13310#7:815\n310#8,9:761\n319#8,2:775\n310#8,9:794\n319#8,2:808\n*S KotlinDebug\n*F\n+ 1 SharedFlow.kt\nkotlinx/coroutines/flow/SharedFlowImpl\n*L\n361#1:742,4\n401#1:748,4\n495#1:770,4\n516#1:777,4\n636#1:789,4\n671#1:803,4\n699#1:817,4\n361#1:746\n401#1:752\n495#1:774\n516#1:781\n636#1:793\n671#1:807\n699#1:821\n383#1:747\n463#1:754,2\n463#1:757,2\n463#1:760\n539#1:782,2\n539#1:785,2\n539#1:788\n686#1:810,2\n686#1:813,2\n686#1:816\n463#1:756\n463#1:759\n539#1:784\n539#1:787\n686#1:812\n686#1:815\n493#1:761,9\n493#1:775,2\n670#1:794,9\n670#1:808,2\n*E\n"})
/* loaded from: classes4.dex */
public class SharedFlowImpl<T> extends AbstractSharedFlow<SharedFlowSlot> implements MutableSharedFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public Object[] h;
    public long i;
    public long j;
    public int k;
    public int l;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/flow/SharedFlowImpl$Emitter;", "Lkotlinx/coroutines/DisposableHandle;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Emitter implements DisposableHandle {
        @Override // kotlinx.coroutines.DisposableHandle
        public final void c() {
            throw null;
        }
    }

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BufferOverflow.values().length];
            try {
                BufferOverflow bufferOverflow = BufferOverflow.f21616c;
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                BufferOverflow bufferOverflow2 = BufferOverflow.f21616c;
                iArr[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                BufferOverflow bufferOverflow3 = BufferOverflow.f21616c;
                iArr[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|(3:(6:(1:(1:11)(2:46|47))(1:48)|12|13|14|15|(2:16|(3:38|39|(2:41|42)(2:43|37))(4:18|(1:23)|32|(1:34)(2:36|37))))(4:49|50|51|52)|30|31)(5:58|59|60|(1:62)|65)|53|54|15|(3:16|(0)(0)|37)))|68|6|(0)(0)|53|54|15|(3:16|(0)(0)|37)) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bc, code lost:
    
        throw r2.j();
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ab, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ac, code lost:
    
        r5 = r8;
        r8 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cd, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x007b, code lost:
    
        if (((kotlinx.coroutines.flow.SubscribedFlowCollector) r9).a(r0) == r1) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object h(kotlinx.coroutines.flow.SharedFlowImpl r8, kotlinx.coroutines.flow.FlowCollector r9, kotlin.coroutines.Continuation r10) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.SharedFlowImpl.h(kotlinx.coroutines.flow.SharedFlowImpl, kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.Flow
    public final Object a(FlowCollector flowCollector, Continuation continuation) {
        return h(this, flowCollector, continuation);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object b(Object obj, Continuation continuation) {
        n(obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot, kotlinx.coroutines.flow.SharedFlowSlot, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot d() {
        ?? obj = new Object();
        obj.f21812a = -1L;
        return obj;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] e() {
        return new SharedFlowSlot[2];
    }

    public final Object g(SharedFlowSlot sharedFlowSlot, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.intercepted(continuation));
        cancellableContinuationImpl.r();
        synchronized (this) {
            try {
                if (p(sharedFlowSlot) < 0) {
                    sharedFlowSlot.b = cancellableContinuationImpl;
                } else {
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuationImpl.resumeWith(Result.m30constructorimpl(Unit.INSTANCE));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Object q = cancellableContinuationImpl.q();
        if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (q == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            return q;
        }
        return Unit.INSTANCE;
    }

    public final void i() {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Object[] objArr = this.h;
        Intrinsics.checkNotNull(objArr);
        SharedFlowKt.b(objArr, l(), null);
        this.k--;
        long l = l() + 1;
        if (this.i < l) {
            this.i = l;
        }
        if (this.j < l) {
            if (this.f != 0 && (abstractSharedFlowSlotArr = this.f21827c) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        SharedFlowSlot sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot;
                        long j = sharedFlowSlot.f21812a;
                        if (j >= 0 && j < l) {
                            sharedFlowSlot.f21812a = l;
                        }
                    }
                }
            }
            this.j = l;
        }
    }

    public final void j(Object obj) {
        int i = this.k + this.l;
        Object[] objArr = this.h;
        if (objArr == null) {
            objArr = m(null, 0, 2);
        } else if (i >= objArr.length) {
            objArr = m(objArr, i, objArr.length * 2);
        }
        SharedFlowKt.b(objArr, l() + i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object[], java.lang.Object] */
    public final Continuation[] k(Continuation[] continuationArr) {
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        SharedFlowSlot sharedFlowSlot;
        CancellableContinuationImpl cancellableContinuationImpl;
        int length = continuationArr.length;
        if (this.f != 0 && (abstractSharedFlowSlotArr = this.f21827c) != null) {
            int length2 = abstractSharedFlowSlotArr.length;
            int i = 0;
            continuationArr = continuationArr;
            while (i < length2) {
                AbstractSharedFlowSlot abstractSharedFlowSlot = abstractSharedFlowSlotArr[i];
                if (abstractSharedFlowSlot != null && (cancellableContinuationImpl = (sharedFlowSlot = (SharedFlowSlot) abstractSharedFlowSlot).b) != null && p(sharedFlowSlot) >= 0) {
                    int length3 = continuationArr.length;
                    continuationArr = continuationArr;
                    if (length >= length3) {
                        ?? copyOf = Arrays.copyOf(continuationArr, Math.max(2, continuationArr.length * 2));
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        continuationArr = copyOf;
                    }
                    continuationArr[length] = cancellableContinuationImpl;
                    sharedFlowSlot.b = null;
                    length++;
                }
                i++;
                continuationArr = continuationArr;
            }
        }
        return continuationArr;
    }

    public final long l() {
        return Math.min(this.j, this.i);
    }

    public final Object[] m(Object[] objArr, int i, int i2) {
        if (i2 > 0) {
            Object[] objArr2 = new Object[i2];
            this.h = objArr2;
            if (objArr != null) {
                long l = l();
                for (int i3 = 0; i3 < i; i3++) {
                    long j = i3 + l;
                    SharedFlowKt.b(objArr2, j, objArr[((int) j) & (objArr.length - 1)]);
                }
            }
            return objArr2;
        }
        throw new IllegalStateException("Buffer size overflow");
    }

    public final boolean n(Object obj) {
        Continuation[] k;
        Continuation[] continuationArr = AbstractSharedFlowKt.f21828a;
        synchronized (this) {
            o(obj);
            k = k(continuationArr);
        }
        for (Continuation continuation : k) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m30constructorimpl(Unit.INSTANCE));
            }
        }
        return true;
    }

    public final boolean o(Object obj) {
        if (this.f == 0) {
            j(obj);
            int i = this.k + 1;
            this.k = i;
            if (i > 1) {
                i();
            }
            this.j = l() + this.k;
            return true;
        }
        if (this.k >= Integer.MAX_VALUE && this.j <= this.i) {
            BufferOverflow bufferOverflow = BufferOverflow.f21616c;
        }
        j(obj);
        int i2 = this.k + 1;
        this.k = i2;
        if (i2 > Integer.MAX_VALUE) {
            i();
        }
        long l = l() + this.k;
        long j = this.i;
        if (((int) (l - j)) > 1) {
            r(1 + j, this.j, l() + this.k, l() + this.k + this.l);
        }
        return true;
    }

    public final long p(SharedFlowSlot sharedFlowSlot) {
        long j = sharedFlowSlot.f21812a;
        if (j < l() + this.k) {
            return j;
        }
        return -1L;
    }

    public final Object q(SharedFlowSlot sharedFlowSlot) {
        Object obj;
        Continuation[] continuationArr = AbstractSharedFlowKt.f21828a;
        synchronized (this) {
            try {
                long p = p(sharedFlowSlot);
                if (p < 0) {
                    obj = SharedFlowKt.f21811a;
                } else {
                    long j = sharedFlowSlot.f21812a;
                    Object[] objArr = this.h;
                    Intrinsics.checkNotNull(objArr);
                    Object a2 = SharedFlowKt.a(objArr, p);
                    if (a2 instanceof Emitter) {
                        a2 = null;
                    }
                    sharedFlowSlot.f21812a = p + 1;
                    Object obj2 = a2;
                    continuationArr = s(j);
                    obj = obj2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArr) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m30constructorimpl(Unit.INSTANCE));
            }
        }
        return obj;
    }

    public final void r(long j, long j2, long j3, long j4) {
        long min = Math.min(j2, j);
        for (long l = l(); l < min; l++) {
            Object[] objArr = this.h;
            Intrinsics.checkNotNull(objArr);
            SharedFlowKt.b(objArr, l, null);
        }
        this.i = j;
        this.j = j2;
        this.k = (int) (j3 - min);
        this.l = (int) (j4 - j3);
    }

    public final Continuation[] s(long j) {
        int i;
        long j2;
        Continuation[] continuationArr;
        long j3;
        long j4;
        Continuation[] continuationArr2;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        long j5 = this.j;
        Continuation[] continuationArr3 = AbstractSharedFlowKt.f21828a;
        if (j <= j5) {
            long l = l();
            long j6 = this.k + l;
            int i2 = 0;
            if (this.f != 0 && (abstractSharedFlowSlotArr = this.f21827c) != null) {
                for (AbstractSharedFlowSlot abstractSharedFlowSlot : abstractSharedFlowSlotArr) {
                    if (abstractSharedFlowSlot != null) {
                        long j7 = ((SharedFlowSlot) abstractSharedFlowSlot).f21812a;
                        if (j7 >= 0 && j7 < j6) {
                            j6 = j7;
                        }
                    }
                }
            }
            if (j6 > this.j) {
                long l2 = l() + this.k;
                if (this.f > 0) {
                    i = Math.min(this.l, Integer.MAX_VALUE - ((int) (l2 - j6)));
                } else {
                    i = this.l;
                }
                long j8 = this.l + l2;
                if (i > 0) {
                    Continuation[] continuationArr4 = new Continuation[i];
                    Object[] objArr = this.h;
                    Intrinsics.checkNotNull(objArr);
                    long j9 = l2;
                    while (true) {
                        if (l2 < j8) {
                            Object a2 = SharedFlowKt.a(objArr, l2);
                            continuationArr2 = continuationArr4;
                            Symbol symbol = SharedFlowKt.f21811a;
                            j2 = l;
                            if (a2 != symbol) {
                                Intrinsics.checkNotNull(a2, "null cannot be cast to non-null type kotlinx.coroutines.flow.SharedFlowImpl.Emitter");
                                int i3 = i2 + 1;
                                ((Emitter) a2).getClass();
                                continuationArr2[i2] = null;
                                SharedFlowKt.b(objArr, l2, symbol);
                                SharedFlowKt.b(objArr, j9, null);
                                j9++;
                                if (i3 >= i) {
                                    break;
                                }
                                i2 = i3;
                            }
                            l2++;
                            continuationArr4 = continuationArr2;
                            l = j2;
                        } else {
                            continuationArr2 = continuationArr4;
                            j2 = l;
                            break;
                        }
                    }
                    continuationArr = continuationArr2;
                    j3 = j6;
                    j4 = j9;
                } else {
                    j2 = l;
                    continuationArr = continuationArr3;
                    j3 = j6;
                    j4 = l2;
                }
                int i4 = (int) (j4 - j2);
                if (this.f == 0) {
                    j3 = j4;
                }
                r(Math.max(this.i, j4 - Math.min(1, i4)), j3, j4, j8);
                Object[] objArr2 = this.h;
                Intrinsics.checkNotNull(objArr2);
                while (this.l > 0 && SharedFlowKt.a(objArr2, (l() + (this.k + this.l)) - 1) == SharedFlowKt.f21811a) {
                    this.l--;
                    SharedFlowKt.b(objArr2, l() + this.k + this.l, null);
                }
                if (continuationArr.length == 0) {
                    return continuationArr;
                }
                return k(continuationArr);
            }
        }
        return continuationArr3;
    }
}
