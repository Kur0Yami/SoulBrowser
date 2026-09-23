package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class zzbwd {

    /* renamed from: a, reason: collision with root package name */
    public final zzcir f4942a;
    public final String b;

    public zzbwd(zzcir zzcirVar, String str) {
        this.f4942a = zzcirVar;
        this.b = str;
    }

    public final void b(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.b);
            zzcir zzcirVar = this.f4942a;
            if (zzcirVar != null) {
                zzcirVar.o(put, "onError");
            }
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while dispatching error event.", e);
        }
    }

    public final void c(int i, int i2, int i3, int i4) {
        try {
            this.f4942a.o(new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4), "onSizeChanged");
        } catch (JSONException e) {
            int i5 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while dispatching size change.", e);
        }
    }

    public final void d(String str) {
        try {
            this.f4942a.o(new JSONObject().put("state", str), "onStateChanged");
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while dispatching state change.", e);
        }
    }

    public final void e(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.f4942a.o(new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put("rotation", i5), "onScreenInfoChanged");
        } catch (JSONException e) {
            int i6 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while obtaining screen information.", e);
        }
    }
}
