package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class zzbgb {

    /* renamed from: a, reason: collision with root package name */
    public final int f4647a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f4648c;
    public final Object d;

    public zzbgb(int i, String str, Object obj, Object obj2) {
        this.f4647a = i;
        this.b = str;
        this.f4648c = obj;
        this.d = obj2;
        com.google.android.gms.ads.internal.client.zzbd.zzb().f4649a.add(this);
    }

    public static zzbgb g(int i, int i2, String str) {
        return new zzbgb(1, str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static zzbgb h(long j, long j2, String str) {
        return new zzbgb(1, str, Long.valueOf(j), Long.valueOf(j2));
    }

    public static zzbgb i(String str, float f, float f2) {
        return new zzbgb(1, str, Float.valueOf(f), Float.valueOf(f2));
    }

    public static void j() {
        com.google.android.gms.ads.internal.client.zzbd.zzb().b.add(new zzbgb(1, "gads:sdk_core_constants:experiment_id", null, null));
    }

    public static void k() {
        com.google.android.gms.ads.internal.client.zzbd.zzb().f4650c.add(new zzbgb(1, "gads:sdk_core_constants_service:experiment_id", null, null));
    }

    public abstract Object a(Bundle bundle);

    public abstract void b(SharedPreferences.Editor editor, Object obj);

    public abstract Object c(JSONObject jSONObject);

    public abstract Object d(SharedPreferences sharedPreferences);

    public final Object e() {
        if (com.google.android.gms.ads.internal.client.zzbd.zzc().i) {
            return this.d;
        }
        return this.f4648c;
    }

    public final Object f() {
        return com.google.android.gms.ads.internal.client.zzbd.zzc().a(this);
    }
}
