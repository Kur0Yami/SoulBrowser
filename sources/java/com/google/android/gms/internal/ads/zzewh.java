package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzewh implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7018a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7019c;

    public zzewh(zzeym zzeymVar, zzijf zzijfVar, zzijf zzijfVar2) {
        this.f7018a = zzeymVar;
        this.b = zzijfVar;
        this.f7019c = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzezx zzb = ((zzeym) this.f7018a).zzb();
        zzezx zzezxVar = (zzeul) this.b.zzb();
        if (true == ((List) this.f7019c.zzb()).contains("29")) {
            zzb = zzezxVar;
        }
        zzijo.a(zzb);
        return zzb;
    }
}
