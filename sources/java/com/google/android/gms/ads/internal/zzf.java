package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.a;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbrz;
import com.google.android.gms.internal.ads.zzbsc;
import com.google.android.gms.internal.ads.zzbsf;
import com.google.android.gms.internal.ads.zzbsj;
import com.google.android.gms.internal.ads.zzccv;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzcdr;
import com.google.android.gms.internal.ads.zzcdt;
import com.google.android.gms.internal.ads.zzdxd;
import com.google.android.gms.internal.ads.zzdxe;
import com.google.android.gms.internal.ads.zzfne;
import com.google.android.gms.internal.ads.zzfnr;
import com.google.android.gms.internal.ads.zzgxu;
import com.google.android.gms.internal.ads.zzgym;
import com.google.android.gms.internal.ads.zzgyw;
import com.google.common.util.concurrent.ListenableFuture;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public Context f3171a;
    public long b = 0;

    public static final void b(zzdxe zzdxeVar, String str, long j) {
        if (zzdxeVar != null) {
            if (((Boolean) zzbd.zzc().a(zzbgk.Zd)).booleanValue()) {
                zzdxd a2 = zzdxeVar.a();
                a2.b("action", "lat_init");
                a2.b(str, Long.toString(j));
                a2.c();
            }
        }
    }

    public final void a(Context context, VersionInfoParcel versionInfoParcel, boolean z, zzccv zzccvVar, String str, String str2, Runnable runnable, final zzfnr zzfnrVar, final zzdxe zzdxeVar, final Long l, boolean z2) {
        PackageInfo packageInfo;
        if (zzt.zzk().elapsedRealtime() - this.b < 5000) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Not retrying to fetch app settings");
            return;
        }
        this.b = zzt.zzk().elapsedRealtime();
        if (zzccvVar != null && !TextUtils.isEmpty(zzccvVar.e)) {
            if (zzt.zzk().currentTimeMillis() - zzccvVar.f <= ((Long) zzbd.zzc().a(zzbgk.Y4)).longValue() && zzccvVar.h) {
                return;
            }
        }
        if (context == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Context not provided to fetch application settings");
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("App settings could not be fetched. Required parameters missing");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.f3171a = applicationContext;
        final zzfne o = a.o(context, 4);
        o.zza();
        zzbsf b = zzt.zzr().b(this.f3171a, versionInfoParcel, zzfnrVar);
        zzbrz zzbrzVar = zzbsc.f4867a;
        zzbsj a2 = b.a("google.afma.config.fetchAppSettings", zzbrzVar, zzbrzVar);
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("app_id", str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("ad_unit_id", str2);
            }
            jSONObject.put("is_init", z);
            jSONObject.put("pn", context.getPackageName());
            zzbgb zzbgbVar = zzbgk.f4658a;
            jSONObject.put("experiment_ids", TextUtils.join(",", zzbd.zzb().a()));
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            if (((Boolean) zzbd.zzc().a(zzbgk.Ra)).booleanValue()) {
                jSONObject.put("inspector_enabled", z2);
            }
            try {
                ApplicationInfo applicationInfo = this.f3171a.getApplicationInfo();
                if (applicationInfo != null && (packageInfo = Wrappers.packageManager(context).getPackageInfo(applicationInfo.packageName, 0)) != null) {
                    jSONObject.put("version", packageInfo.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                com.google.android.gms.ads.internal.util.zze.zza("Error fetching PackageInfo.");
            }
            ListenableFuture a3 = a2.a(jSONObject);
            zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.ads.internal.zzd
                @Override // com.google.android.gms.internal.ads.zzgxu
                public final /* synthetic */ ListenableFuture zza(Object obj) {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    boolean optBoolean = jSONObject2.optBoolean("isSuccessful", false);
                    if (optBoolean) {
                        zzt.zzh().i().zzh(jSONObject2.getString("appSettingsJson"));
                        Long l2 = l;
                        if (l2 != null) {
                            zzf.b(zzdxeVar, "cld_s", zzt.zzk().elapsedRealtime() - l2.longValue());
                        }
                    }
                    String optString = jSONObject2.optString("errorReason", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    boolean isEmpty = TextUtils.isEmpty(optString);
                    zzfne zzfneVar = o;
                    if (!isEmpty) {
                        zzfneVar.zzk(optString);
                    }
                    zzfneVar.zzd(optBoolean);
                    zzfnrVar.b(zzfneVar.zzm());
                    return zzgym.a(null);
                }
            };
            zzgyw zzgywVar = zzcdo.g;
            ListenableFuture h = zzgym.h(a3, zzgxuVar, zzgywVar);
            if (runnable != null) {
                ((zzcdt) a3).f5072c.k(runnable, zzgywVar);
            }
            if (l != null) {
                ((zzcdt) a3).f5072c.k(new Runnable() { // from class: com.google.android.gms.ads.internal.zze
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzf.b(zzdxe.this, "cld_r", zzt.zzk().elapsedRealtime() - l.longValue());
                    }
                }, zzgywVar);
            }
            if (((Boolean) zzbd.zzc().a(zzbgk.G8)).booleanValue()) {
                zzcdr.b(h, "ConfigLoader.maybeFetchNewAppSettings");
            } else {
                zzcdr.a(h, "ConfigLoader.maybeFetchNewAppSettings");
            }
        } catch (Exception e) {
            int i4 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error requesting application settings", e);
            o.a(e);
            o.zzd(false);
            zzfnrVar.b(o.zzm());
        }
    }

    public final void zza(Context context, VersionInfoParcel versionInfoParcel, String str, @Nullable Runnable runnable, zzfnr zzfnrVar, @Nullable zzdxe zzdxeVar, @Nullable Long l, boolean z) {
        a(context, versionInfoParcel, true, null, str, null, runnable, zzfnrVar, zzdxeVar, l, z);
    }

    public final void zzb(Context context, VersionInfoParcel versionInfoParcel, String str, zzccv zzccvVar, zzfnr zzfnrVar, boolean z) {
        String str2;
        if (zzccvVar != null) {
            str2 = zzccvVar.d;
        } else {
            str2 = null;
        }
        a(context, versionInfoParcel, false, zzccvVar, str2, str, null, zzfnrVar, null, null, z);
    }
}
