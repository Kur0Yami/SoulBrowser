package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcsh implements zzbck {

    /* renamed from: c, reason: collision with root package name */
    public zzcir f5434c;
    public final Executor f;
    public final zzcrt g;
    public final Clock h;
    public boolean i = false;
    public boolean j = false;
    public final zzcrw k = new zzcrw();

    public zzcsh(Executor executor, zzcrt zzcrtVar, Clock clock) {
        this.f = executor;
        this.g = zzcrtVar;
        this.h = clock;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        boolean z;
        if (this.j) {
            z = false;
        } else {
            z = zzbcjVar.j;
        }
        zzcrw zzcrwVar = this.k;
        zzcrwVar.f5418a = z;
        zzcrwVar.f5419c = this.h.elapsedRealtime();
        zzcrwVar.e = zzbcjVar;
        if (this.i) {
            a();
        }
    }

    public final void a() {
        try {
            final JSONObject a2 = this.g.a(this.k);
            if (this.f5434c != null) {
                this.f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcsg
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        JSONObject jSONObject = a2;
                        String obj = jSONObject.toString();
                        String q = android.support.v4.media.a.q(new StringBuilder(obj.length() + 31), "Calling AFMA_updateActiveView(", obj, ")");
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzd(q);
                        zzcsh.this.f5434c.f(jSONObject, "AFMA_updateActiveView");
                    }
                });
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb("Failed to call video active view js", e);
        }
    }
}
