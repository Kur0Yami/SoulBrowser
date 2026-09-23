package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbqu implements zzbqm, zzbqk {

    /* renamed from: c, reason: collision with root package name */
    public zzcir f4835c;

    public static final void i(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzbb.zza();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzz()) {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
            if (!com.google.android.gms.ads.internal.util.zzs.zza.post(runnable)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("runOnUiThread > the runnable could not be placed to the message queue");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final void S(String str, Map map) {
        try {
            o(com.google.android.gms.ads.internal.client.zzbb.zza().zzk((HashMap) map), str);
        } catch (JSONException unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void U(String str, zzbnn zzbnnVar) {
        zzcir zzcirVar = this.f4835c;
        if (zzcirVar != null) {
            zzcirVar.h0(str, new zzbqs(zzbnnVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final /* synthetic */ void b(String str, String str2) {
        a.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void f(JSONObject jSONObject, String str) {
        b(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbrs
    public final void i0(String str, zzbnn zzbnnVar) {
        zzcir zzcirVar = this.f4835c;
        if (zzcirVar != null) {
            zzcirVar.l(str, new zzbqn(this, zzbnnVar));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqj
    public final /* synthetic */ void o(JSONObject jSONObject, String str) {
        a.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbqv
    public final void zza(final String str) {
        com.google.android.gms.ads.internal.util.zze.zza("invokeJavascript on adWebView from js");
        i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqt
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcir zzcirVar = zzbqu.this.f4835c;
                if (zzcirVar != null) {
                    zzcirVar.zza(str);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbqm
    public final void zzj() {
        zzcir zzcirVar = this.f4835c;
        if (zzcirVar != null) {
            zzcirVar.destroy();
            this.f4835c = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqm
    public final boolean zzk() {
        zzcir zzcirVar = this.f4835c;
        if (zzcirVar != null && !zzcirVar.u()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbqm
    public final zzbrt zzl() {
        return new zzbrt(this);
    }
}
