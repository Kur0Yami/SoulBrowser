package com.google.android.datatransport.cct.internal;

import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class ClientInfo {

    @AutoValue.Builder
    /* loaded from: classes.dex */
    public static abstract class Builder {
        public abstract ClientInfo a();

        public abstract Builder b(AndroidClientInfo androidClientInfo);

        public abstract Builder c();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class ClientType {

        /* renamed from: c, reason: collision with root package name */
        public static final ClientType f2795c;
        public static final /* synthetic */ ClientType[] f;

        /* JADX INFO: Fake field, exist only in values array */
        ClientType EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.datatransport.cct.internal.ClientInfo$ClientType] */
        static {
            Enum r0 = new Enum("UNKNOWN", 0);
            ?? r1 = new Enum("ANDROID_FIREBASE", 1);
            f2795c = r1;
            f = new ClientType[]{r0, r1};
        }

        public static ClientType valueOf(String str) {
            return (ClientType) Enum.valueOf(ClientType.class, str);
        }

        public static ClientType[] values() {
            return (ClientType[]) f.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.datatransport.cct.internal.ClientInfo$Builder] */
    public static Builder a() {
        return new Object();
    }

    public abstract AndroidClientInfo b();

    public abstract ClientType c();
}
