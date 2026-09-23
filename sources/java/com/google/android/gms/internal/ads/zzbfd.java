package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfd implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbev f4605a;
    public final /* synthetic */ zzcdt b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbff f4606c;

    public zzbfd(zzbff zzbffVar, zzbev zzbevVar, zzcdt zzcdtVar) {
        this.f4605a = zzbevVar;
        this.b = zzcdtVar;
        this.f4606c = zzbffVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzbff zzbffVar = this.f4606c;
        synchronized (zzbffVar.f4609c) {
            try {
                if (zzbffVar.b) {
                    return;
                }
                zzbffVar.b = true;
                final zzbeu zzbeuVar = zzbffVar.f4608a;
                if (zzbeuVar == null) {
                    return;
                }
                zzgyw zzgywVar = zzcdo.f5068a;
                final zzbev zzbevVar = this.f4605a;
                final zzcdt zzcdtVar = this.b;
                final ListenableFuture E0 = ((zzgxi) zzgywVar).E0(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbfc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbes zzbesVar;
                        zzcdt zzcdtVar2 = zzcdtVar;
                        zzbeu zzbeuVar2 = zzbeuVar;
                        zzbfd zzbfdVar = zzbfd.this;
                        zzbff zzbffVar2 = zzbfdVar.f4606c;
                        try {
                            zzbex zzbexVar = (zzbex) zzbeuVar2.getService();
                            boolean d = zzbeuVar2.d();
                            zzbev zzbevVar2 = zzbevVar;
                            if (d) {
                                Parcel I1 = zzbexVar.I1();
                                zzbcd.c(I1, zzbevVar2);
                                Parcel f2 = zzbexVar.f2(2, I1);
                                zzbesVar = (zzbes) zzbcd.b(f2, zzbes.CREATOR);
                                f2.recycle();
                            } else {
                                Parcel I12 = zzbexVar.I1();
                                zzbcd.c(I12, zzbevVar2);
                                Parcel f22 = zzbexVar.f2(1, I12);
                                zzbesVar = (zzbes) zzbcd.b(f22, zzbes.CREATOR);
                                f22.recycle();
                            }
                            if (!zzbesVar.zza()) {
                                zzcdtVar2.b(new RuntimeException("No entry contents."));
                                zzbffVar2.a();
                                return;
                            }
                            zzbfa zzbfaVar = new zzbfa(zzbfdVar, zzbesVar.F());
                            int read = zzbfaVar.read();
                            if (read != -1) {
                                zzbfaVar.unread(read);
                                zzcdtVar2.a(new zzbfh(zzbfaVar, zzbesVar.zzd(), zzbesVar.k0(), zzbesVar.X(), zzbesVar.G()));
                                return;
                            }
                            throw new IOException("Unable to read from cache.");
                        } catch (RemoteException e) {
                            e = e;
                            int i = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to obtain a cache service instance.", e);
                            zzcdtVar2.b(e);
                            zzbffVar2.a();
                        } catch (IOException e2) {
                            e = e2;
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to obtain a cache service instance.", e);
                            zzcdtVar2.b(e);
                            zzbffVar2.a();
                        }
                    }
                });
                zzcdtVar.f5072c.k(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbfb
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        if (zzcdt.this.isCancelled()) {
                            E0.cancel(true);
                        }
                    }
                }, zzcdo.g);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
    }
}
