package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/internal/ContextScope;", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ContextScope implements CoroutineScope {

    /* renamed from: c, reason: collision with root package name */
    public final CoroutineContext f21870c;

    public ContextScope(CoroutineContext coroutineContext) {
        this.f21870c = coroutineContext;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* renamed from: k, reason: from getter */
    public final CoroutineContext getF21870c() {
        return this.f21870c;
    }

    public final String toString() {
        return "CoroutineScope(coroutineContext=" + this.f21870c + ')';
    }
}
