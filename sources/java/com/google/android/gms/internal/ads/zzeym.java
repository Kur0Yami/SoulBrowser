package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* loaded from: classes.dex */
public final class zzeym implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7089a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f7090c;

    public zzeym(zzijf zzijfVar, zzijf zzijfVar2, zzclp zzclpVar) {
        this.f7089a = zzijfVar;
        this.b = zzijfVar2;
        this.f7090c = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzeyk zzb() {
        return new zzeyk((ApplicationInfo) this.f7089a.zzb(), (PackageInfo) this.b.zzb(), ((zzclp) this.f7090c).a());
    }
}
