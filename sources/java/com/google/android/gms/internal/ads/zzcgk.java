package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcgk extends zzasr {

    /* renamed from: c, reason: collision with root package name */
    public static final zzcgk f5130c = new zzasr();

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzasv, com.google.android.gms.internal.ads.zzasy, com.google.android.gms.internal.ads.zziin] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zziir, com.google.android.gms.internal.ads.zzasv] */
    @Override // com.google.android.gms.internal.ads.zzasr
    public final zzasv b(String str) {
        if ("moov".equals(str)) {
            return new zziir();
        }
        if ("mvhd".equals(str)) {
            ?? zziinVar = new zziin("mvhd");
            zziinVar.r = 1.0d;
            zziinVar.s = 1.0f;
            zziinVar.t = zziiz.j;
            return zziinVar;
        }
        return new zziin(str);
    }
}
