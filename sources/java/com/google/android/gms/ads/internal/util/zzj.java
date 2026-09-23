package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbdk;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbib;
import com.google.android.gms.internal.ads.zzbic;
import com.google.android.gms.internal.ads.zzccv;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzgxi;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzj implements zzg {
    public boolean b;
    public ListenableFuture d;
    public SharedPreferences f;
    public SharedPreferences.Editor g;
    public String i;
    public String j;

    /* renamed from: a, reason: collision with root package name */
    public final Object f3152a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3153c = new ArrayList();
    public zzbdk e = null;
    public boolean h = true;
    public boolean k = true;
    public String l = "-1";
    public int m = -1;
    public zzccv n = new zzccv(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0);
    public long o = 0;
    public long p = 0;
    public int q = -1;
    public int r = 0;
    public Set s = Collections.EMPTY_SET;
    public JSONObject t = new JSONObject();
    public boolean u = true;
    public boolean v = true;
    public String w = null;
    public String x = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public boolean y = false;
    public String z = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    public String A = "{}";
    public int B = -1;
    public int C = -1;
    public long D = 0;

    public final void a() {
        ListenableFuture listenableFuture = this.d;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            try {
                this.d.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzj("Interrupted while waiting for preferences loaded.", e);
            } catch (CancellationException e2) {
                e = e2;
                int i2 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (ExecutionException e3) {
                e = e3;
                int i22 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Fail to initialize AdSharedPreferenceManager.", e);
            } catch (TimeoutException e4) {
                e = e4;
                int i222 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Fail to initialize AdSharedPreferenceManager.", e);
            }
        }
    }

    public final void b() {
        zzcdo.f5068a.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzh
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzj.this.zzP();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzA(@NonNull String str) {
        a();
        synchronized (this.f3152a) {
            try {
                this.l = str;
                if (this.g != null) {
                    if (str.equals("-1")) {
                        this.g.remove("IABTCF_TCString");
                    } else {
                        this.g.putString("IABTCF_TCString", str);
                    }
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    @Nullable
    public final String zzB() {
        a();
        return this.l;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzC(int i) {
        a();
        synchronized (this.f3152a) {
            try {
                this.m = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    if (i == -1) {
                        editor.remove("gad_has_consent_for_cookies");
                    } else {
                        editor.putInt("gad_has_consent_for_cookies", i);
                    }
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzD() {
        a();
        return this.m;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzE(int i) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.C == i) {
                    return;
                }
                this.C = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("sd_app_measure_npa", i);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzF() {
        long j;
        a();
        synchronized (this.f3152a) {
            j = this.D;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzG(long j) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.D == j) {
                    return;
                }
                this.D = j;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("sd_app_measure_npa_ts", j);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzH() {
        String str;
        a();
        synchronized (this.f3152a) {
            str = this.x;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzI(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue()) {
            return;
        }
        a();
        synchronized (this.f3152a) {
            try {
                if (this.x.equals(str)) {
                    return;
                }
                this.x = str;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("inspector_info", str);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzJ() {
        boolean z;
        a();
        synchronized (this.f3152a) {
            z = this.y;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzK(boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
            return;
        }
        a();
        synchronized (this.f3152a) {
            try {
                if (this.y == z) {
                    return;
                }
                this.y = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("linked_device", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzL() {
        String str;
        a();
        synchronized (this.f3152a) {
            str = this.z;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzM(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
            return;
        }
        a();
        synchronized (this.f3152a) {
            try {
                if (this.z.equals(str)) {
                    return;
                }
                this.z = str;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("linked_ad_unit", str);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzN() {
        String str;
        a();
        synchronized (this.f3152a) {
            str = this.A;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzO(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Oa)).booleanValue()) {
            return;
        }
        a();
        synchronized (this.f3152a) {
            try {
                if (this.A.equals(str)) {
                    return;
                }
                this.A = str;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("inspector_ui_storage", str);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public final zzbdk zzP() {
        if (!this.b || ((zzc() && zze()) || !((Boolean) zzbib.b.c()).booleanValue())) {
            return null;
        }
        synchronized (this.f3152a) {
            try {
                if (Looper.getMainLooper() == null) {
                    return null;
                }
                if (this.e == null) {
                    this.e = new zzbdk();
                }
                this.e.a();
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("start fetching content...");
                return this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zza(final Context context) {
        synchronized (this.f3152a) {
            try {
                if (this.f != null) {
                    return;
                }
                this.d = ((zzgxi) zzcdo.f5068a).E0(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzi
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzj zzjVar = zzj.this;
                        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
                        SharedPreferences.Editor edit = sharedPreferences.edit();
                        try {
                            synchronized (zzjVar.f3152a) {
                                try {
                                    zzjVar.f = sharedPreferences;
                                    zzjVar.g = edit;
                                    NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
                                    zzjVar.h = zzjVar.f.getBoolean("use_https", zzjVar.h);
                                    zzjVar.u = zzjVar.f.getBoolean("content_url_opted_out", zzjVar.u);
                                    zzjVar.i = zzjVar.f.getString("content_url_hashes", zzjVar.i);
                                    zzjVar.k = zzjVar.f.getBoolean("gad_idless", zzjVar.k);
                                    zzjVar.v = zzjVar.f.getBoolean("content_vertical_opted_out", zzjVar.v);
                                    zzjVar.j = zzjVar.f.getString("content_vertical_hashes", zzjVar.j);
                                    zzjVar.r = zzjVar.f.getInt("version_code", zzjVar.r);
                                    if (((Boolean) zzbic.g.c()).booleanValue() && com.google.android.gms.ads.internal.client.zzbd.zzc().j) {
                                        zzjVar.n = new zzccv(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0L);
                                    } else {
                                        zzjVar.n = new zzccv(zzjVar.f.getString("app_settings_json", zzjVar.n.e), zzjVar.f.getLong("app_settings_last_update_ms", zzjVar.n.f));
                                    }
                                    zzjVar.o = zzjVar.f.getLong("app_last_background_time_ms", zzjVar.o);
                                    zzjVar.q = zzjVar.f.getInt("request_in_session_count", zzjVar.q);
                                    zzjVar.p = zzjVar.f.getLong("first_ad_req_time_ms", zzjVar.p);
                                    zzjVar.s = zzjVar.f.getStringSet("never_pool_slots", zzjVar.s);
                                    zzjVar.w = zzjVar.f.getString("display_cutout", zzjVar.w);
                                    zzjVar.B = zzjVar.f.getInt("app_measurement_npa", zzjVar.B);
                                    zzjVar.C = zzjVar.f.getInt("sd_app_measure_npa", zzjVar.C);
                                    zzjVar.D = zzjVar.f.getLong("sd_app_measure_npa_ts", zzjVar.D);
                                    zzjVar.x = zzjVar.f.getString("inspector_info", zzjVar.x);
                                    zzjVar.y = zzjVar.f.getBoolean("linked_device", zzjVar.y);
                                    zzjVar.z = zzjVar.f.getString("linked_ad_unit", zzjVar.z);
                                    zzjVar.A = zzjVar.f.getString("inspector_ui_storage", zzjVar.A);
                                    zzjVar.l = zzjVar.f.getString("IABTCF_TCString", zzjVar.l);
                                    zzjVar.m = zzjVar.f.getInt("gad_has_consent_for_cookies", zzjVar.m);
                                    try {
                                        zzjVar.t = new JSONObject(zzjVar.f.getString("native_advanced_settings", "{}"));
                                    } catch (JSONException e) {
                                        int i = zze.zza;
                                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not convert native advanced settings to json object", e);
                                    }
                                    zzjVar.b();
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            com.google.android.gms.ads.internal.zzt.zzh().f("AdSharedPreferenceManagerImpl.initializeOnBackgroundThread", th2);
                            zze.zzb("AdSharedPreferenceManagerImpl.initializeOnBackgroundThread, errorMessage = ", th2);
                        }
                    }
                });
                this.b = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzb(boolean z) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.u == z) {
                    return;
                }
                this.u = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("content_url_opted_out", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzc() {
        boolean z;
        a();
        synchronized (this.f3152a) {
            z = this.u;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzd(boolean z) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.v == z) {
                    return;
                }
                this.v = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("content_vertical_opted_out", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zze() {
        boolean z;
        a();
        synchronized (this.f3152a) {
            z = this.v;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzf(int i) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.r == i) {
                    return;
                }
                this.r = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("version_code", i);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzg() {
        int i;
        a();
        synchronized (this.f3152a) {
            i = this.r;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzh(String str) {
        a();
        synchronized (this.f3152a) {
            try {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                if (str != null && !str.equals(this.n.e)) {
                    this.n = new zzccv(str, currentTimeMillis);
                    SharedPreferences.Editor editor = this.g;
                    if (editor != null) {
                        editor.putString("app_settings_json", str);
                        this.g.putLong("app_settings_last_update_ms", currentTimeMillis);
                        this.g.apply();
                    }
                    b();
                    ArrayList arrayList = this.f3153c;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((Runnable) obj).run();
                    }
                    return;
                }
                this.n.f = currentTimeMillis;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzccv zzi() {
        zzccv zzccvVar;
        a();
        synchronized (this.f3152a) {
            try {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Zc)).booleanValue() && this.n.a()) {
                    ArrayList arrayList = this.f3153c;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((Runnable) obj).run();
                    }
                }
                zzccvVar = this.n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzccvVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzccv zzj() {
        zzccv zzccvVar;
        synchronized (this.f3152a) {
            zzccvVar = this.n;
        }
        return zzccvVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzk(Runnable runnable) {
        this.f3153c.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzl(long j) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.o == j) {
                    return;
                }
                this.o = j;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("app_last_background_time_ms", j);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzm() {
        long j;
        a();
        synchronized (this.f3152a) {
            j = this.o;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzn(int i) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.q == i) {
                    return;
                }
                this.q = i;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putInt("request_in_session_count", i);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzo() {
        int i;
        a();
        synchronized (this.f3152a) {
            i = this.q;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzp(long j) {
        a();
        synchronized (this.f3152a) {
            try {
                if (this.p == j) {
                    return;
                }
                this.p = j;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putLong("first_ad_req_time_ms", j);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzq() {
        long j;
        a();
        synchronized (this.f3152a) {
            j = this.p;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzr(String str, String str2, boolean z) {
        a();
        synchronized (this.f3152a) {
            try {
                JSONArray optJSONArray = this.t.optJSONArray(str);
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                int length = optJSONArray.length();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject == null) {
                        return;
                    }
                    if (str2.equals(optJSONObject.optString("template_id"))) {
                        if (z && optJSONObject.optBoolean("uses_media_view", false)) {
                            return;
                        } else {
                            length = i;
                        }
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("template_id", str2);
                    jSONObject.put("uses_media_view", z);
                    jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                    optJSONArray.put(length, jSONObject);
                    this.t.put(str, optJSONArray);
                } catch (JSONException e) {
                    int i2 = zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not update native advanced settings", e);
                }
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("native_advanced_settings", this.t.toString());
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final JSONObject zzs() {
        JSONObject jSONObject;
        a();
        synchronized (this.f3152a) {
            jSONObject = this.t;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzt() {
        a();
        synchronized (this.f3152a) {
            try {
                this.t = new JSONObject();
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.remove("native_advanced_settings");
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzu() {
        String str;
        a();
        synchronized (this.f3152a) {
            str = this.w;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzv(String str) {
        a();
        synchronized (this.f3152a) {
            try {
                if (TextUtils.equals(this.w, str)) {
                    return;
                }
                this.w = str;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putString("display_cutout", str);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzw(boolean z) {
        a();
        synchronized (this.f3152a) {
            try {
                if (z == this.k) {
                    return;
                }
                this.k = z;
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("gad_idless", z);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzx() {
        boolean z;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b1)).booleanValue()) {
            return false;
        }
        a();
        synchronized (this.f3152a) {
            z = this.k;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzy(boolean z) {
        a();
        synchronized (this.f3152a) {
            try {
                long currentTimeMillis = System.currentTimeMillis() + ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Pb)).longValue();
                SharedPreferences.Editor editor = this.g;
                if (editor != null) {
                    editor.putBoolean("is_topics_ad_personalization_allowed", z);
                    this.g.putLong("topics_consent_expiry_time_ms", currentTimeMillis);
                    this.g.apply();
                }
                b();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzz() {
        a();
        synchronized (this.f3152a) {
            try {
                SharedPreferences sharedPreferences = this.f;
                boolean z = false;
                if (sharedPreferences == null) {
                    return false;
                }
                if (sharedPreferences.getLong("topics_consent_expiry_time_ms", 0L) < System.currentTimeMillis()) {
                    return false;
                }
                if (this.f.getBoolean("is_topics_ad_personalization_allowed", false) && !this.k) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
