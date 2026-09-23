package io.grpc;

import javax.annotation.concurrent.ThreadSafe;

@ExperimentalApi
@ThreadSafe
/* loaded from: classes3.dex */
public abstract class ServerStreamTracer extends StreamTracer {

    /* loaded from: classes3.dex */
    public static abstract class Factory {
    }

    @Deprecated
    /* loaded from: classes3.dex */
    public static final class ReadOnlyServerCall<ReqT, RespT> extends ForwardingServerCall<ReqT, RespT> {
        @Override // io.grpc.PartialForwardingServerCall
        public final ServerCall a() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class ServerCallInfo<ReqT, RespT> {
    }
}
