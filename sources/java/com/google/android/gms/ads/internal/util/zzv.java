package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbfj;
import com.google.android.gms.internal.ads.zzbfp;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcir;
import com.google.android.gms.internal.ads.zzcjc;
import com.google.android.gms.internal.ads.zzckf;
import com.google.android.gms.internal.ads.zzeif;

@TargetApi(26)
/* loaded from: classes.dex */
public class zzv extends zzu {
    @Override // com.google.android.gms.ads.internal.util.zzt, com.google.android.gms.ads.internal.util.zzz
    public final zzcjc zzb(zzcir zzcirVar, zzbfj zzbfjVar, boolean z, @Nullable zzeif zzeifVar) {
        return new zzckf(zzcirVar, zzbfjVar, z, zzeifVar);
    }

    @Override // com.google.android.gms.ads.internal.util.zzz
    public final zzbfp.zzq zzf(Context context, TelephonyManager telephonyManager) {
        com.google.android.gms.ads.internal.zzt.zzc();
        boolean zzF = zzs.zzF(context, "android.permission.ACCESS_NETWORK_STATE");
        zzbfp.zzq zzqVar = zzbfp.zzq.ENUM_FALSE;
        if (zzF && telephonyManager.isDataEnabled()) {
            return zzbfp.zzq.ENUM_TRUE;
        }
        return zzqVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzz
    public final void zzg(Context context, String str, String str2) {
        NotificationChannel notificationChannel = new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J9)).intValue());
        notificationChannel.setShowBadge(false);
        ((NotificationManager) context.getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
    }

    @Override // com.google.android.gms.ads.internal.util.zzz
    public final boolean zzh(Context context, String str) {
        NotificationChannel notificationChannel = ((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationChannel("offline_notification_channel");
        if (notificationChannel == null || notificationChannel.getImportance() != 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.ads.internal.util.zzz
    @Nullable
    public final Intent zzi(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", activity.getPackageName());
        return intent;
    }
}
