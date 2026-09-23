package io.opencensus.trace.unsafe;

import io.grpc.Context;
import io.opencensus.internal.Utils;
import io.opencensus.trace.BlankSpan;
import io.opencensus.trace.ContextHandle;
import io.opencensus.trace.ContextManager;
import io.opencensus.trace.Span;

/* loaded from: classes3.dex */
public class ContextManagerImpl implements ContextManager {
    @Override // io.opencensus.trace.ContextManager
    public final Span a(ContextHandle contextHandle) {
        Context context = ((ContextHandleImpl) contextHandle).f21127a;
        Context.Key key = ContextUtils.f21129a;
        Utils.b(context, "context");
        Span span = (Span) key.a(context);
        if (span == null) {
            return BlankSpan.f21099c;
        }
        return span;
    }

    @Override // io.opencensus.trace.ContextManager
    public final ContextHandle b(ContextHandle contextHandle, Span span) {
        Context context = ((ContextHandleImpl) contextHandle).f21127a;
        Context.Key key = ContextUtils.f21129a;
        Utils.b(context, "context");
        return new ContextHandleImpl(context.e(ContextUtils.f21129a, span));
    }

    @Override // io.opencensus.trace.ContextManager
    public final ContextHandle c() {
        return new ContextHandleImpl(Context.b());
    }
}
