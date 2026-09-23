package io.grpc;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import io.grpc.Metadata;
import j$.util.DesugarCollections;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import javax.annotation.CheckReturnValue;
import javax.annotation.concurrent.Immutable;

@CheckReturnValue
@Immutable
/* loaded from: classes3.dex */
public final class Status {

    /* renamed from: c, reason: collision with root package name */
    public static final List f21053c;
    public static final Status d;

    /* renamed from: a, reason: collision with root package name */
    public final Code f21054a;
    public final String b;

    /* loaded from: classes3.dex */
    public enum Code {
        OK(0),
        CANCELLED(1),
        UNKNOWN(2),
        INVALID_ARGUMENT(3),
        DEADLINE_EXCEEDED(4),
        NOT_FOUND(5),
        ALREADY_EXISTS(6),
        PERMISSION_DENIED(7),
        RESOURCE_EXHAUSTED(8),
        FAILED_PRECONDITION(9),
        ABORTED(10),
        OUT_OF_RANGE(11),
        UNIMPLEMENTED(12),
        INTERNAL(13),
        UNAVAILABLE(14),
        DATA_LOSS(15),
        UNAUTHENTICATED(16);


        /* renamed from: c, reason: collision with root package name */
        public final int f21055c;

        Code(int i) {
            this.f21055c = i;
            Integer.toString(i).getBytes(StandardCharsets.US_ASCII);
        }

        public final Status a() {
            return (Status) Status.f21053c.get(this.f21055c);
        }
    }

    /* loaded from: classes3.dex */
    public static final class StatusCodeMarshaller implements Metadata.TrustedAsciiMarshaller<Status> {
    }

    /* loaded from: classes3.dex */
    public static final class StatusMessageMarshaller implements Metadata.TrustedAsciiMarshaller<String> {
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [io.grpc.Metadata$TrustedAsciiMarshaller, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v22, types: [io.grpc.Metadata$TrustedAsciiMarshaller, java.lang.Object] */
    static {
        TreeMap treeMap = new TreeMap();
        for (Code code : Code.values()) {
            Status status = (Status) treeMap.put(Integer.valueOf(code.f21055c), new Status(code, null));
            if (status != null) {
                throw new IllegalStateException("Code value duplication between " + status.f21054a.name() + " & " + code.name());
            }
        }
        f21053c = DesugarCollections.unmodifiableList(new ArrayList(treeMap.values()));
        d = Code.OK.a();
        Code.CANCELLED.a();
        Code.UNKNOWN.a();
        Code.INVALID_ARGUMENT.a();
        Code.DEADLINE_EXCEEDED.a();
        Code.NOT_FOUND.a();
        Code.ALREADY_EXISTS.a();
        Code.PERMISSION_DENIED.a();
        Code.UNAUTHENTICATED.a();
        Code.RESOURCE_EXHAUSTED.a();
        Code.FAILED_PRECONDITION.a();
        Code.ABORTED.a();
        Code.OUT_OF_RANGE.a();
        Code.UNIMPLEMENTED.a();
        Code.INTERNAL.a();
        Code.UNAVAILABLE.a();
        Code.DATA_LOSS.a();
        new Metadata.TrustedAsciiKey("grpc-status", new Object());
        new Metadata.TrustedAsciiKey("grpc-message", new Object());
    }

    public Status(Code code, String str) {
        Preconditions.h(code, "code");
        this.f21054a = code;
        this.b = str;
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        b.b(this.f21054a.name(), "code");
        b.b(this.b, "description");
        b.b(null, "cause");
        return b.toString();
    }
}
