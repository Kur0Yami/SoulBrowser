package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzduo {

    /* renamed from: a, reason: collision with root package name */
    public final zzdxe f6160a;

    public zzduo(zzdxe zzdxeVar) {
        this.f6160a = zzdxeVar;
    }

    public final boolean a(zzfxs zzfxsVar) {
        boolean O = zzfxsVar.O();
        zzdxe zzdxeVar = this.f6160a;
        if (O) {
            zzdxd a2 = zzdxeVar.a();
            a2.b("action", "aq_ad_closed");
            a2.b("gqi", zzfxsVar.G());
            a2.b("aq_ad_duration", String.valueOf(zzfxsVar.H()));
            a2.b("aq_ad_bounce_cnt", String.valueOf(zzfxsVar.I()));
            a2.b("aq_time_away", String.valueOf(zzfxsVar.L()));
            return a2.d().equals(com.google.android.gms.ads.internal.util.client.zzt.zza);
        }
        zzdxd a3 = zzdxeVar.a();
        a3.b("action", "aq_ad_kill");
        a3.b("gqi", zzfxsVar.G());
        a3.b("aq_ad_duration", String.valueOf(zzfxsVar.H()));
        a3.b("aq_ad_bounce_cnt", String.valueOf(zzfxsVar.I()));
        a3.b("aq_time_away", String.valueOf(zzfxsVar.L()));
        a3.b("aq_is_os_kill", String.valueOf(zzfxsVar.K()));
        return a3.d().equals(com.google.android.gms.ads.internal.util.client.zzt.zza);
    }
}
