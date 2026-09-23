package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbxx;

/* loaded from: classes.dex */
public final class zzk extends RemoteCreator {

    /* renamed from: a, reason: collision with root package name */
    public zzbxx f3047a;

    public zzk() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (queryLocalInterface instanceof zzby) {
            return (zzby) queryLocalInterface;
        }
        return new zzby(iBinder);
    }

    @Nullable
    public final zzbx zza(Context context, zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        zzbgk.a(context);
        if (((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue()) {
            try {
                IBinder zze = ((zzby) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", zzj.f3046a)).zze(new ObjectWrapper(context), zzrVar, str, zzbszVar, ModuleDescriptor.MODULE_VERSION, i);
                if (zze != null) {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (queryLocalInterface instanceof zzbx) {
                        return (zzbx) queryLocalInterface;
                    }
                    return new zzbv(zze);
                }
            } catch (RemoteException e) {
                e = e;
                Throwable th = e;
                zzbxx c2 = zzbxv.c(context);
                this.f3047a = c2;
                c2.a("AdManagerCreator.newAdManagerByDynamiteLoader", th);
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", th);
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e2) {
                e = e2;
                Throwable th2 = e;
                zzbxx c22 = zzbxv.c(context);
                this.f3047a = c22;
                c22.a("AdManagerCreator.newAdManagerByDynamiteLoader", th2);
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", th2);
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                Throwable th22 = e;
                zzbxx c222 = zzbxv.c(context);
                this.f3047a = c222;
                c222.a("AdManagerCreator.newAdManagerByDynamiteLoader", th22);
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", th22);
                return null;
            }
        } else {
            try {
                IBinder zze2 = ((zzby) getRemoteCreatorInstance(context)).zze(new ObjectWrapper(context), zzrVar, str, zzbszVar, ModuleDescriptor.MODULE_VERSION, i);
                if (zze2 != null) {
                    IInterface queryLocalInterface2 = zze2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                    if (queryLocalInterface2 instanceof zzbx) {
                        return (zzbx) queryLocalInterface2;
                    }
                    return new zzbv(zze2);
                }
            } catch (RemoteException e4) {
                e = e4;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Could not create remote AdManager.", e);
                return null;
            } catch (RemoteCreator.RemoteCreatorException e5) {
                e = e5;
                com.google.android.gms.ads.internal.util.client.zzo.zze("Could not create remote AdManager.", e);
                return null;
            }
        }
        return null;
    }
}
