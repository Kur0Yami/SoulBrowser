package io.opencensus.trace.unsafe;

import io.grpc.Context;
import io.opencensus.trace.ContextHandle;

/* loaded from: classes3.dex */
class ContextHandleImpl implements ContextHandle {

    /* renamed from: a, reason: collision with root package name */
    public final Context f21127a;

    public ContextHandleImpl(Context context) {
        this.f21127a = context;
    }

    @Override // io.opencensus.trace.ContextHandle
    public final void a(ContextHandle contextHandle) {
        this.f21127a.d(((ContextHandleImpl) contextHandle).f21127a);
    }

    @Override // io.opencensus.trace.ContextHandle
    public final ContextHandle b() {
        return new ContextHandleImpl(this.f21127a.a());
    }
}
