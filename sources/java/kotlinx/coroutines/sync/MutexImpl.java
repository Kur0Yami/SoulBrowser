package kotlinx.coroutines.sync;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectInstanceInternal;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0006\u0007R\u0013\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00038\u0002X\u0082\u0004¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/Mutex;", "Lkotlinx/atomicfu/AtomicRef;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "owner", "CancellableContinuationWithOwner", "SelectInstanceWithOwner", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n328#2,12:306\n1#3:318\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n170#1:306,12\n*E\n"})
/* loaded from: classes4.dex */
public class MutexImpl extends SemaphoreImpl implements Mutex {
    public static final /* synthetic */ AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    private volatile /* synthetic */ Object owner$volatile = MutexKt.f21942a;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;", "Lkotlinx/coroutines/CancellableContinuation;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/coroutines/Waiter;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"})
    /* loaded from: classes4.dex */
    public final class CancellableContinuationWithOwner implements CancellableContinuation<Unit>, Waiter {

        /* renamed from: c, reason: collision with root package name */
        public final CancellableContinuationImpl f21936c;

        public CancellableContinuationWithOwner(CancellableContinuationImpl cancellableContinuationImpl) {
            this.f21936c = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.Waiter
        public final void b(Segment segment, int i) {
            this.f21936c.b(segment, i);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final Symbol d(Object obj, Function1 function1) {
            final MutexImpl mutexImpl = MutexImpl.this;
            Function1<Throwable, Unit> function12 = new Function1<Throwable, Unit>(this) { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$tryResume$token$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Throwable th) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.g;
                    MutexImpl mutexImpl2 = MutexImpl.this;
                    atomicReferenceFieldUpdater.set(mutexImpl2, null);
                    mutexImpl2.a(null);
                    return Unit.INSTANCE;
                }
            };
            Symbol D = this.f21936c.D((Unit) obj, function12);
            if (D != null) {
                MutexImpl.g.set(mutexImpl, null);
            }
            return D;
        }

        @Override // kotlin.coroutines.Continuation
        /* renamed from: getContext */
        public final CoroutineContext getI() {
            return this.f21936c.i;
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void m(Object obj, Function1 function1) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = MutexImpl.g;
            final MutexImpl mutexImpl = MutexImpl.this;
            atomicReferenceFieldUpdater.set(mutexImpl, null);
            Function1<Throwable, Unit> function12 = new Function1<Throwable, Unit>(this) { // from class: kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner$resume$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Throwable th) {
                    MutexImpl.this.a(null);
                    return Unit.INSTANCE;
                }
            };
            this.f21936c.m((Unit) obj, function12);
        }

