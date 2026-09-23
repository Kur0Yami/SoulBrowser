package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzeyk implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final ApplicationInfo f7085a;
    public final PackageInfo b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7086c;

    public zzeyk(ApplicationInfo applicationInfo, PackageInfo packageInfo, Context context) {
        this.f7085a = applicationInfo;
        this.b = packageInfo;
        this.f7086c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        Integer valueOf;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        InstallSourceInfo installSourceInfo;
        String initiatingPackageName;
        Context context = this.f7086c;
        String str6 = this.f7085a.packageName;
        String str7 = null;
        PackageInfo packageInfo = this.b;
        if (packageInfo == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(packageInfo.versionCode);
        }
        if (packageInfo == null) {
            str = null;
        } else {
            str = packageInfo.versionName;
        }
        try {
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            str2 = String.valueOf(Wrappers.packageManager(context).getApplicationLabel(str6));
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.fe)).booleanValue()) {
                try {
                    installSourceInfo = context.getPackageManager().getInstallSourceInfo(str6);
                } catch (PackageManager.NameNotFoundException e) {
                    e = e;
                    str5 = null;
                }
                if (installSourceInfo != null) {
                    str5 = installSourceInfo.getInstallingPackageName();
                    try {
                        if (TextUtils.isEmpty(str5)) {
                            com.google.android.gms.ads.internal.util.zze.zza("No installing package name found");
                            str5 = null;
                        }
                        initiatingPackageName = installSourceInfo.getInitiatingPackageName();
                    } catch (PackageManager.NameNotFoundException e2) {
                        e = e2;
                    }
                    try {
                    } catch (PackageManager.NameNotFoundException e3) {
                        e = e3;
                        str7 = initiatingPackageName;
                        com.google.android.gms.ads.internal.zzt.zzh().f("PackageInfoSignalSource.getInstallSourceInfo", e);
                        str4 = str7;
                        str3 = str5;
                        return zzgym.a(new zzeyl(str6, valueOf, str, str2, str3, str4));
                    }
                    if (TextUtils.isEmpty(initiatingPackageName)) {
                        com.google.android.gms.ads.internal.util.zze.zza("No initiating package name found");
                        str4 = str7;
                        str3 = str5;
                        return zzgym.a(new zzeyl(str6, valueOf, str, str2, str3, str4));
                    }
                    str4 = initiatingPackageName;
                    str3 = str5;
                    return zzgym.a(new zzeyl(str6, valueOf, str, str2, str3, str4));
                }
            }
        }
        str3 = null;
        str4 = null;
        return zzgym.a(new zzeyl(str6, valueOf, str, str2, str3, str4));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 29;
    }
}
