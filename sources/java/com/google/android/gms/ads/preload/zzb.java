package com.google.android.gms.ads.preload;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzck;
import com.google.android.gms.ads.internal.client.zzft;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class zzb {

    /* renamed from: a, reason: collision with root package name */
    public final zzck f3314a;
    public final AdFormat b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f3315c;

    public zzb(Context context, AdFormat adFormat) {
        this.f3314a = com.google.android.gms.ads.zzb.zza(context);
        this.f3315c = context.getApplicationContext();
        this.b = adFormat;
    }

    public final boolean zzb(String str, PreloadConfiguration preloadConfiguration, PreloadCallbackV2 preloadCallbackV2) {
        zza zzaVar;
        if (str == null) {
            return false;
        }
        zzft zzs = zzf.zzs(this.f3315c, preloadConfiguration, this.b);
        try {
            zzck zzckVar = this.f3314a;
            if (preloadCallbackV2 == null) {
                zzaVar = null;
            } else {
                zzaVar = new zza(this, preloadCallbackV2);
            }
            return zzckVar.zzm(str, zzs, zzaVar);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(str.length() + 37);
            sb.append("Failed to preload ad for preload ID ");
            sb.append(str);
            sb.append(".");
            zzo.zzj(sb.toString(), e);
            return false;
        }
    }

    public final boolean zzc(String str, PreloadConfiguration preloadConfiguration) {
        if (str == null) {
            return false;
        }
        try {
            return this.f3314a.zzm(str, zzf.zzs(this.f3315c, preloadConfiguration, this.b), null);
        } catch (RemoteException e) {
            StringBuilder sb = new StringBuilder(str.length() + 37);
            sb.append("Failed to preload ad for preload ID ");
            sb.append(str);
            sb.append(".");
            zzo.zzj(sb.toString(), e);
            return false;
        }
    }

    public final boolean zzd(String str) {
        try {
            return this.f3314a.zzn(this.b.getValue(), str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final int zze(String str) {
        try {
            return this.f3314a.zzt(this.b.getValue(), str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return 0;
        }
    }

    public final boolean zzf(String str) {
        try {
            return this.f3314a.zzu(this.b.getValue(), str);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void zzg() {
        try {
            this.f3314a.zzv(this.b.getValue());
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final Map zzh() {
        PreloadConfiguration zzq;
        try {
            Bundle zzs = this.f3314a.zzs(this.b.getValue());
            HashMap hashMap = new HashMap();
            for (String str : zzs.keySet()) {
                byte[] byteArray = zzs.getByteArray(str);
                if (byteArray != null && (zzq = zzf.zzq((zzft) SafeParcelableSerializer.deserializeFromBytes(byteArray, zzft.CREATOR))) != null) {
                    hashMap.put(str, zzq);
                }
            }
            return hashMap;
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return new HashMap();
        }
    }

    @Nullable
    public final PreloadConfiguration zzi(String str) {
        try {
            zzft zzr = this.f3314a.zzr(this.b.getValue(), str);
            if (zzr == null) {
                return null;
            }
            return zzf.zzq(zzr);
        } catch (RemoteException e) {
            zzo.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }
}
