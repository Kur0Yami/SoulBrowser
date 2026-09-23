package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbxx;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzau extends zzba {
    public final /* synthetic */ Context b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzaz f2996c;

    public zzau(zzaz zzazVar, Context context) {
        this.b = context;
        Objects.requireNonNull(zzazVar);
        this.f2996c = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "mobile_ads_settings");
        return new zzfm();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Context context = this.b;
        zzbgk.a(context);
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue();
        zzaz zzazVar = this.f2996c;
        if (booleanValue) {
            try {
                IBinder zze = ((zzdc) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", zzat.f2995a)).zze(new ObjectWrapper(context), ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                if (queryLocalInterface instanceof zzdb) {
                    return (zzdb) queryLocalInterface;
                }
                return new zzcz(zze);
            } catch (RemoteException e) {
                e = e;
                zzbxx c2 = zzbxv.c(context);
                zzazVar.g = c2;
                c2.a("ClientApiBroker.getMobileAdsSettingsManager", e);
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                zzbxx c22 = zzbxv.c(context);
                zzazVar.g = c22;
                c22.a("ClientApiBroker.getMobileAdsSettingsManager", e);
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                zzbxx c222 = zzbxv.c(context);
                zzazVar.g = c222;
                c222.a("ClientApiBroker.getMobileAdsSettingsManager", e);
                return null;
            }
        }
        return zzazVar.f3002c.zza(context);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzi(new ObjectWrapper(this.b), ModuleDescriptor.MODULE_VERSION);
    }
}
