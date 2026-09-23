package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzbfp;
import com.google.android.gms.internal.ads.zzcir;
import com.google.android.gms.internal.ads.zzcjc;
import com.google.android.gms.internal.ads.zzeif;
import java.io.InputStream;
import java.util.Map;

/* loaded from: classes.dex */
public class zzz {
    @Nullable
    public CookieManager zza(Context context) {
        throw null;
    }

    public zzcjc zzb(zzcir zzcirVar, zzbfj zzbfjVar, boolean z, @Nullable zzeif zzeifVar) {
        throw null;
    }

    public WebResourceResponse zzc(String str, String str2, int i, String str3, Map map, InputStream inputStream) {
        throw null;
    }

    public boolean zzd(Activity activity, Configuration configuration) {
        return false;
    }

    public zzbfp.zzq zzf(Context context, TelephonyManager telephonyManager) {
        return zzbfp.zzq.ENUM_UNKNOWN;
    }

    public void zzg(Context context, String str, String str2) {
    }

    public boolean zzh(Context context, String str) {
        return false;
    }

    @Nullable
    public Intent zzi(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("app_package", activity.getPackageName());
        intent.putExtra("app_uid", activity.getApplicationInfo().uid);
        return intent;
    }

    public void zzj(Activity activity) {
    }

    public int zzk(AudioManager audioManager) {
        return 0;
    }

    public int zzm(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
    }
}
