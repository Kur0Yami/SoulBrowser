package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/GlobalScope;", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@DelicateCoroutinesApi
/* loaded from: classes4.dex */
public final class GlobalScope implements CoroutineScope {
    @Override // kotlinx.coroutines.CoroutineScope
    /* renamed from: k */
    public final CoroutineContext getF21870c() {
        return EmptyCoroutineContext.INSTANCE;
    }
}
