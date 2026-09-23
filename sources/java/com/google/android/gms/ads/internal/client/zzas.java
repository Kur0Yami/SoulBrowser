package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbxx;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzas extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbsz f2994c;
    public final /* synthetic */ zzaz d;

    public zzas(zzaz zzazVar, Context context, zzbsz zzbszVar) {
        this.b = context;
        this.f2994c = zzbszVar;
        this.d = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "ads_preloader");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        zzck zzciVar;
        Context context = this.b;
        ObjectWrapper objectWrapper = new ObjectWrapper(context);
        zzbgk.a(context);
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue();
        zzaz zzazVar = this.d;
        zzbsz zzbszVar = this.f2994c;
        if (booleanValue) {
            try {
                IBinder zze = ((zzcl) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl", zzar.f2993a)).zze(objectWrapper, zzbszVar, ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    zzciVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                    if (queryLocalInterface instanceof zzck) {
                        zzciVar = (zzck) queryLocalInterface;
                    } else {
                        zzciVar = new zzci(zze);
                    }
                }
                zzciVar.zzl(zzbszVar);
                return zzciVar;
            } catch (RemoteException e) {
                e = e;
                zzbxx c2 = zzbxv.c(context);
                zzazVar.g = c2;
                c2.a("ClientApiBroker.getAdPreloader", e);
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                zzbxx c22 = zzbxv.c(context);
                zzazVar.g = c22;
                c22.a("ClientApiBroker.getAdPreloader", e);
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                zzbxx c222 = zzbxv.c(context);
                zzazVar.g = c222;
                c222.a("ClientApiBroker.getAdPreloader", e);
                return null;
            }
        }
        return zzazVar.h.zza(context, zzbszVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzh(new ObjectWrapper(this.b), this.f2994c, ModuleDescriptor.MODULE_VERSION);
    }
}
