package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzfjh {
    public static void a(int i, String str, Throwable th) {
        String r = androidx.work.impl.workers.a.r(i, "Ad failed to load : ", new StringBuilder(String.valueOf(i).length() + 20));
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh(r);
        com.google.android.gms.ads.internal.util.zze.zzb(str, th);
        if (i == 3) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzh().g(str, th);
    }

    public static void b(Context context, boolean z) {
        if (z) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("This request is sent from a test device.");
            return;
        }
        com.google.android.gms.ads.internal.client.zzbb.zza();
        String zzD = com.google.android.gms.ads.internal.util.client.zzf.zzD(context);
        String q = android.support.v4.media.a.q(new StringBuilder(String.valueOf(zzD).length() + 102), "Use RequestConfiguration.Builder().setTestDeviceIds(Arrays.asList(\"", zzD, "\")) to get test ads on this device.");
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzh(q);
    }
}
