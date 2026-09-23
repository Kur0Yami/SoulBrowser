package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class zzefx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f6461a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzegf f6462c;
    public final zzijp d;
    public final zzijp e;

    public zzefx(zzijp zzijpVar, zzijp zzijpVar2, zzegf zzegfVar, zzijp zzijpVar3, zzijp zzijpVar4) {
        this.f6461a = zzijpVar;
        this.b = zzijpVar2;
        this.f6462c = zzegfVar;
        this.d = zzijpVar3;
        this.e = zzijpVar4;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.internal.ads.zzbzi, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = ((zzclp) this.f6461a).a();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        ?? obj = new Object();
        zzclg zzclgVar = (zzclg) ((zzcmd) this.b).f5263a.f9006a;
        zzijo.a(zzclgVar);
        return new zzefw(a2, zzgywVar, obj, zzclgVar, new zzege(((zzcmo) this.f6462c.f6475a).zzb()), (ArrayDeque) this.d.zzb(), (zzfnr) this.e.zzb());
    }
}
