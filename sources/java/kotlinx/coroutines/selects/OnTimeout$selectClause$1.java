package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;

@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final /* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements Function3<OnTimeout, SelectInstance<?>, Object, Unit> {

    /* renamed from: c, reason: collision with root package name */
    public static final OnTimeout$selectClause$1 f21917c = new FunctionReferenceImpl(3, OnTimeout.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // kotlin.jvm.functions.Function3
    public final Unit invoke(OnTimeout onTimeout, SelectInstance<?> selectInstance, Object obj) {
        final OnTimeout onTimeout2 = onTimeout;
        final SelectInstance<?> selectInstance2 = selectInstance;
        long j = onTimeout2.f21915a;
        if (j <= 0) {
            selectInstance2.d(Unit.INSTANCE);
        } else {
            Runnable runnable = new Runnable() { // from class: kotlinx.coroutines.selects.OnTimeout$register$$inlined$Runnable$1
                @Override // java.lang.Runnable
                public final void run() {
                    SelectInstance.this.c(onTimeout2, Unit.INSTANCE);
                }
            };
            Intrinsics.checkNotNull(selectInstance2, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
            CoroutineContext f21924c = selectInstance2.getF21924c();
            selectInstance2.a(DelayKt.b(f21924c).o(j, runnable, f21924c));
        }
        return Unit.INSTANCE;
    }
}
