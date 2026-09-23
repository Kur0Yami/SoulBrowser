package io.opencensus.trace;

/* loaded from: classes3.dex */
public interface ContextManager {
    Span a(ContextHandle contextHandle);

    ContextHandle b(ContextHandle contextHandle, Span span);

    ContextHandle c();
}
