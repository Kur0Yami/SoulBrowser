package io.grpc;

/* loaded from: classes3.dex */
class InternalStatusRuntimeException extends StatusRuntimeException {
    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this;
    }
}
