package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* loaded from: classes.dex */
final /* synthetic */ class zzerb implements zzdan {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzeqp f6838c;
    public final /* synthetic */ zzbqh f;

    public /* synthetic */ zzerb(zzeqp zzeqpVar, zzbqh zzbqhVar) {
        this.f6838c = zzeqpVar;
        this.f = zzbqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final /* synthetic */ void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.f6838c.S(zzeVar);
        zzbqh zzbqhVar = this.f;
        if (zzbqhVar != null) {
            try {
                zzbqhVar.c(zzeVar);
            } catch (RemoteException e) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
            }
        }
        if (zzbqhVar != null) {
            try {
                zzbqhVar.zzf(zzeVar.zza);
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e2);
            }
        }
    }
}
