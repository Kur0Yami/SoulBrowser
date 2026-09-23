package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;

/* loaded from: classes.dex */
public final class zzefb {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6439a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzija f6440c;
    public final VersionInfoParcel d;
    public final zzeex e;
    public final zzdxe f;

    public zzefb(Context context, zzgyw zzgywVar, zzgyw zzgywVar2, zzija zzijaVar, VersionInfoParcel versionInfoParcel, zzeex zzeexVar, zzdxe zzdxeVar) {
        this.f6439a = zzgywVar;
        this.b = zzgywVar2;
        this.f6440c = zzijaVar;
        this.d = versionInfoParcel;
        this.e = zzeexVar;
        this.f = zzdxeVar;
    }

    public final void a() {
        try {
            ((zzefw) this.f6440c.zzb()).zzi(this.d.afmaVersion);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.xf)).booleanValue()) {
                zzdxd a2 = this.f.a();
                a2.b("action", "ptard");
                a2.b("ptard", "l");
                a2.c();
            }
        } catch (RemoteException | NullPointerException e) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.yf)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzh().f("Preconnect Local", e);
            }
        }
    }
}
