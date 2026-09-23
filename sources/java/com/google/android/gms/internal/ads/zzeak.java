package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.LongCompanionObject;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzeak implements zzebm, zzdzv {

    /* renamed from: a, reason: collision with root package name */
    public final zzeav f6311a;
    public final zzebn b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdzw f6312c;
    public final zzeaf d;
    public final zzdzu e;
    public final zzebh f;
    public final zzear g;
    public final zzear h;
    public final String i;
    public final Context j;
    public final String k;
    public JSONObject p;
    public boolean s;
    public int t;
    public boolean u;
    public final HashMap l = new HashMap();
    public final HashMap m = new HashMap();
    public final HashMap n = new HashMap();
    public String o = "{}";
    public long q = LongCompanionObject.MAX_VALUE;
    public zzeag r = zzeag.f6309c;
    public zzeaj v = zzeaj.f6310c;
    public long w = 0;
    public String x = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    public zzeak(zzeav zzeavVar, zzebn zzebnVar, zzdzw zzdzwVar, Context context, VersionInfoParcel versionInfoParcel, zzeaf zzeafVar, zzebh zzebhVar, zzear zzearVar, zzear zzearVar2, String str) {
        this.f6311a = zzeavVar;
        this.b = zzebnVar;
        this.f6312c = zzdzwVar;
        this.e = new zzdzu(context);
        this.i = versionInfoParcel.afmaVersion;
        this.k = str;
        this.d = zzeafVar;
        this.f = zzebhVar;
        this.g = zzearVar;
        this.h = zzearVar2;
        this.j = context;
        com.google.android.gms.ads.internal.zzt.zzo().zza(this);
    }

    public final void a() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzh().i().zzJ()) {
                k();
                return;
            }
            String zzH = com.google.android.gms.ads.internal.zzt.zzh().i().zzH();
            if (!TextUtils.isEmpty(zzH)) {
                try {
                    if (new JSONObject(zzH).optBoolean("isTestMode", false)) {
                        k();
                    }
                } catch (JSONException unused) {
                }
            }
        }
    }

    public final void b(boolean z) {
        if (!this.u && z) {
            k();
        }
        h(z, true);
    }

    public final synchronized boolean c() {
        return this.s;
    }

    public final synchronized void d(String str, zzdzy zzdzyVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue() && g()) {
            if (this.t >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.na)).intValue()) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            HashMap hashMap = this.l;
            if (!hashMap.containsKey(str)) {
                hashMap.put(str, new ArrayList());
            }
            this.t++;
            ((List) hashMap.get(str)).add(zzdzyVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ja)).booleanValue()) {
                String str2 = zzdzyVar.g;
                this.m.put(str2, zzdzyVar);
                HashMap hashMap2 = this.n;
                if (hashMap2.containsKey(str2)) {
                    List list = (List) hashMap2.get(str2);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((zzcdt) it.next()).a(zzdzyVar);
                    }
                    list.clear();
                }
            }
        }
    }

    public final synchronized zzcdt e(String str) {
        zzcdt zzcdtVar;
        try {
            zzcdtVar = new zzcdt();
            HashMap hashMap = this.m;
            if (hashMap.containsKey(str)) {
                zzcdtVar.a((zzdzy) hashMap.get(str));
            } else {
                HashMap hashMap2 = this.n;
                if (!hashMap2.containsKey(str)) {
                    hashMap2.put(str, new ArrayList());
                }
                ((List) hashMap2.get(str)).add(zzcdtVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzcdtVar;
    }

    public final synchronized void f(com.google.android.gms.ads.internal.client.zzdn zzdnVar, zzeaj zzeajVar) {
        if (!g()) {
            try {
                zzdnVar.zze(zzfjm.d(18, null, null));
                return;
            } catch (RemoteException unused) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue()) {
            try {
                zzdnVar.zze(zzfjm.d(1, null, null));
                return;
            } catch (RemoteException unused2) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad inspector had an internal error.");
                return;
            }
        }
        this.v = zzeajVar;
        this.f6311a.b(zzdnVar, new zzboi(this), new zzbob(this.f), new zzbno(this));
        return;
    }

    public final synchronized boolean g() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
            if (!this.s && !com.google.android.gms.ads.internal.zzt.zzo().zzk()) {
                return false;
            }
            return true;
        }
        return this.s;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:9:0x0006, B:11:0x000a, B:13:0x001c, B:16:0x0029, B:18:0x0038, B:22:0x002d, B:24:0x0033), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void h(boolean r2, boolean r3) {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.s     // Catch: java.lang.Throwable -> L27
            if (r0 != r2) goto L6
            goto L3d
        L6:
            r1.s = r2     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L2d
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.Aa     // Catch: java.lang.Throwable -> L27
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L27
            java.lang.Object r2 = r0.a(r2)     // Catch: java.lang.Throwable -> L27
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L27
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L29
            com.google.android.gms.ads.internal.util.zzax r2 = com.google.android.gms.ads.internal.zzt.zzo()     // Catch: java.lang.Throwable -> L27
            boolean r2 = r2.zzk()     // Catch: java.lang.Throwable -> L27
            if (r2 != 0) goto L2d
            goto L29
        L27:
            r2 = move-exception
            goto L3f
        L29:
            r1.l()     // Catch: java.lang.Throwable -> L27
            goto L36
        L2d:
            boolean r2 = r1.g()     // Catch: java.lang.Throwable -> L27
            if (r2 != 0) goto L36
            r1.m()     // Catch: java.lang.Throwable -> L27
        L36:
            if (r3 == 0) goto L3d
            r1.n()     // Catch: java.lang.Throwable -> L27
            monitor-exit(r1)
            return
        L3d:
            monitor-exit(r1)
            return
        L3f:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L27
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeak.h(boolean, boolean):void");
    }

    public final synchronized void i(zzeag zzeagVar, boolean z) {
        try {
            if (this.r != zzeagVar) {
                if (g()) {
                    m();
                }
                this.r = zzeagVar;
                if (g()) {
                    l();
                }
                if (z) {
                    n();
                }
            }
        } finally {
        }
    }

    public final synchronized JSONObject j() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.l.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (zzdzy zzdzyVar : (List) entry.getValue()) {
                    if (zzdzyVar.i != zzdzx.f6295c) {
                        jSONArray.put(zzdzyVar.a());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put((String) entry.getKey(), jSONArray);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final void k() {
        this.u = true;
        zzeaf zzeafVar = this.d;
        zzeafVar.getClass();
        zzead zzeadVar = new zzead(zzeafVar);
        zzdzp zzdzpVar = zzeafVar.f6307a;
        zzdzpVar.getClass();
        zzdzpVar.e.f5072c.k(new zzdzo(zzdzpVar, zzeadVar), zzdzpVar.j);
        this.f6311a.g = this;
        this.b.f = this;
        this.f6312c.i = this;
        this.f.j = this;
        zzbgb zzbgbVar = zzbgk.Pa;
        if (!TextUtils.isEmpty((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar))) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.j);
            List asList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).split(","));
            zzear zzearVar = this.g;
            zzearVar.b = asList;
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(zzearVar);
            Iterator it = asList.iterator();
            while (it.hasNext()) {
                zzearVar.onSharedPreferenceChanged(defaultSharedPreferences, (String) it.next());
            }
        }
        zzbgb zzbgbVar2 = zzbgk.Qa;
        if (!TextUtils.isEmpty((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar2))) {
            SharedPreferences sharedPreferences = this.j.getSharedPreferences("admob", 0);
            List asList2 = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar2)).split(","));
            zzear zzearVar2 = this.h;
            zzearVar2.b = asList2;
            sharedPreferences.registerOnSharedPreferenceChangeListener(zzearVar2);
            Iterator it2 = asList2.iterator();
            while (it2.hasNext()) {
                zzearVar2.onSharedPreferenceChanged(sharedPreferences, (String) it2.next());
            }
        }
        String zzH = com.google.android.gms.ads.internal.zzt.zzh().i().zzH();
        synchronized (this) {
            if (!TextUtils.isEmpty(zzH)) {
                try {
                    JSONObject jSONObject = new JSONObject(zzH);
                    h(jSONObject.optBoolean("isTestMode", false), false);
                    i((zzeag) Enum.valueOf(zzeag.class, jSONObject.optString("gesture", "NONE")), false);
                    this.o = jSONObject.optString("networkExtras", "{}");
                    this.q = jSONObject.optLong("networkExtrasExpirationSecs", LongCompanionObject.MAX_VALUE);
                } catch (JSONException unused) {
                }
            }
        }
        this.x = com.google.android.gms.ads.internal.zzt.zzh().i().zzN();
    }

    public final synchronized void l() {
        int ordinal = this.r.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            this.f6312c.b();
            return;
        }
        this.b.b();
    }

    public final synchronized void m() {
        int ordinal = this.r.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            this.f6312c.c();
            return;
        }
        this.b.c();
    }

    public final void n() {
        String jSONObject;
        com.google.android.gms.ads.internal.util.zzj i = com.google.android.gms.ads.internal.zzt.zzh().i();
        synchronized (this) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("isTestMode", this.s);
                jSONObject2.put("gesture", this.r);
                if (this.q > com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() / 1000) {
                    jSONObject2.put("networkExtras", this.o);
                    jSONObject2.put("networkExtrasExpirationSecs", this.q);
                }
            } catch (JSONException unused) {
            }
            jSONObject = jSONObject2.toString();
        }
        i.zzI(jSONObject);
    }
}
