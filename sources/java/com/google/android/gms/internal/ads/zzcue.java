package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzcue implements zzdbe {

    /* renamed from: c, reason: collision with root package name */
    public final zzcir f5478c;
    public final zzdxe f;
    public final zzfhr g;

    public zzcue(zzcir zzcirVar, zzdxe zzdxeVar, zzfhr zzfhrVar) {
        this.f5478c = zzcirVar;
        this.f = zzdxeVar;
        this.g = zzfhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final void n() {
        zzcir zzcirVar;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ne)).booleanValue() && (zzcirVar = this.f5478c) != null) {
            if (true != com.google.android.gms.ads.internal.util.zzab.zza(zzcirVar.zzE())) {
                str = "0";
            } else {
                str = "1";
            }
            zzdxd a2 = this.f.a();
            a2.b("action", "hcp");
            a2.b("hcp", str);
            a2.a(this.g);
            a2.c();
        }
    }
}
