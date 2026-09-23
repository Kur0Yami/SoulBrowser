package io.grpc;

/* loaded from: classes3.dex */
public final class TlsChannelCredentials extends ChannelCredentials {

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Feature {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ Feature[] f21057c = {new Enum("FAKE", 0), new Enum("MTLS", 1), new Enum("CUSTOM_MANAGERS", 2)};

        /* JADX INFO: Fake field, exist only in values array */
        Feature EF5;

        public static Feature valueOf(String str) {
            return (Feature) Enum.valueOf(Feature.class, str);
        }

        public static Feature[] values() {
            return (Feature[]) f21057c.clone();
        }
    }
}
