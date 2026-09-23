package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zzcxk implements com.google.android.gms.ads.internal.client.zza {

    /* renamed from: c, reason: collision with root package name */
    public final zzcxo f5565c;
    public final zzfik f;

    public zzcxk(zzcxo zzcxoVar, zzfik zzfikVar) {
        this.f5565c = zzcxoVar;
        this.f = zzfikVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        int valueOf;
        zzfik zzfikVar = this.f;
        zzcxo zzcxoVar = this.f5565c;
        String str = zzfikVar.g;
        synchronized (zzcxoVar.f5570a) {
            try {
                ConcurrentHashMap concurrentHashMap = zzcxoVar.b;
                Integer num = (Integer) concurrentHashMap.get(str);
                if (num == null) {
                    valueOf = 1;
                } else {
                    valueOf = Integer.valueOf(num.intValue() + 1);
                }
                concurrentHashMap.put(str, valueOf);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
