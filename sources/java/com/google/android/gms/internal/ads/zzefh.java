package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzefh implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbza f6442a;
    public final /* synthetic */ zzbyr b;

    public zzefh(zzefw zzefwVar, zzbza zzbzaVar, zzbyr zzbyrVar) {
        this.f6442a = zzbzaVar;
        this.b = zzbyrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        Bundle bundle;
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) obj;
        try {
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue();
            zzbyr zzbyrVar = this.b;
            if (booleanValue) {
                boolean booleanValue2 = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J2)).booleanValue();
                zzbza zzbzaVar = this.f6442a;
                if (booleanValue2 && (bundle = zzbzaVar.q) != null) {
                    bundle.putLong("binder-call-start", com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                }
                zzbyrVar.d1(parcelFileDescriptor, zzbzaVar);
                return;
            }
            zzbyrVar.n3(parcelFileDescriptor);
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        try {
            this.b.K0(com.google.android.gms.ads.internal.util.zzba.zza(th));
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
        }
    }
}
