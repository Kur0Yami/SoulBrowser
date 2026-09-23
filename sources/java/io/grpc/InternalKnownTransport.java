package io.grpc;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Internal
/* loaded from: classes3.dex */
public final class InternalKnownTransport {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ InternalKnownTransport[] f21039c = {new Enum("NETTY", 0), new Enum("NETTY_SHADED", 1)};

    /* JADX INFO: Fake field, exist only in values array */
    InternalKnownTransport EF5;

    public static InternalKnownTransport valueOf(String str) {
        return (InternalKnownTransport) Enum.valueOf(InternalKnownTransport.class, str);
    }

    public static InternalKnownTransport[] values() {
        return (InternalKnownTransport[]) f21039c.clone();
    }
}
