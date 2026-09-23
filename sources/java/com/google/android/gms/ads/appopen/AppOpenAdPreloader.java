package com.google.android.gms.ads.appopen;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzeo;
import com.google.android.gms.ads.internal.client.zzex;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.preload.PreloadCallbackV2;
import com.google.android.gms.ads.preload.PreloadConfiguration;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class AppOpenAdPreloader {
    public static zzeo a() {
        zzeo zzeoVar = (zzeo) zzex.zzb().zza(AdFormat.APP_OPEN_AD);
        if (zzeoVar == null) {
            zzo.zzi("Failed to get a preloader. Call MobileAds.initialize() prior to calling preload APIs.");
        }
        return zzeoVar;
    }

    public static boolean destroy(@NonNull String str) {
        zzeo a2 = a();
        if (a2 == null) {
            return false;
        }
        return a2.zzf(str);
    }

    public static void destroyAll() {
        zzeo a2 = a();
        if (a2 != null) {
            a2.zzg();
        }
    }

    @Nullable
    @Deprecated
    public static PreloadConfiguration getConfiguration(@NonNull String str) {
        zzeo a2 = a();
        if (a2 == null) {
            return null;
        }
        return a2.zzi(str);
    }

    @NonNull
    @Deprecated
    public static Map<String, PreloadConfiguration> getConfigurations() {
        zzeo a2 = a();
        if (a2 == null) {
            return new HashMap();
        }
        return a2.zzh();
    }

    public static int getNumAdsAvailable(@NonNull String str) {
        zzeo a2 = a();
        if (a2 == null) {
            return 0;
        }
        return a2.zze(str);
    }

    public static boolean isAdAvailable(@NonNull String str) {
        zzeo a2 = a();
        if (a2 == null) {
            return false;
        }
        return a2.zzd(str);
    }

    @Nullable
    public static AppOpenAd pollAd(@NonNull String str) {
        zzeo a2 = a();
        if (a2 == null) {
            return null;
        }
        return a2.zza(str);
    }

    public static boolean start(@NonNull String str, @NonNull PreloadConfiguration preloadConfiguration) {
        zzeo a2 = a();
        if (a2 == null) {
            return false;
        }
        return a2.zzc(str, preloadConfiguration);
    }

    public static boolean start(@NonNull String str, @NonNull PreloadConfiguration preloadConfiguration, @NonNull PreloadCallbackV2 preloadCallbackV2) {
        zzeo a2 = a();
        if (a2 == null) {
            return false;
        }
        return a2.zzb(str, preloadConfiguration, preloadCallbackV2);
    }
}
