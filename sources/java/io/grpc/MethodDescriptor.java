package io.grpc;

import com.google.common.base.MoreObjects;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public final class MethodDescriptor<ReqT, RespT> {

    /* loaded from: classes3.dex */
    public static final class Builder<ReqT, RespT> {
    }

    /* loaded from: classes3.dex */
    public interface Marshaller<T> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class MethodType {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ MethodType[] f21046c = {new Enum("UNARY", 0), new Enum("CLIENT_STREAMING", 1), new Enum("SERVER_STREAMING", 2), new Enum("BIDI_STREAMING", 3), new Enum("UNKNOWN", 4)};

        /* JADX INFO: Fake field, exist only in values array */
        MethodType EF5;

        public static MethodType valueOf(String str) {
            return (MethodType) Enum.valueOf(MethodType.class, str);
        }

        public static MethodType[] values() {
            return (MethodType[]) f21046c.clone();
        }
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public interface PrototypeMarshaller<T> extends ReflectableMarshaller<T> {
    }

    @ExperimentalApi
    /* loaded from: classes3.dex */
    public interface ReflectableMarshaller<T> extends Marshaller<T> {
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(null, "fullMethodName");
        b.b(null, "type");
        b.d("idempotent", false);
        b.d("safe", false);
        b.d("sampledToLocalTracing", false);
        b.b(null, "requestMarshaller");
        b.b(null, "responseMarshaller");
        b.b(null, "schemaDescriptor");
        b.d = true;
        return b.toString();
    }
}
