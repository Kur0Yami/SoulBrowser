package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzeff implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbyj f6441a;
    public final /* synthetic */ zzbys b;

    public zzeff(zzefw zzefwVar, zzbys zzbysVar, zzbyj zzbyjVar) {
        this.b = zzbysVar;
        this.f6441a = zzbyjVar;
        Objects.requireNonNull(zzefwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        String str = (String) obj;
        try {
            zzbys zzbysVar = this.b;
            zzbyj zzbyjVar = this.f6441a;
            Parcel I1 = zzbysVar.I1();
            I1.writeString(str);
            zzbcd.c(I1, zzbyjVar);
            zzbysVar.r2(1, I1);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        try {
            zzbys zzbysVar = this.b;
            com.google.android.gms.ads.internal.util.zzba zza = com.google.android.gms.ads.internal.util.zzba.zza(th);
            Parcel I1 = zzbysVar.I1();
            zzbcd.c(I1, zza);
            zzbysVar.r2(2, I1);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
        }
    }
}
