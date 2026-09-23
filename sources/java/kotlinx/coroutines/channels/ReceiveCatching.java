package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;

/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/channels/ReceiveCatching;", "E", "Lkotlinx/coroutines/Waiter;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ReceiveCatching<E> implements Waiter {

    /* renamed from: c, reason: collision with root package name */
    public final CancellableContinuationImpl f21673c;

    public ReceiveCatching(CancellableContinuationImpl cancellableContinuationImpl) {
        this.f21673c = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.Waiter
    public final void b(Segment segment, int i) {
        this.f21673c.b(segment, i);
    }
}
