package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcbn {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f5019a;

    public zzcbn(com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f5019a = zzgVar;
    }

    public final void a(int i, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y0)).booleanValue()) {
            return;
        }
        com.google.android.gms.ads.internal.util.zzg zzgVar = this.f5019a;
        if (j - zzgVar.zzF() < 0) {
            com.google.android.gms.ads.internal.util.zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z0)).booleanValue()) {
            zzgVar.zzE(-1);
            zzgVar.zzG(j);
        } else {
            zzgVar.zzE(i);
            zzgVar.zzG(j);
        }
    }
}
