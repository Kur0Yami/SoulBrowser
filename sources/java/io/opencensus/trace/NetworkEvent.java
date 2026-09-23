package io.opencensus.trace;

import io.opencensus.common.Timestamp;
import javax.annotation.concurrent.Immutable;

@Deprecated
@Immutable
/* loaded from: classes3.dex */
public abstract class NetworkEvent extends BaseMessageEvent {

    @Deprecated
    /* loaded from: classes3.dex */
    public static abstract class Builder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Type {

        /* renamed from: c, reason: collision with root package name */
        public static final Type f21104c;
        public static final Type f;
        public static final /* synthetic */ Type[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [io.opencensus.trace.NetworkEvent$Type, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [io.opencensus.trace.NetworkEvent$Type, java.lang.Enum] */
        static {
            ?? r0 = new Enum("SENT", 0);
            f21104c = r0;
            ?? r1 = new Enum("RECV", 1);
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

    public abstract long a();

    public abstract Timestamp b();

    public abstract long c();

    public abstract Type d();

    public abstract long e();
}
