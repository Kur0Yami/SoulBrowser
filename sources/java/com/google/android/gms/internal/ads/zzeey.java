package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzeey implements zzedk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzefb f6435a;

    public zzeey(zzefb zzefbVar) {
        this.f6435a = zzefbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedk
    public final void a(RemoteException remoteException) {
        this.f6435a.a();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.yf)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().f("Preconnect Remote", remoteException);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedk
    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.xf)).booleanValue()) {
            zzdxd a2 = this.f6435a.f.a();
            a2.b("action", "ptard");
            a2.b("ptard", "r");
            a2.c();
        }
    }
}
