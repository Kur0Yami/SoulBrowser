package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final /* synthetic */ class MutexImpl$onLock$2 extends FunctionReferenceImpl implements Function3<MutexImpl, Object, Object, Object> {
    static {
        new FunctionReferenceImpl(3, MutexImpl.class, "onLockProcessResult", "onLockProcessResult(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(MutexImpl mutexImpl, Object obj, Object obj2) {
        MutexImpl mutexImpl2 = mutexImpl;
        mutexImpl2.getClass();
        if (!Intrinsics.areEqual(obj2, MutexKt.b)) {
            return mutexImpl2;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }
}
