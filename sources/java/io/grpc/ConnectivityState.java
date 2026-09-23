package io.grpc;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@ExperimentalApi
/* loaded from: classes3.dex */
public final class ConnectivityState {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ ConnectivityState[] f21031c = {new Enum("CONNECTING", 0), new Enum("READY", 1), new Enum("TRANSIENT_FAILURE", 2), new Enum("IDLE", 3), new Enum("SHUTDOWN", 4)};

    /* JADX INFO: Fake field, exist only in values array */
    ConnectivityState EF5;

    public static ConnectivityState valueOf(String str) {
        return (ConnectivityState) Enum.valueOf(ConnectivityState.class, str);
    }

    public static ConnectivityState[] values() {
        return (ConnectivityState[]) f21031c.clone();
    }
}
