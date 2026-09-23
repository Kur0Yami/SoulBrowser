package com.google.android.gms.ads.internal.util.client;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class zzt {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzt[] f3088c;
    public static final zzt zza;
    public static final zzt zzb;
    public static final zzt zzc;
    public static final zzt zzd;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.ads.internal.util.client.zzt] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.gms.ads.internal.util.client.zzt] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.google.android.gms.ads.internal.util.client.zzt] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.google.android.gms.ads.internal.util.client.zzt] */
    static {
        ?? r0 = new Enum("SUCCESS", 0);
        zza = r0;
        ?? r1 = new Enum("PERMANENT_FAILURE", 1);
        zzb = r1;
        ?? r3 = new Enum("RETRIABLE_FAILURE", 2);
        zzc = r3;
        ?? r5 = new Enum("BUFFERED", 3);
        zzd = r5;
        f3088c = new zzt[]{r0, r1, r3, r5};
    }

    public static zzt[] values() {
        return (zzt[]) f3088c.clone();
    }
}
