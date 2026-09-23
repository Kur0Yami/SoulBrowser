package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbqa extends zzbcc implements zzbqb {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzbqe] */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r8v7, types: [com.google.android.gms.internal.ads.zzdrr] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzdnj zzdnjVar;
        com.google.android.gms.ads.internal.client.zzed zzedVar = null;
        r5 = null;
        r5 = null;
        zzbjv zzbjvVar = null;
        zzbqe zzbqeVar = null;
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i != 6) {
                        if (i != 7) {
                            return false;
                        }
                        zzdrr zzdrrVar = (zzdrr) this;
                        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
                        if (zzdrrVar.h) {
                            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzf("getVideoController: Instream ad should not be used after destroyed");
                        } else {
                            zzdnh zzdnhVar = zzdrrVar.g;
                            if (zzdnhVar != null && (zzdnjVar = zzdnhVar.F) != null) {
                                synchronized (zzdnjVar) {
                                    zzbjvVar = zzdnjVar.f5937a;
                                }
                            }
                        }
                        parcel2.writeNoException();
                        zzbcd.e(parcel2, zzbjvVar);
                    } else {
                        IObjectWrapper g = a.g(parcel, parcel);
                        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
                        ((zzdrr) this).c5(g, new zzbcc("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback"));
                        parcel2.writeNoException();
                    }
                } else {
                    IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                    IBinder readStrongBinder = parcel.readStrongBinder();
                    if (readStrongBinder != null) {
                        IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                        if (queryLocalInterface instanceof zzbqe) {
                            zzbqeVar = (zzbqe) queryLocalInterface;
                        } else {
                            zzbqeVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                        }
                    }
                    zzbcd.f(parcel);
                    ((zzdrr) this).c5(I1, zzbqeVar);
                    parcel2.writeNoException();
                }
            } else {
                zzdrr zzdrrVar2 = (zzdrr) this;
                Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
                zzdrrVar2.d5();
                zzdnh zzdnhVar2 = zzdrrVar2.g;
                if (zzdnhVar2 != null) {
                    zzdnhVar2.q();
                }
                zzdrrVar2.g = null;
                zzdrrVar2.f6074c = null;
                zzdrrVar2.f = null;
                zzdrrVar2.h = true;
                parcel2.writeNoException();
            }
        } else {
            zzdrr zzdrrVar3 = (zzdrr) this;
            Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
            if (zzdrrVar3.h) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("getVideoController: Instream ad should not be used after destroyed");
            } else {
                zzedVar = zzdrrVar3.f;
            }
            parcel2.writeNoException();
            zzbcd.e(parcel2, zzedVar);
        }
        return true;
    }
}
