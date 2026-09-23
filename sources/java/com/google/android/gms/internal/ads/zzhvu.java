package com.google.android.gms.internal.ads;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class zzhvu {

    /* renamed from: c, reason: collision with root package name */
    public static final zzhvu f8838c;
    public static final zzhvu f;
    public static final zzhvu g;
    public static final /* synthetic */ zzhvu[] h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.ads.zzhvu] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.gms.internal.ads.zzhvu] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.gms.internal.ads.zzhvu] */
    static {
        ?? r0 = new Enum("NIST_P256", 0);
        f8838c = r0;
        ?? r1 = new Enum("NIST_P384", 1);
        f = r1;
        ?? r3 = new Enum("NIST_P521", 2);
        g = r3;
        h = new zzhvu[]{r0, r1, r3};
    }

    public static zzhvu[] values() {
        return (zzhvu[]) h.clone();
    }
}
