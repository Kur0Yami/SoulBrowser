package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzmf extends zzvu {

    /* renamed from: c, reason: collision with root package name */
    public final zzbe f9116c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzmf(zzmg zzmgVar, zzbf zzbfVar) {
        super(zzbfVar);
        Objects.requireNonNull(zzmgVar);
        this.f9116c = new zzbe();
    }

    @Override // com.google.android.gms.internal.ads.zzvu, com.google.android.gms.internal.ads.zzbf
    public final zzbd d(int i, zzbd zzbdVar, boolean z) {
        zzbf zzbfVar = this.b;
        zzbd d = zzbfVar.d(i, zzbdVar, z);
        if (zzbfVar.b(d.f4558c, this.f9116c, 0L).b()) {
            Object obj = zzbdVar.f4557a;
            Object obj2 = zzbdVar.b;
            int i2 = zzbdVar.f4558c;
            long j = zzbdVar.d;
            zzc zzcVar = zzc.b;
            d.a(obj, obj2, i2, j, true);
            return d;
        }
        d.e = true;
        return d;
    }
}
