package io.grpc;

/* loaded from: classes3.dex */
public final class TlsServerCredentials extends ServerCredentials {

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class ClientAuth {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ ClientAuth[] f21058c = {new Enum("NONE", 0), new Enum("OPTIONAL", 1), new Enum("REQUIRE", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        ClientAuth EF5;

        public static ClientAuth valueOf(String str) {
            return (ClientAuth) Enum.valueOf(ClientAuth.class, str);
        }

        public static ClientAuth[] values() {
            return (ClientAuth[]) f21058c.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Feature {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Feature[] f21059c = {new Enum("FAKE", 0), new Enum("MTLS", 1), new Enum("CUSTOM_MANAGERS", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        Feature EF5;

        public static Feature valueOf(String str) {
            return (Feature) Enum.valueOf(Feature.class, str);
        }

        public static Feature[] values() {
            return (Feature[]) f21059c.clone();
        }
    }
}
