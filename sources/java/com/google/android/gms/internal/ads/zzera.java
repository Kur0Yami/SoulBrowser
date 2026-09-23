package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzera {

    /* renamed from: a, reason: collision with root package name */
    public final zzerm f6836a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public zzdad f6837c;

    public zzera(zzerm zzermVar, String str) {
        this.f6836a = zzermVar;
        this.b = str;
    }

    public final synchronized boolean a() {
        boolean z;
        zzcvz zzcvzVar = this.f6836a.f;
        if (zzcvzVar != null) {
            if (zzcvzVar.f5521c) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    public final synchronized void b(com.google.android.gms.ads.internal.client.zzm zzmVar, int i) {
        this.f6837c = null;
        zzerg zzergVar = new zzerg(i);
        zzeqz zzeqzVar = new zzeqz(this);
        this.f6836a.a(zzmVar, this.b, zzergVar, zzeqzVar);
    }

    public final synchronized String c() {
        String str;
        str = null;
        try {
            zzdad zzdadVar = this.f6837c;
            if (zzdadVar != null) {
                str = zzdadVar.f5650c;
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
        return str;
    }

    public final synchronized String d() {
        String str;
        str = null;
        try {
            zzdad zzdadVar = this.f6837c;
            if (zzdadVar != null) {
                str = zzdadVar.f5650c;
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
        return str;
    }
}
