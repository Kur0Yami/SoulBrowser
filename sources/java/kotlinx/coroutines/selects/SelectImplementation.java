package kotlinx.coroutines.selects;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0011\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0004:\u0001\bR\u0011\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation;", "R", "Lkotlinx/coroutines/CancelHandler;", "Lkotlinx/coroutines/selects/SelectBuilder;", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "Lkotlinx/atomicfu/AtomicRef;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "state", "ClauseData", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 6 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,879:1\n1#2:880\n2624#3,3:881\n1855#3,2:894\n1855#3,2:902\n1855#3,2:904\n310#4,9:884\n319#4,2:896\n15#5:893\n149#6,4:898\n*S KotlinDebug\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation\n*L\n512#1:881,3\n576#1:894,2\n732#1:902,2\n757#1:904,2\n552#1:884,9\n552#1:896,2\n568#1:893\n717#1:898,4\n*E\n"})
/* loaded from: classes4.dex */
public class SelectImplementation<R> extends CancelHandler implements SelectBuilder<R>, SelectInstanceInternal<R> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");

    /* renamed from: c, reason: collision with root package name */
    public final CoroutineContext f21924c;
    public Object g;
    private volatile /* synthetic */ Object state$volatile = SelectKt.b;
    public ArrayList f = new ArrayList(2);
    public int h = -1;
    public Object i = SelectKt.e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/selects/SelectImplementation$ClauseData;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSelect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Select.kt\nkotlinx/coroutines/selects/SelectImplementation$ClauseData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,879:1\n1#2:880\n*E\n"})
    /* loaded from: classes4.dex */
    public final class ClauseData {

        /* renamed from: a, reason: collision with root package name */
        public final Object f21925a;
        public final Function3 b;

        /* renamed from: c, reason: collision with root package name */
        public final Function3 f21926c;
        public final Object d;
        public final SuspendLambda e;
        public final Function3 f;
        public Object g;
        public int h = -1;

        public ClauseData(Object obj, Function3 function3, Function3 function32, Object obj2, SuspendLambda suspendLambda, Function3 function33) {
            this.f21925a = obj;
            this.b = function3;
            this.f21926c = function32;
            this.d = obj2;
            this.e = suspendLambda;
            this.f = function33;
        }

        public final Function1 a(SelectImplementation selectImplementation, Object obj) {
            Function3 function3 = this.f;
            if (function3 != null) {
                return (Function1) function3.invoke(selectImplementation, this.d, obj);
            }
            return null;
        }

        public final void b() {
            DisposableHandle disposableHandle;
            Object obj = this.g;
            if (obj instanceof Segment) {
                ((Segment) obj).g(this.h, SelectImplementation.this.f21924c);
                return;
            }
            if (obj instanceof DisposableHandle) {
                disposableHandle = (DisposableHandle) obj;
            } else {
                disposableHandle = null;
            }
            if (disposableHandle != null) {
                disposableHandle.c();
            }
        }
    }

    public SelectImplementation(CoroutineContext coroutineContext) {
        this.f21924c = coroutineContext;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final void a(DisposableHandle disposableHandle) {
        this.g = disposableHandle;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void b(Segment segment, int i) {
        this.g = segment;
        this.h = i;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final boolean c(Object obj, Object obj2) {
        if (l(obj, obj2) == 0) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    public final void d(Object obj) {
        this.i = obj;
    }

    @Override // kotlinx.coroutines.CancelHandlerBase
    public final void e(Throwable th) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != SelectKt.f21930c) {
                Symbol symbol = SelectKt.d;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                ArrayList arrayList = this.f;
                if (arrayList == null) {
                    return;
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    ((ClauseData) obj2).b();
                }
                this.i = SelectKt.e;
                this.f = null;
                return;
            }
            return;
        }
    }

    public final Object f(ContinuationImpl continuationImpl) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
        Object obj = atomicReferenceFieldUpdater.get(this);
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        ClauseData clauseData = (ClauseData) obj;
        Object obj2 = this.i;
        ArrayList arrayList = this.f;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj3 = arrayList.get(i);
                i++;
                ClauseData clauseData2 = (ClauseData) obj3;
                if (clauseData2 != clauseData) {
                    clauseData2.b();
                }
            }
            atomicReferenceFieldUpdater.set(this, SelectKt.f21930c);
            this.i = SelectKt.e;
            this.f = null;
        }
        Object invoke = clauseData.f21926c.invoke(clauseData.f21925a, clauseData.d, obj2);
        Continuation continuation = clauseData.e;
        if (clauseData.d == SelectKt.f) {
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((Function1) continuation).invoke(continuationImpl);
        }
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
        return ((Function2) continuation).invoke(invoke, continuationImpl);
    }

    public Object g(Continuation continuation) {
        if (j.get(this) instanceof ClauseData) {
            return f((ContinuationImpl) continuation);
        }
        return h((ContinuationImpl) continuation);
    }

    @Override // kotlinx.coroutines.selects.SelectInstance
    /* renamed from: getContext, reason: from getter */
    public final CoroutineContext getF21924c() {
        return this.f21924c;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object h(kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.h(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final ClauseData i(Object obj) {
        ArrayList arrayList = this.f;
        Object obj2 = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            Object obj3 = arrayList.get(i);
            i++;
            if (((ClauseData) obj3).f21925a == obj) {
                obj2 = obj3;
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        e(th);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j(SelectClause1 selectClause1, Function2 function2) {
        k(new ClauseData(selectClause1.getF21918a(), selectClause1.getB(), selectClause1.getF21923c(), null, (SuspendLambda) function2, selectClause1.c()), false);
    }

    public final void k(ClauseData clauseData, boolean z) {
        Object obj = clauseData.f21925a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
        if (atomicReferenceFieldUpdater.get(this) instanceof ClauseData) {
            return;
        }
        if (!z) {
            ArrayList arrayList = this.f;
            Intrinsics.checkNotNull(arrayList);
            if (arrayList == null || !arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    if (((ClauseData) obj2).f21925a == obj) {
                        throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
                    }
                }
            }
        }
        clauseData.b.invoke(obj, this, clauseData.d);
        if (this.i == SelectKt.e) {
            if (!z) {
                ArrayList arrayList2 = this.f;
                Intrinsics.checkNotNull(arrayList2);
                arrayList2.add(clauseData);
            }
            clauseData.g = this.g;
            clauseData.h = this.h;
            this.g = null;
            this.h = -1;
            return;
        }
        atomicReferenceFieldUpdater.set(this, clauseData);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x008d, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int l(java.lang.Object r8, java.lang.Object r9) {
        /*
            r7 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.selects.SelectImplementation.j
            java.lang.Object r1 = r0.get(r7)
            boolean r2 = r1 instanceof kotlinx.coroutines.CancellableContinuation
            r3 = 2
            r4 = 0
            if (r2 == 0) goto L3b
            kotlinx.coroutines.selects.SelectImplementation$ClauseData r2 = r7.i(r8)
            if (r2 != 0) goto L13
            goto L0
        L13:
            kotlin.jvm.functions.Function1 r5 = r2.a(r7, r9)
        L17:
            boolean r6 = r0.compareAndSet(r7, r1, r2)
            if (r6 == 0) goto L34
            kotlinx.coroutines.CancellableContinuation r1 = (kotlinx.coroutines.CancellableContinuation) r1
            r7.i = r9
            kotlin.jvm.functions.Function3 r8 = kotlinx.coroutines.selects.SelectKt.f21929a
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            kotlinx.coroutines.internal.Symbol r8 = r1.d(r8, r5)
            if (r8 != 0) goto L30
            kotlinx.coroutines.internal.Symbol r8 = kotlinx.coroutines.selects.SelectKt.e
            r7.i = r8
            return r3
        L30:
            r1.t(r8)
            return r4
        L34:
            java.lang.Object r6 = r0.get(r7)
            if (r6 == r1) goto L17
            goto L0
        L3b:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.selects.SelectKt.f21930c
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            r5 = 1
            if (r2 == 0) goto L46
            r2 = r5
            goto L48
        L46:
            boolean r2 = r1 instanceof kotlinx.coroutines.selects.SelectImplementation.ClauseData
        L48:
            if (r2 == 0) goto L4c
            r8 = 3
            return r8
        L4c:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.selects.SelectKt.d
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r2 == 0) goto L55
            return r3
        L55:
            kotlinx.coroutines.internal.Symbol r2 = kotlinx.coroutines.selects.SelectKt.b
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r2)
            if (r2 == 0) goto L72
            java.util.List r2 = kotlin.collections.CollectionsKt.listOf(r8)
        L61:
            boolean r3 = r0.compareAndSet(r7, r1, r2)
            if (r3 == 0) goto L69
            r4 = r5
            goto L6f
        L69:
            java.lang.Object r3 = r0.get(r7)
            if (r3 == r1) goto L61
        L6f:
            if (r4 == 0) goto L0
            goto L8d
        L72:
            boolean r2 = r1 instanceof java.util.List
            if (r2 == 0) goto L8e
            r2 = r1
            java.util.Collection r2 = (java.util.Collection) r2
            java.util.List r2 = kotlin.collections.CollectionsKt.plus(r2, r8)
        L7d:
            boolean r3 = r0.compareAndSet(r7, r1, r2)
            if (r3 == 0) goto L85
            r4 = r5
            goto L8b
        L85:
            java.lang.Object r3 = r0.get(r7)
            if (r3 == r1) goto L7d
        L8b:
            if (r4 == 0) goto L0
        L8d:
            return r5
        L8e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "Unexpected state: "
            r9.<init>(r0)
            r9.append(r1)
            java.lang.String r9 = r9.toString()
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.l(java.lang.Object, java.lang.Object):int");
    }
}
