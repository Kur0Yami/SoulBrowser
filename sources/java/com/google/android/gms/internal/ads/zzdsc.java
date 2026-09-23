package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzdsc implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzblc f6089a;
    public final zzdsp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzija f6090c;

    public zzdsc(zzdnw zzdnwVar, zzdnm zzdnmVar, zzdsp zzdspVar, zzija zzijaVar) {
        this.f6089a = (zzblc) zzdnwVar.g.get(zzdnmVar.o());
        this.b = zzdspVar;
        this.f6090c = zzijaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        String str = (String) map.get("asset");
        try {
            this.f6089a.F0((zzbks) this.f6090c.zzb(), str);
        } catch (RemoteException e) {
            String q = android.support.v4.media.a.q(new StringBuilder(String.valueOf(str).length() + 40), "Failed to call onCustomClick for asset ", str, ".");
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj(q, e);
        }
    }
}
