package com.google.android.gms.internal.consent_sdk;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class zzcg {

    /* renamed from: c, reason: collision with root package name */
    public static final zzcg f9974c;
    public static final /* synthetic */ zzcg[] f;

    /* JADX INFO: Fake field, exist only in values array */
    zzcg EF0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, com.google.android.gms.internal.consent_sdk.zzcg] */
    static {
        Enum r0 = new Enum("DEBUG_PARAM_UNKNOWN", 0);
        Enum r1 = new Enum("ALWAYS_SHOW", 1);
        Enum r3 = new Enum("GEO_OVERRIDE_EEA", 2);
        Enum r5 = new Enum("GEO_OVERRIDE_REGULATED_US_STATE", 3);
        Enum r7 = new Enum("GEO_OVERRIDE_OTHER", 4);
        Enum r9 = new Enum("GEO_OVERRIDE_NON_EEA", 5);
        ?? r11 = new Enum("PREVIEWING_DEBUG_MESSAGES", 6);
        f9974c = r11;
        f = new zzcg[]{r0, r1, r3, r5, r7, r9, r11, new Enum("GEO_OVERRIDE_USFL", 7)};
    }

    public static zzcg[] values() {
        return (zzcg[]) f.clone();
    }
}
