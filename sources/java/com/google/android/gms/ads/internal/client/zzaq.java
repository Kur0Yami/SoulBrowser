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
public final class zzaq extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f2992c;
    public final /* synthetic */ zzbsz d;
    public final /* synthetic */ zzaz e;

    public zzaq(zzaz zzazVar, Context context, String str, zzbsz zzbszVar) {
        this.b = context;
        this.f2992c = str;
        this.d = zzbszVar;
        this.e = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "native_ad");
        return new zzfi();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Context context = this.b;
        zzbgk.a(context);
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue();
        zzaz zzazVar = this.e;
        zzbsz zzbszVar = this.d;
        String str = this.f2992c;
        if (booleanValue) {
            try {
                IBinder zze = ((zzbu) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", zzap.f2991a)).zze(new ObjectWrapper(context), str, zzbszVar, ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                if (queryLocalInterface instanceof zzbt) {
                    return (zzbt) queryLocalInterface;
                }
                return new zzbr(zze);
            } catch (RemoteException e) {
                e = e;
                zzbxx c2 = zzbxv.c(context);
                zzazVar.g = c2;
                c2.a("ClientApiBroker.createAdLoaderBuilder", e);
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                zzbxx c22 = zzbxv.c(context);
                zzazVar.g = c22;
                c22.a("ClientApiBroker.createAdLoaderBuilder", e);
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                zzbxx c222 = zzbxv.c(context);
                zzazVar.g = c222;
                c222.a("ClientApiBroker.createAdLoaderBuilder", e);
                return null;
            }
        }
        return zzazVar.b.zza(context, str, zzbszVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzd(new ObjectWrapper(this.b), this.f2992c, this.d, ModuleDescriptor.MODULE_VERSION);
    }
}
