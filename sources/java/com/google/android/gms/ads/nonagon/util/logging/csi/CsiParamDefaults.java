package com.google.android.gms.ads.nonagon.util.logging.csi;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgb;
import com.google.android.gms.internal.ads.zzbgk;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class CsiParamDefaults {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3304a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3305c;

    public CsiParamDefaults(@NonNull Context context, @NonNull VersionInfoParcel versionInfoParcel) {
        this.f3304a = context;
        this.b = context.getPackageName();
        this.f3305c = versionInfoParcel.afmaVersion;
    }

    public void set(@NonNull Map<String, String> map) {
        String str;
        map.put("s", "gmob_sdk");
        map.put("v", "3");
        map.put("os", Build.VERSION.RELEASE);
        map.put("api_v", Build.VERSION.SDK);
        zzt.zzc();
        map.put("device", zzs.zzv());
        map.put("app", this.b);
        zzt.zzc();
        Context context = this.f3304a;
        String str2 = "1";
        if (true == zzs.zzJ(context)) {
            str = "1";
        } else {
            str = "0";
        }
        map.put("is_lite_sdk", str);
        zzbgb zzbgbVar = zzbgk.f4658a;
        ArrayList b = zzbd.zzb().b();
        if (((Boolean) zzbd.zzc().a(zzbgk.I7)).booleanValue()) {
            b.addAll(zzt.zzh().i().zzi().i);
        }
        map.put("e", TextUtils.join(",", b));
        map.put("sdkVersion", this.f3305c);
        if (((Boolean) zzbd.zzc().a(zzbgk.Ic)).booleanValue()) {
            zzt.zzc();
            if (true != zzs.zzG(context)) {
                str2 = "0";
            }
            map.put("is_bstar", str2);
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.Ma)).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.V2)).booleanValue()) {
                String str3 = zzt.zzh().g;
                if (str3 == null) {
                    str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                map.put("plugin", str3);
            }
        }
    }
}
