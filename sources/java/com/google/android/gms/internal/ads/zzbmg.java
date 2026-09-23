package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class zzbmg implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f4768a = Pattern.compile("^[a-zA-Z]([a-zA-Z0-9]|:|-|_)*$");
    public static final Pattern b = Pattern.compile("^[0-9]*(,[0-9]*)*$");

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        String str = (String) map.get("action");
        boolean equals = "tick".equals(str);
        Pattern pattern = f4768a;
        if (equals) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("No label given for CSI tick.");
                return;
            }
            zzbgb zzbgbVar = zzbgk.E2;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && !pattern.matcher(str2).matches()) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Invalid label given for CSI tick. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("No timestamp given for CSI tick.");
                return;
            }
            try {
                long parseLong = (Long.parseLong(str4) - com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()) + com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                if (true == TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue() && !pattern.matcher(str3).matches()) {
                    int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Invalid start label given for CSI tick. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
                    return;
                }
                zzbgx zzq = zzcirVar.zzq();
                HashMap hashMap = zzq.f4669a;
                zzbgw zzbgwVar = (zzbgw) hashMap.get(str3);
                String[] strArr = {str2};
                if (zzbgwVar != null) {
                    zzq.b.a(zzbgwVar, parseLong, strArr);
                }
                hashMap.put(str2, new zzbgw(parseLong, null, null));
                return;
            } catch (NumberFormatException e) {
                int i5 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Malformed timestamp for CSI tick.", e);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                int i6 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("No value given for CSI experiment.");
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E2)).booleanValue() && !b.matcher(str5).matches()) {
                int i7 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Invalid value given for CSI experiment. Should be a comma separated list of numbers.");
                return;
            } else {
                zzcirVar.zzq().b.c("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                int i8 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("No value given for CSI extra.");
                return;
            }
            if (TextUtils.isEmpty(str6)) {
                int i9 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("No name given for CSI extra.");
                return;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E2)).booleanValue() && !pattern.matcher(str6).matches()) {
                int i10 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Invalid name given for CSI extra. Should start with a letter and only alphanumerics, :, -, _ are allowed.");
            } else {
                zzcirVar.zzq().b.c(str6, str7);
            }
        }
    }
}
