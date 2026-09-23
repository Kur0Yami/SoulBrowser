package io.grpc;

/* loaded from: classes3.dex */
public class ClientInterceptors {

    /* renamed from: io.grpc.ClientInterceptors$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ClientInterceptor {

        /* renamed from: io.grpc.ClientInterceptors$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class C03551 extends PartialForwardingClientCall<Object, Object> {

            /* renamed from: io.grpc.ClientInterceptors$1$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes3.dex */
            class C03561 extends PartialForwardingClientCallListener<Object> {
            }
        }
    }

    /* renamed from: io.grpc.ClientInterceptors$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends ClientCall<Object, Object> {
    }

    /* loaded from: classes3.dex */
    public static abstract class CheckedForwardingClientCall<ReqT, RespT> extends ForwardingClientCall<ReqT, RespT> {
    }

    /* loaded from: classes3.dex */
    public static class InterceptorChannel extends Channel {
    }
}
