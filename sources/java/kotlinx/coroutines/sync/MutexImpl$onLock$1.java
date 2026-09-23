package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectInstanceInternal;
import kotlinx.coroutines.sync.MutexImpl;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final /* synthetic */ class MutexImpl$onLock$1 extends FunctionReferenceImpl implements Function3<MutexImpl, SelectInstance<?>, Object, Unit> {
    static {
        new FunctionReferenceImpl(3, MutexImpl.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Unit invoke(MutexImpl mutexImpl, SelectInstance<?> selectInstance, Object obj) {
        int andDecrement;
        MutexImpl mutexImpl2 = mutexImpl;
        SelectInstance<?> selectInstance2 = selectInstance;
        if (obj != null) {
            mutexImpl2.getClass();
            while (true) {
                if (Math.max(SemaphoreImpl.f.get(mutexImpl2), 0) != 0) {
                    break;
                }
                Object obj2 = MutexImpl.g.get(mutexImpl2);
                if (obj2 != MutexKt.f21942a) {
                    if (obj2 == obj) {
                        selectInstance2.d(MutexKt.b);
                    }
                }
            }
        } else {
            mutexImpl2.getClass();
        }
        Intrinsics.checkNotNull(selectInstance2, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
        MutexImpl.SelectInstanceWithOwner selectInstanceWithOwner = new MutexImpl.SelectInstanceWithOwner((SelectInstanceInternal) selectInstance2, obj);
        while (true) {
            mutexImpl2.getClass();
            do {
                andDecrement = SemaphoreImpl.f.getAndDecrement(mutexImpl2);
            } while (andDecrement > 1);
            if (andDecrement > 0) {
                selectInstanceWithOwner.d(Unit.INSTANCE);
                break;
            }
            Intrinsics.checkNotNull(selectInstanceWithOwner, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (mutexImpl2.c(selectInstanceWithOwner)) {
                break;
            }
        }
        return Unit.INSTANCE;
    }
}
