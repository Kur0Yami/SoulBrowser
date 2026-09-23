package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zzcxm implements zzdgf, zzdby {

    /* renamed from: c, reason: collision with root package name */
    public final Clock f5567c;
    public final zzcxo f;
    public final zzfik g;
    public final String h;

    public zzcxm(Clock clock, zzcxo zzcxoVar, zzfik zzfikVar, String str) {
        this.f5567c = clock;
        this.f = zzcxoVar;
        this.g = zzfikVar;
        this.h = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zza() {
        this.f.f5571c.put(this.h, Long.valueOf(this.f5567c.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        long elapsedRealtime = this.f5567c.elapsedRealtime();
        String str = this.g.g;
        zzcxo zzcxoVar = this.f;
        ConcurrentHashMap concurrentHashMap = zzcxoVar.f5571c;
        String str2 = this.h;
        Long l = (Long) concurrentHashMap.get(str2);
        if (l == null) {
            return;
        }
        concurrentHashMap.remove(str2);
        zzcxoVar.d.put(str, Long.valueOf(elapsedRealtime - l.longValue()));
    }
}
