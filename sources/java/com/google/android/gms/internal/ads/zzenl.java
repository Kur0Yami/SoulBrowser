package com.google.android.gms.internal.ads;

import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzenl implements zzeji {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6721a = new HashMap();
    public final zzduu b;

    public zzenl(zzduu zzduuVar) {
        this.b = zzduuVar;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzbzw, com.google.android.gms.internal.ads.zzdbu] */
    @Override // com.google.android.gms.internal.ads.zzeji
    public final zzejj a(JSONObject jSONObject, String str) {
        zzejj zzejjVar;
        synchronized (this) {
            try {
                HashMap hashMap = this.f6721a;
                zzejjVar = (zzejj) hashMap.get(str);
                if (zzejjVar == null) {
                    zzejjVar = new zzejj(this.b.a(jSONObject, str), new zzbzw(), str);
                    hashMap.put(str, zzejjVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzejjVar;
    }
}
