package com.google.android.gms.ads.internal.util;

import android.util.Log;
import com.google.android.gms.internal.ads.zzbim;

/* loaded from: classes.dex */
public final class zze extends com.google.android.gms.ads.internal.util.client.zzo {
    public static final /* synthetic */ int zza = 0;

    public static void zza(String str) {
        if (zzc()) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : com.google.android.gms.ads.internal.util.client.zzo.f3087a.c(str)) {
                    if (z) {
                        Log.v("Ads", str2);
                    } else {
                        Log.v("Ads-cont", str2);
                    }
                    z = false;
                }
                return;
            }
            Log.v("Ads", str);
        }
    }

    public static void zzb(String str, Throwable th) {
        if (zzc()) {
            Log.v("Ads", str, th);
        }
    }

    public static boolean zzc() {
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2) && ((Boolean) zzbim.f4719a.c()).booleanValue()) {
            return true;
        }
        return false;
    }
}
