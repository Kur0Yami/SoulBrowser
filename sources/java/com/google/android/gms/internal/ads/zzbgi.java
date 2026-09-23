package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbgi implements SharedPreferences.OnSharedPreferenceChangeListener {
    public Context g;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4655a = new Object();
    public final ConditionVariable b = new ConditionVariable();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f4656c = false;
    public volatile boolean d = false;
    public SharedPreferences e = null;
    public Bundle f = new Bundle();
    public JSONObject h = new JSONObject();
    public boolean i = false;
    public boolean j = false;

    public final Object a(final zzbgb zzbgbVar) {
        if (!this.b.block(5000L)) {
            synchronized (this.f4655a) {
                try {
                    if (!this.d) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } finally {
                }
            }
        }
        if (!this.f4656c || this.e == null || this.j) {
            synchronized (this.f4655a) {
                if (this.f4656c && this.e != null && !this.j) {
                }
                return zzbgbVar.e();
            }
        }
        int i = zzbgbVar.f4647a;
        if (i == 2) {
            Bundle bundle = this.f;
            if (bundle == null) {
                return zzbgbVar.e();
            }
            return zzbgbVar.a(bundle);
        }
        if (i == 1 && this.h.has(zzbgbVar.b)) {
            return zzbgbVar.c(this.h);
        }
        return zzbgm.a(new zzgqs() { // from class: com.google.android.gms.internal.ads.zzbgh
            @Override // com.google.android.gms.internal.ads.zzgqs
            public final /* synthetic */ Object zza() {
                return zzbgbVar.d(zzbgi.this.e);
            }
        });
    }

    public final Object b(zzbgb zzbgbVar) {
        if (!this.f4656c && !this.d) {
            return zzbgbVar.e();
        }
        return a(zzbgbVar);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str) && sharedPreferences != null) {
            try {
                this.h = new JSONObject((String) zzbgm.a(new zzbgf(sharedPreferences)));
            } catch (JSONException unused) {
            }
        }
    }
}
