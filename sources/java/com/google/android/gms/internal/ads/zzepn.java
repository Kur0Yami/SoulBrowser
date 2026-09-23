package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzepn extends zzbva {
    public static final /* synthetic */ int j = 0;

    /* renamed from: c, reason: collision with root package name */
    public final zzbuy f6791c;
    public final zzcdt f;
    public final JSONObject g;
    public final long h;
    public boolean i;

    public zzepn(String str, zzbuy zzbuyVar, zzcdt zzcdtVar, long j2) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
        JSONObject jSONObject = new JSONObject();
        this.g = jSONObject;
        this.i = false;
        this.f = zzcdtVar;
        this.f6791c = zzbuyVar;
        this.h = j2;
        try {
            jSONObject.put("adapter_version", zzbuyVar.zzf().toString());
            jSONObject.put("sdk_version", zzbuyVar.zzg().toString());
            jSONObject.put("name", str);
        } catch (RemoteException | NullPointerException | JSONException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final synchronized void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        c5(2, zzeVar.zzb);
    }

    public final synchronized void c5(int i, String str) {
        try {
            if (this.i) {
                return;
            }
            try {
                JSONObject jSONObject = this.g;
                jSONObject.put("signal_error", str);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f2)).booleanValue()) {
                    jSONObject.put("latency", com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.h);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e2)).booleanValue()) {
                    jSONObject.put("signal_error_code", i);
                }
            } catch (JSONException unused) {
            }
            this.f.a(this.g);
            this.i = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzb() {
        if (this.i) {
            return;
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e2)).booleanValue()) {
                this.g.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f.a(this.g);
        this.i = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final synchronized void zze(String str) {
        if (this.i) {
            return;
        }
        if (str == null) {
            zzf("Adapter returned null signals");
            return;
        }
        try {
            JSONObject jSONObject = this.g;
            jSONObject.put("signals", str);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f2)).booleanValue()) {
                jSONObject.put("latency", com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.h);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e2)).booleanValue()) {
                jSONObject.put("signal_error_code", 0);
            }
        } catch (JSONException unused) {
        }
        this.f.a(this.g);
        this.i = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbvb
    public final synchronized void zzf(String str) {
        c5(2, str);
    }
}
