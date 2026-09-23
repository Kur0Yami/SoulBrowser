package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzbzd {

    /* renamed from: a, reason: collision with root package name */
    public int f4982a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4983c;
    public final boolean d;
    public final String e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final String i;
    public final String j;
    public final float k;
    public final int l;
    public final int m;
    public final String n;

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(1:3)(1:35)|4|(1:6)(1:34)|7|(3:28|29|(7:31|10|11|12|(1:14)|16|(2:20|21)(1:23)))|9|10|11|12|(0)|16|(1:24)(3:18|20|21)) */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ad A[Catch: Exception -> 0x00d5, TRY_LEAVE, TryCatch #1 {Exception -> 0x00d5, blocks: (B:12:0x009f, B:14:0x00ad), top: B:11:0x009f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbzd(android.content.Context r8) {
        /*
            r7 = this;
            r7.<init>()
            android.content.pm.PackageManager r0 = r8.getPackageManager()
            com.google.android.gms.internal.ads.zzbgk.a(r8)
            r7.b(r8)
            r7.c(r8)
            r7.d(r8)
            java.util.Locale r1 = java.util.Locale.getDefault()
            java.lang.String r2 = "geo:0,0?q=donuts"
            android.content.pm.ResolveInfo r2 = e(r0, r2)
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L23
            r2 = r4
            goto L24
        L23:
            r2 = r3
        L24:
            r7.f4983c = r2
            java.lang.String r2 = "http://www.google.com"
            android.content.pm.ResolveInfo r2 = e(r0, r2)
            if (r2 == 0) goto L30
            r2 = r4
            goto L31
        L30:
            r2 = r3
        L31:
            r7.d = r2
            java.lang.String r2 = r1.getCountry()
            r7.e = r2
            com.google.android.gms.ads.internal.zzt.zzc()
            com.google.android.gms.ads.internal.client.zzbb.zza()
            boolean r2 = com.google.android.gms.ads.internal.util.client.zzf.zzw()
            r7.f = r2
            boolean r2 = com.google.android.gms.common.util.DeviceProperties.isLatchsky(r8)
            r7.g = r2
            boolean r2 = com.google.android.gms.common.util.DeviceProperties.isSidewinder(r8)
            r7.h = r2
            java.lang.String r1 = r1.getLanguage()
            r7.i = r1
            java.lang.String r1 = "market://details?id=com.google.android.gms.ads"
            android.content.pm.ResolveInfo r0 = e(r0, r1)
            java.lang.String r1 = "."
            r2 = 0
            if (r0 != 0) goto L64
        L62:
            r0 = r2
            goto L9d
        L64:
            android.content.pm.ActivityInfo r0 = r0.activityInfo
            if (r0 != 0) goto L69
            goto L62
        L69:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r5 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            java.lang.String r6 = r0.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            android.content.pm.PackageInfo r3 = r5.getPackageInfo(r6, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            if (r3 == 0) goto L62
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            java.lang.String r0 = r0.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            java.lang.String r5 = java.lang.String.valueOf(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            int r5 = r5.length()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            int r5 = r5 + r4
            java.lang.String r6 = java.lang.String.valueOf(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            int r6 = r6.length()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            int r5 = r5 + r6
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            r6.<init>(r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            r6.append(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            r6.append(r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            r6.append(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            java.lang.String r0 = r6.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
        L9d:
            r7.j = r0
            com.google.android.gms.common.wrappers.PackageManagerWrapper r0 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r8)     // Catch: java.lang.Exception -> Ld5
            java.lang.String r3 = "com.android.vending"
            r5 = 128(0x80, float:1.8E-43)
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r3, r5)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto Ld5
            int r3 = r0.versionCode     // Catch: java.lang.Exception -> Ld5
            java.lang.String r0 = r0.packageName     // Catch: java.lang.Exception -> Ld5
            java.lang.String r5 = java.lang.String.valueOf(r3)     // Catch: java.lang.Exception -> Ld5
            int r5 = r5.length()     // Catch: java.lang.Exception -> Ld5
            int r5 = r5 + r4
            java.lang.String r4 = java.lang.String.valueOf(r0)     // Catch: java.lang.Exception -> Ld5
            int r4 = r4.length()     // Catch: java.lang.Exception -> Ld5
            int r5 = r5 + r4
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Ld5
            r4.<init>(r5)     // Catch: java.lang.Exception -> Ld5
            r4.append(r3)     // Catch: java.lang.Exception -> Ld5
            r4.append(r1)     // Catch: java.lang.Exception -> Ld5
            r4.append(r0)     // Catch: java.lang.Exception -> Ld5
            java.lang.String r2 = r4.toString()     // Catch: java.lang.Exception -> Ld5
        Ld5:
            r7.n = r2
            android.content.res.Resources r8 = r8.getResources()
            if (r8 != 0) goto Lde
            goto Lf0
        Lde:
            android.util.DisplayMetrics r8 = r8.getDisplayMetrics()
            if (r8 == 0) goto Lf0
            float r0 = r8.density
            r7.k = r0
            int r0 = r8.widthPixels
            r7.l = r0
            int r8 = r8.heightPixels
            r7.m = r8
        Lf0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbzd.<init>(android.content.Context):void");
    }

    public static ResolveInfo e(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().f("DeviceInfo.getResolveInfo", th);
            return null;
        }
    }

    public final zzbze a() {
        return new zzbze(this.f4983c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.n, this.f4982a, this.b, this.k, this.l, this.m);
    }

    public final void b(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                audioManager.getMode();
                audioManager.isMusicActive();
                audioManager.isSpeakerphoneOn();
                audioManager.getStreamVolume(3);
                audioManager.getRingerMode();
                audioManager.getStreamVolume(2);
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzh().f("DeviceInfo.gatherAudioInfo", th);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(android.content.Context r5) {
        /*
            r4 = this;
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r5.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r5.getSystemService(r1)
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1
            r0.getNetworkOperator()
            boolean r2 = com.google.android.gms.common.util.PlatformVersion.isAtLeastR()
            if (r2 == 0) goto L2d
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.Q9
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.a(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L2d
            r2 = 0
            goto L31
        L2d:
            int r2 = r0.getNetworkType()
        L31:
            r4.b = r2
            r0.getPhoneType()
            r0 = -2
            r4.f4982a = r0
            com.google.android.gms.ads.internal.zzt.zzc()
            java.lang.String r0 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r5 = com.google.android.gms.ads.internal.util.zzs.zzF(r5, r0)
            if (r5 == 0) goto L5e
            android.net.NetworkInfo r5 = r1.getActiveNetworkInfo()
            if (r5 == 0) goto L58
            int r0 = r5.getType()
            r4.f4982a = r0
            android.net.NetworkInfo$DetailedState r5 = r5.getDetailedState()
            r5.ordinal()
            goto L5b
        L58:
            r5 = -1
            r4.f4982a = r5
        L5b:
            r1.isActiveNetworkMetered()
        L5e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbzd.c(android.content.Context):void");
    }

    public final void d(Context context) {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rc)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            registerReceiver = context.registerReceiver(null, intentFilter, 4);
        } else {
            registerReceiver = context.registerReceiver(null, intentFilter);
        }
        if (registerReceiver != null) {
            registerReceiver.getIntExtra("status", -1);
            registerReceiver.getIntExtra("level", -1);
            registerReceiver.getIntExtra("scale", -1);
        }
    }

    public zzbzd(Context context, zzbze zzbzeVar) {
        zzbgk.a(context);
        b(context);
        c(context);
        d(context);
        String str = Build.FINGERPRINT;
        String str2 = Build.DEVICE;
        zzbhl.a(context);
        this.f4983c = zzbzeVar.f4984a;
        this.d = zzbzeVar.b;
        this.e = zzbzeVar.f4985c;
        this.f = zzbzeVar.d;
        this.g = zzbzeVar.e;
        this.h = zzbzeVar.f;
        this.i = zzbzeVar.g;
        this.j = zzbzeVar.h;
        this.n = zzbzeVar.i;
        this.k = zzbzeVar.l;
        this.l = zzbzeVar.m;
        this.m = zzbzeVar.n;
    }
}
