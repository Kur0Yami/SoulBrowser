package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.api.client.http.HttpMethods;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbyw extends zzbyt {
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f4976c;
    public final zzbsj d;
    public final VersionInfoParcel e;
    public final Executor g;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4975a = new Object();
    public final AtomicBoolean f = new AtomicBoolean(false);

    public zzbyw(Context context, zzbsj zzbsjVar, VersionInfoParcel versionInfoParcel, Executor executor) {
        this.b = context.getApplicationContext();
        this.e = versionInfoParcel;
        this.d = zzbsjVar;
        this.g = executor;
    }

    public static JSONObject b(Context context, VersionInfoParcel versionInfoParcel) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (((Boolean) zzbik.f.c()).booleanValue()) {
                jSONObject.put("package_name", context.getPackageName());
            }
            jSONObject.put("js", versionInfoParcel.afmaVersion);
            jSONObject.put("mf", zzbik.g.c());
            jSONObject.put("cl", "829525209");
            jSONObject.put("rapid_rc", "dev");
            jSONObject.put("rapid_rollup", HttpMethods.HEAD);
            jSONObject.put("admob_module_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            jSONObject.put("dynamite_local_version", ModuleDescriptor.MODULE_VERSION);
            jSONObject.put("dynamite_version", DynamiteModule.d(context, ModuleDescriptor.MODULE_ID, false));
            jSONObject.put("container_version", GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final ListenableFuture a() {
        Executor executor;
        synchronized (this.f4975a) {
            try {
                if (this.f4976c == null) {
                    this.f4976c = this.b.getSharedPreferences("google_ads_flags_meta", 0);
                }
            } finally {
            }
        }
        SharedPreferences sharedPreferences = this.f4976c;
        long j = 0;
        if (sharedPreferences != null) {
            j = sharedPreferences.getLong("js_last_update", 0L);
        }
        if (com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - j < ((Long) zzbik.h.c()).longValue()) {
            return zzgyq.f;
        }
        ListenableFuture a2 = this.d.a(b(this.b, this.e));
        zzgpr zzgprVar = new zzgpr() { // from class: com.google.android.gms.internal.ads.zzbyu
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final Object apply(Object obj) {
                SharedPreferences sharedPreferences2;
                JSONObject jSONObject = (JSONObject) obj;
                zzbgb zzbgbVar = zzbgk.f4658a;
                com.google.android.gms.ads.internal.client.zzbd.zza();
                zzbyw zzbywVar = zzbyw.this;
                Context context = zzbywVar.b;
                SharedPreferences a3 = zzbgd.a(context);
                if (a3 != null) {
                    SharedPreferences.Editor edit = a3.edit();
                    Objects.requireNonNull(com.google.android.gms.ads.internal.client.zzbd.zzb());
                    ArrayList arrayList = com.google.android.gms.ads.internal.client.zzbd.zzb().f4649a;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj2 = arrayList.get(i);
                        i++;
                        zzbgb zzbgbVar2 = (zzbgb) obj2;
                        if (zzbgbVar2.f4647a == 1) {
                            zzbgbVar2.b(edit, zzbgbVar2.c(jSONObject));
                        }
                    }
                    if (jSONObject != null) {
                        edit.putString("flag_configuration", jSONObject.toString());
                    } else {
                        com.google.android.gms.ads.internal.util.client.zzo.zzf("Flag Json is null.");
                    }
                    if ((((Boolean) zzbik.o.c()).booleanValue() || ((Boolean) zzbik.p.c()).booleanValue()) && !ClientLibraryUtils.isPackageSide()) {
                        com.google.android.gms.ads.internal.client.zzbd.zza();
                        edit.apply();
                    } else {
                        com.google.android.gms.ads.internal.client.zzbd.zza();
                        edit.commit();
                    }
                    if (((Boolean) zzbik.e.c()).booleanValue() && !TextUtils.equals(context.getPackageName(), "com.google.android.gms")) {
                        com.google.android.gms.ads.internal.client.zzbd.zza();
                        try {
                            sharedPreferences2 = context.getSharedPreferences("google_adapter_flags", 0);
                        } catch (IllegalStateException e) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzj(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                            sharedPreferences2 = null;
                        }
                        if (sharedPreferences2 != null) {
                            SharedPreferences.Editor edit2 = sharedPreferences2.edit();
                            com.google.android.gms.ads.internal.client.zzbd.zzb();
                            JSONObject jSONObject2 = new JSONObject();
                            Iterator<String> keys = jSONObject.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                if (next.startsWith("adapter:")) {
                                    try {
                                        jSONObject2.put(next, jSONObject.get(next));
                                    } catch (JSONException unused) {
                                    }
                                }
                            }
                            edit2.putString("flag_configuration", jSONObject2.toString());
                            edit2.apply();
                        }
                    }
                    SharedPreferences sharedPreferences3 = zzbywVar.f4976c;
                    if (sharedPreferences3 != null) {
                        sharedPreferences3.edit().putLong("js_last_update", com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()).apply();
                    }
                }
                return null;
            }
        };
        if (((Boolean) zzbik.m.c()).booleanValue()) {
            executor = this.g;
        } else {
            executor = zzcdo.g;
        }
        return zzgym.i(a2, zzgprVar, executor);
    }
}
