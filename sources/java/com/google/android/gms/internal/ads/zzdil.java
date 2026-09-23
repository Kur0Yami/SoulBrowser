package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class zzdil extends zzdgi implements zzbck {
    public final WeakHashMap f;
    public final Context g;
    public final zzfhr h;

    public zzdil(Context context, Set set, zzfhr zzfhrVar) {
        super(set);
        this.f = new WeakHashMap(1);
        this.g = context;
        this.h = zzfhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final synchronized void Q(final zzbcj zzbcjVar) {
        s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdik
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                ((zzbck) obj).Q(zzbcj.this);
            }
        });
    }

    public final synchronized void t0(View view) {
        try {
            WeakHashMap weakHashMap = this.f;
            zzbcm zzbcmVar = (zzbcm) weakHashMap.get(view);
            if (zzbcmVar == null) {
                zzbcm zzbcmVar2 = new zzbcm(this.g, view);
                zzbcmVar2.p.add(this);
                zzbcmVar2.d(3);
                weakHashMap.put(view, zzbcmVar2);
                zzbcmVar = zzbcmVar2;
            }
            if (this.h.X) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.T1)).booleanValue()) {
                    zzbcmVar.m.zzb(((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S1)).longValue());
                    return;
                }
            }
            zzbcmVar.m.zzb(zzbcm.s);
        } catch (Throwable th) {
            throw th;
        }
    }
}
