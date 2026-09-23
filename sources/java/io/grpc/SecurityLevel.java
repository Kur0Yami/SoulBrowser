package io.grpc;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@ExperimentalApi
/* loaded from: classes3.dex */
public final class SecurityLevel {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ SecurityLevel[] f21051c = {new Enum("NONE", 0), new Enum("INTEGRITY", 1), new Enum("PRIVACY_AND_INTEGRITY", 2)};

    /* JADX INFO: Fake field, exist only in values array */
    SecurityLevel EF5;

    public static SecurityLevel valueOf(String str) {
        return (SecurityLevel) Enum.valueOf(SecurityLevel.class, str);
    }

    public static SecurityLevel[] values() {
        return (SecurityLevel[]) f21051c.clone();
    }
}