        @Override // kotlin.coroutines.Continuation
        public final void resumeWith(Object obj) {
            this.f21936c.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.CancellableContinuation
        public final void t(Object obj) {
            this.f21936c.t(obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;", "Q", "Lkotlinx/coroutines/selects/SelectInstanceInternal;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,305:1\n1#2:306\n*E\n"})
    /* loaded from: classes4.dex */
    public final class SelectInstanceWithOwner<Q> implements SelectInstanceInternal<Q> {

        /* renamed from: c, reason: collision with root package name */
        public final SelectInstanceInternal f21939c;
        public final Object f;

        public SelectInstanceWithOwner(SelectInstanceInternal selectInstanceInternal, Object obj) {
            this.f21939c = selectInstanceInternal;
            this.f = obj;
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public final void a(DisposableHandle disposableHandle) {
            this.f21939c.a(disposableHandle);
        }

        @Override // kotlinx.coroutines.Waiter
        public final void b(Segment segment, int i) {
            this.f21939c.b(segment, i);
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public final boolean c(Object obj, Object obj2) {
            boolean c2 = this.f21939c.c(obj, obj2);
            if (c2) {
                MutexImpl.g.set(MutexImpl.this, this.f);
            }
            return c2;
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        public final void d(Object obj) {
            MutexImpl.g.set(MutexImpl.this, this.f);
            this.f21939c.d(obj);
        }

        @Override // kotlinx.coroutines.selects.SelectInstance
        /* renamed from: getContext */
        public final CoroutineContext getF21924c() {
            return this.f21939c.getF21924c();
        }
    }

    public MutexImpl() {
        new Function3<SelectInstance<?>, Object, Object, Function1<? super Throwable, ? extends Unit>>() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public final Function1<? super Throwable, ? extends Unit> invoke(SelectInstance<?> selectInstance, final Object obj, Object obj2) {
                final MutexImpl mutexImpl = MutexImpl.this;
                return new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.MutexImpl$onSelectCancellationUnlockConstructor$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Throwable th) {
                        MutexImpl.this.a(obj);
                        return Unit.INSTANCE;
                    }
                };
            }
        };
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public final void a(Object obj) {
        while (Math.max(SemaphoreImpl.f.get(this), 0) == 0) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            Symbol symbol = MutexKt.f21942a;
            if (obj2 != symbol) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, symbol)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                d();
                return;
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x002d, code lost:
    
        r3.m(kotlin.Unit.INSTANCE, r5.f21945a);
     */
    @Override // kotlinx.coroutines.sync.Mutex
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = kotlinx.coroutines.sync.SemaphoreImpl.f
            int r1 = r0.get(r5)
            r2 = 1
            if (r1 <= r2) goto L16
        L9:
            int r1 = r0.get(r5)
            if (r1 <= r2) goto L0
            boolean r1 = r0.compareAndSet(r5, r1, r2)
            if (r1 == 0) goto L9
            goto L0
        L16:
            if (r1 > 0) goto L65
            kotlin.coroutines.Continuation r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.intercepted(r6)
            kotlinx.coroutines.CancellableContinuationImpl r1 = kotlinx.coroutines.CancellableContinuationKt.b(r1)
            kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner r3 = new kotlinx.coroutines.sync.MutexImpl$CancellableContinuationWithOwner     // Catch: java.lang.Throwable -> L60
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L60
        L25:
            int r4 = r0.getAndDecrement(r5)     // Catch: java.lang.Throwable -> L60
            if (r4 > r2) goto L25
            if (r4 <= 0) goto L35
            kotlin.Unit r0 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L60
            kotlin.jvm.functions.Function1 r2 = r5.f21945a     // Catch: java.lang.Throwable -> L60
            r3.m(r0, r2)     // Catch: java.lang.Throwable -> L60
            goto L40
        L35:
            java.lang.String r4 = "null cannot be cast to non-null type kotlinx.coroutines.Waiter"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)     // Catch: java.lang.Throwable -> L60
            boolean r4 = r5.c(r3)     // Catch: java.lang.Throwable -> L60
            if (r4 == 0) goto L25
        L40:
            java.lang.Object r0 = r1.q()
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r1) goto L4d
            kotlin.coroutines.jvm.internal.DebugProbesKt.probeCoroutineSuspended(r6)
        L4d:
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r6) goto L54
            goto L56
        L54:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
        L56:
            java.lang.Object r6 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            if (r0 != r6) goto L5d
            return r0
        L5d:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L60:
            r6 = move-exception
            r1.z()
            throw r6
        L65:
            int r2 = r1 + (-1)
            boolean r0 = r0.compareAndSet(r5, r1, r2)
            if (r0 == 0) goto L0
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = kotlinx.coroutines.sync.MutexImpl.g
            r0 = 0
            r6.set(r5, r0)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.MutexImpl.b(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Mutex@");
        sb.append(DebugStringsKt.a(this));
        sb.append("[isLocked=");
        boolean z = false;
        if (Math.max(SemaphoreImpl.f.get(this), 0) == 0) {
            z = true;
        }
        sb.append(z);
        sb.append(",owner=");
        sb.append(g.get(this));
        sb.append(']');
        return sb.toString();
    }
}
