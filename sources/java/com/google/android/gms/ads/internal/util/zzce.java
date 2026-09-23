package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.WebSettings;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.SharedPreferencesUtils;

/* loaded from: classes.dex */
public final class zzce {
    public static zzce b;

    /* renamed from: a, reason: collision with root package name */
    public String f3142a;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.ads.internal.util.zzce, java.lang.Object] */
    public static zzce zza() {
        if (b == null) {
            b = new Object();
        }
        return b;
    }

    public final void zzb(Context context) {
        zze.zza("Updating user agent.");
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(this.f3142a)) {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (!ClientLibraryUtils.isPackageSide()) {
                if (remoteContext == null) {
                    remoteContext = null;
                }
                this.f3142a = defaultUserAgent;
            }
            SharedPreferences.Editor putString = context.getSharedPreferences("admob_user_agent", 0).edit().putString("user_agent", WebSettings.getDefaultUserAgent(context));
            if (remoteContext == null) {
                putString.apply();
            } else {
                SharedPreferencesUtils.publishWorldReadableSharedPreferences(context, putString, "admob_user_agent");
            }
            this.f3142a = defaultUserAgent;
        }
        zze.zza("User agent is updated.");
    }
}
