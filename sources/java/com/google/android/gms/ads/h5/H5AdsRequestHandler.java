package com.google.android.gms.ads.h5;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbou;
import com.google.android.gms.internal.ads.zzbsv;

/* loaded from: classes.dex */
public final class H5AdsRequestHandler {

    /* renamed from: a, reason: collision with root package name */
    public final zzbou f2968a;

    public H5AdsRequestHandler(@NonNull Context context, @NonNull OnH5AdsEventListener onH5AdsEventListener) {
        this.f2968a = new zzbou(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        zzbou zzbouVar = this.f2968a;
        zzbouVar.getClass();
        if (((Boolean) zzbd.zzc().a(zzbgk.nb)).booleanValue()) {
            if (zzbouVar.f4808c == null) {
                zzbouVar.f4808c = zzbb.zzb().zzl(zzbouVar.f4807a, new zzbsv(), zzbouVar.b);
            }
            zzboq zzboqVar = zzbouVar.f4808c;
            if (zzboqVar != null) {
                try {
                    zzboqVar.zzf();
                } catch (RemoteException e) {
                    zzo.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public boolean handleH5AdsRequest(@NonNull String str) {
        zzbou zzbouVar = this.f2968a;
        zzbouVar.getClass();
        if (zzbou.a(str)) {
            if (zzbouVar.f4808c == null) {
                zzbouVar.f4808c = zzbb.zzb().zzl(zzbouVar.f4807a, new zzbsv(), zzbouVar.b);
            }
            zzboq zzboqVar = zzbouVar.f4808c;
            if (zzboqVar != null) {
                try {
                    zzboqVar.zze(str);
                    return true;
                } catch (RemoteException e) {
                    zzo.zzl("#007 Could not call remote method.", e);
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public boolean shouldInterceptRequest(@NonNull String str) {
        return zzbou.a(str);
    }
}
