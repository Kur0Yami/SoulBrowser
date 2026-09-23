package com.google.android.gms.internal.ads;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class zzhxo {

    /* renamed from: c, reason: collision with root package name */
    public static final zzhxo f8872c;
    public static final zzhxo f;
    public static final /* synthetic */ zzhxo[] g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhxo, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzhxo, java.lang.Enum] */
    static {
        ?? r0 = new Enum("LENIENT", 0);
        f8872c = r0;
        ?? r1 = new Enum("LEGACY_STRICT", 1);
        f = r1;
        g = new zzhxo[]{r0, r1, new Enum("STRICT", 2)};
    }

    public static zzhxo[] values() {
        return (zzhxo[]) g.clone();
    }
}
