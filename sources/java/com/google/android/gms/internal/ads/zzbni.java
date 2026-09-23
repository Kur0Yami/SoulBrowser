package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbni implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbni f4777a = new Object();

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* synthetic */ void a(Map map, Object obj) {
        com.google.android.gms.ads.internal.util.client.zzv zzvVar;
        zzckd zzckdVar = (zzckd) obj;
        zzbnn zzbnnVar = zzbnm.f4781a;
        String str = (String) map.get("u");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from httpTrack GMSG.");
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g)).booleanValue() && str.isEmpty()) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("URL is empty from httpTrack GMSG.");
            return;
        }
        zzcii zzciiVar = (zzcii) zzckdVar;
        if (zzciiVar.zzC() != null) {
            zzvVar = zzciiVar.zzC().x0;
        } else {
            zzvVar = null;
        }
        new com.google.android.gms.ads.internal.util.zzbt(zzckdVar.getContext(), ((zzckl) zzckdVar).zzs().afmaVersion, str, null, zzvVar).zzb();
    }
}
