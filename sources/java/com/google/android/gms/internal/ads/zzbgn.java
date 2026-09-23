package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class zzbgn {

    /* renamed from: a, reason: collision with root package name */
    public final String f4660a = (String) zzbie.f4705a.c();
    public final LinkedHashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f4661c;
    public final String d;

    /* JADX WARN: Multi-variable type inference failed */
    public zzbgn(Context context, String str) {
        String packageName;
        Object obj;
        this.f4661c = context;
        this.d = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.b = linkedHashMap;
        linkedHashMap.put("s", "gmob_sdk");
        linkedHashMap.put("v", "3");
        linkedHashMap.put("os", Build.VERSION.RELEASE);
        linkedHashMap.put("api_v", Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzt.zzc();
        linkedHashMap.put("device", com.google.android.gms.ads.internal.util.zzs.zzv());
        if (context.getApplicationContext() != null) {
            packageName = context.getApplicationContext().getPackageName();
        } else {
            packageName = context.getPackageName();
        }
        linkedHashMap.put("app", packageName);
        com.google.android.gms.ads.internal.zzt.zzc();
        if (true == com.google.android.gms.ads.internal.util.zzs.zzJ(context)) {
            obj = "1";
        } else {
            obj = "0";
        }
        linkedHashMap.put("is_lite_sdk", obj);
        zzbzh zzp = com.google.android.gms.ads.internal.zzt.zzp();
        zzp.getClass();
        ListenableFuture v0 = ((zzgxi) zzcdo.f5068a).v0(new zzbzf(zzp, context));
        try {
            linkedHashMap.put("network_coarse", Integer.toString(((zzbze) v0.get()).j));
            linkedHashMap.put("network_fine", Integer.toString(((zzbze) v0.get()).k));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("CsiConfiguration.CsiConfiguration", e);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ic)).booleanValue()) {
            LinkedHashMap linkedHashMap2 = this.b;
            com.google.android.gms.ads.internal.zzt.zzc();
            linkedHashMap2.put("is_bstar", true != com.google.android.gms.ads.internal.util.zzs.zzG(context) ? "0" : "1");
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ma)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V2)).booleanValue() && !zzgpz.a(com.google.android.gms.ads.internal.zzt.zzh().g)) {
                this.b.put("plugin", com.google.android.gms.ads.internal.zzt.zzh().g);
            }
        }
    }
}
