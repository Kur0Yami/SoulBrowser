package io.grpc;

import io.grpc.MethodDescriptor;
import java.io.BufferedInputStream;
import java.io.InputStream;

/* loaded from: classes3.dex */
public final class ServerInterceptors {

    /* renamed from: io.grpc.ServerInterceptors$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MethodDescriptor.Marshaller<InputStream> {
    }

    /* renamed from: io.grpc.ServerInterceptors$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements ServerCallHandler<Object, Object> {

        /* renamed from: io.grpc.ServerInterceptors$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends PartialForwardingServerCall<Object, Object> {
            @Override // io.grpc.PartialForwardingServerCall
            public final ServerCall a() {
                return null;
            }
        }

        /* renamed from: io.grpc.ServerInterceptors$2$2, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        class C03572 extends PartialForwardingServerCallListener<Object> {
        }
    }

    /* loaded from: classes3.dex */
    public static final class InterceptCallHandler<ReqT, RespT> implements ServerCallHandler<ReqT, RespT> {
    }

    /* loaded from: classes3.dex */
    public static final class KnownLengthBufferedInputStream extends BufferedInputStream implements KnownLength {
    }
}
