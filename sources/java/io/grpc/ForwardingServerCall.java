package io.grpc;

/* loaded from: classes3.dex */
public abstract class ForwardingServerCall<ReqT, RespT> extends PartialForwardingServerCall<ReqT, RespT> {

    /* loaded from: classes3.dex */
    public static abstract class SimpleForwardingServerCall<ReqT, RespT> extends ForwardingServerCall<ReqT, RespT> {
        @Override // io.grpc.PartialForwardingServerCall
        public final ServerCall a() {
            return null;
        }
    }
}
