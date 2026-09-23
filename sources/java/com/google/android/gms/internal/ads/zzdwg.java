package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzdwg implements zzfmv {

    /* renamed from: c, reason: collision with root package name */
    public final Map f6201c;
    public final zzbfj f;

    public zzdwg(zzbfj zzbfjVar, Map map) {
        this.f6201c = map;
        this.f = zzbfjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void a(zzfmo zzfmoVar, String str, Throwable th) {
        Map map = this.f6201c;
        if (map.containsKey(zzfmoVar)) {
            this.f.b(((zzdwf) map.get(zzfmoVar)).f6200c);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void i(zzfmo zzfmoVar, String str) {
        Map map = this.f6201c;
        if (map.containsKey(zzfmoVar)) {
            this.f.b(((zzdwf) map.get(zzfmoVar)).b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void v(zzfmo zzfmoVar, String str) {
        Map map = this.f6201c;
        if (map.containsKey(zzfmoVar)) {
            this.f.b(((zzdwf) map.get(zzfmoVar)).f6199a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfmv
    public final void g(String str) {
    }
}
