package io.opencensus.trace;

import io.opencensus.internal.Utils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class MessageEvent extends BaseMessageEvent {

    /* loaded from: classes3.dex */
    public static abstract class Builder {
        public abstract MessageEvent a();

        public abstract Builder b(long j);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final Type f21103c;
        public static final Type f;
        public static final /* synthetic */ Type[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, io.opencensus.trace.MessageEvent$Type] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, io.opencensus.trace.MessageEvent$Type] */
        static {
            ?? r0 = new Enum("SENT", 0);
            f21103c = r0;
            ?? r1 = new Enum("RECEIVED", 1);
            f = r1;
            g = new Type[]{r0, r1};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) g.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [io.opencensus.trace.MessageEvent$Builder, io.opencensus.trace.AutoValue_MessageEvent$Builder, java.lang.Object] */
    public static Builder a(Type type, long j) {
        ?? obj = new Object();
        Utils.b(type, "type");
        obj.f21091a = type;
        obj.b = Long.valueOf(j);
        obj.f21092c = 0L;
        obj.d = 0L;
        return obj;
    }

    public abstract long b();

    public abstract long c();

    public abstract Type d();

    public abstract long e();
}
