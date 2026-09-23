package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfli implements zzijg {
    public static zzgyw a() {
        zzgyw zzgywVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E6)).booleanValue()) {
            zzgywVar = zzcdo.f5069c;
        } else {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D6)).booleanValue()) {
                zzgywVar = zzcdo.f5068a;
            } else {
                zzgywVar = zzcdo.f;
            }
        }
        zzijo.a(zzgywVar);
        return zzgywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* synthetic */ Object zzb() {
        return a();
    }
}
