package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import j$.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzeob implements zzeji {

    /* renamed from: a, reason: collision with root package name */
    public final zzepf f6745a;
    public final zzduu b;

    public zzeob(zzepf zzepfVar, zzduu zzduuVar) {
        this.f6745a = zzepfVar;
        this.b = zzduuVar;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzbte, com.google.android.gms.internal.ads.zzdbu] */
    @Override // com.google.android.gms.internal.ads.zzeji
    public final zzejj a(JSONObject jSONObject, String str) {
        zzbuy b;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i2)).booleanValue()) {
            try {
                b = this.b.b(str);
            } catch (RemoteException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Coundn't create RTB adapter: ", e);
            }
        } else {
            ConcurrentHashMap concurrentHashMap = this.f6745a.f6783a;
            if (concurrentHashMap.containsKey(str)) {
                b = (zzbuy) concurrentHashMap.get(str);
            }
            b = null;
        }
        if (b == null) {
            return null;
        }
        return new zzejj(b, new zzbte(), str);
    }
}
