package kotlinx.coroutines.flow;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\b\u0012\u0004\u0012\u00028\u00000\u00052\b\u0012\u0004\u0012\u00028\u00000\u0006R\u0011\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/flow/StateFlowImpl;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/StateFlowSlot;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lkotlinx/coroutines/flow/CancellableFlow;", "Lkotlinx/coroutines/flow/internal/FusibleFlow;", "Lkotlinx/atomicfu/AtomicRef;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "_state", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 6 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,424:1\n14#2:425\n14#2:439\n24#3,4:426\n24#3,4:433\n16#4:430\n16#4:437\n13309#5,2:431\n326#6:438\n*S KotlinDebug\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowImpl\n*L\n311#1:425\n392#1:439\n320#1:426,4\n348#1:433,4\n320#1:430\n348#1:437\n344#1:431,2\n381#1:438\n*E\n"})
/* loaded from: classes4.dex */
public final class StateFlowImpl<T> extends AbstractSharedFlow<StateFlowSlot> implements MutableStateFlow<T>, CancellableFlow<T>, FusibleFlow<T> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater i = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;
    public int h;

    public StateFlowImpl(Object obj) {
        this._state$volatile = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00b8, code lost:
    
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bc, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r11, r12) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00fc, code lost:
    
        if (r12 == r1) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0088, code lost:
    
        if (((kotlinx.coroutines.flow.SubscribedFlowCollector) r11).a(r0) == r1) goto L59;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00aa A[Catch: all -> 0x003e, TryCatch #1 {all -> 0x003e, blocks: (B:13:0x003a, B:14:0x00a2, B:16:0x00aa, B:19:0x00b1, B:20:0x00b5, B:24:0x00b8, B:26:0x00d9, B:29:0x00ec, B:32:0x00be, B:35:0x00c5, B:43:0x0057, B:45:0x0068, B:46:0x0093), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ec A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #1 {all -> 0x003e, blocks: (B:13:0x003a, B:14:0x00a2, B:16:0x00aa, B:19:0x00b1, B:20:0x00b5, B:24:0x00b8, B:26:0x00d9, B:29:0x00ec, B:32:0x00be, B:35:0x00c5, B:43:0x0057, B:45:0x0068, B:46:0x0093), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v15 */
    /* JADX WARN: Type inference failed for: r6v16 */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00eb -> B:14:0x00a2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00fc -> B:14:0x00a2). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.FlowCollector r11, kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.a(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object b(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot d() {
        return new Object();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] e() {
        return new StateFlowSlot[2];
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public final Object getValue() {
        Object obj = i.get(this);
        if (obj == NullSurrogateKt.f21853a) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public final void setValue(Object obj) {
        int i2;
        AbstractSharedFlowSlot[] abstractSharedFlowSlotArr;
        Symbol symbol;
        if (obj == null) {
            obj = NullSurrogateKt.f21853a;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = i;
            if (Intrinsics.areEqual(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i3 = this.h;
            if ((i3 & 1) == 0) {
                int i4 = i3 + 1;
                this.h = i4;
                AbstractSharedFlowSlot[] abstractSharedFlowSlotArr2 = this.f21827c;
                Unit unit = Unit.INSTANCE;
                while (true) {
                    StateFlowSlot[] stateFlowSlotArr = (StateFlowSlot[]) abstractSharedFlowSlotArr2;
                    if (stateFlowSlotArr != null) {
                        for (StateFlowSlot stateFlowSlot : stateFlowSlotArr) {
                            if (stateFlowSlot != null) {
                                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = StateFlowSlot.f21822a;
                                while (true) {
                                    Object obj2 = atomicReferenceFieldUpdater2.get(stateFlowSlot);
                                    if (obj2 != null && obj2 != (symbol = StateFlowKt.b)) {
                                        Symbol symbol2 = StateFlowKt.f21821a;
                                        if (obj2 == symbol2) {
                                            while (!atomicReferenceFieldUpdater2.compareAndSet(stateFlowSlot, obj2, symbol)) {
                                                if (atomicReferenceFieldUpdater2.get(stateFlowSlot) != obj2) {
                                                    break;
                                                }
                                            }
                                        } else {
                                            while (!atomicReferenceFieldUpdater2.compareAndSet(stateFlowSlot, obj2, symbol2)) {
                                                if (atomicReferenceFieldUpdater2.get(stateFlowSlot) != obj2) {
                                                    break;
                                                }
                                            }
                                            Result.Companion companion = Result.INSTANCE;
                                            ((CancellableContinuationImpl) obj2).resumeWith(Result.m30constructorimpl(Unit.INSTANCE));
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    synchronized (this) {
                        i2 = this.h;
                        if (i2 == i4) {
                            this.h = i4 + 1;
                            return;
                        } else {
                            abstractSharedFlowSlotArr = this.f21827c;
                            Unit unit2 = Unit.INSTANCE;
                        }
                    }
                    abstractSharedFlowSlotArr2 = abstractSharedFlowSlotArr;
                    i4 = i2;
                }
            } else {
                this.h = i3 + 2;
            }
        }
    }
}
