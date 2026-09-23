package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbft implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4643a = new Object();
    public SharedPreferences b = null;

    /* renamed from: c, reason: collision with root package name */
    public JSONObject f4644c = new JSONObject();

    public final void a(Context context) {
        SharedPreferences sharedPreferences;
        SharedPreferences sharedPreferences2;
        synchronized (this.f4643a) {
            try {
                if (this.b != null) {
                    return;
                }
                if (context.getApplicationContext() != null) {
                    context = context.getApplicationContext();
                }
                com.google.android.gms.ads.internal.client.zzbd.zza();
                try {
                    sharedPreferences = context.getSharedPreferences("google_adapter_flags", 0);
                } catch (IllegalStateException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzj(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                    sharedPreferences = null;
                }
                this.b = sharedPreferences;
                if (sharedPreferences != null) {
                    try {
                        this.f4644c = new JSONObject((String) zzbgm.a(new zzbfs(sharedPreferences)));
                    } catch (JSONException unused) {
                    }
                }
                if (!((Boolean) zzbik.b.c()).booleanValue() && (sharedPreferences2 = this.b) != null) {
                    sharedPreferences2.registerOnSharedPreferenceChangeListener(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str) && sharedPreferences != null) {
            try {
                this.f4644c = new JSONObject((String) zzbgm.a(new zzbfs(sharedPreferences)));
            } catch (JSONException unused) {
            }
        }
    }
}
