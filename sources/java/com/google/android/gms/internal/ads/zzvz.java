package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzvz extends zzvu {
    public static final Object e = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Object f9334c;
    public final Object d;

    public zzvz(zzbf zzbfVar, Object obj, Object obj2) {
        super(zzbfVar);
        this.f9334c = obj;
        this.d = obj2;
    }

    @Override // com.google.android.gms.internal.ads.zzvu, com.google.android.gms.internal.ads.zzbf
    public final zzbe b(int i, zzbe zzbeVar, long j) {
        this.b.b(i, zzbeVar, j);
        if (Objects.equals(zzbeVar.f4587a, this.f9334c)) {
            zzbeVar.f4587a = zzbe.m;
        }
        return zzbeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu, com.google.android.gms.internal.ads.zzbf
    public final zzbd d(int i, zzbd zzbdVar, boolean z) {
        this.b.d(i, zzbdVar, z);
        if (Objects.equals(zzbdVar.b, this.d) && z) {
            zzbdVar.b = e;
        }
        return zzbdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu, com.google.android.gms.internal.ads.zzbf
    public final int e(Object obj) {
        Object obj2;
        if (e.equals(obj) && (obj2 = this.d) != null) {
            obj = obj2;
        }
        return this.b.e(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzvu, com.google.android.gms.internal.ads.zzbf
    public final Object f(int i) {
        Object f = this.b.f(i);
        if (Objects.equals(f, this.d)) {
            return e;
        }
        return f;
    }
}
