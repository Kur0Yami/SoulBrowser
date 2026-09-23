package com.google.android.gms.internal.ads;

import android.content.Intent;

/* loaded from: classes.dex */
public final class zzexk implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f7054a;
    public final zzijp b;

    public zzexk(zzclp zzclpVar, zzijf zzijfVar) {
        this.f7054a = zzclpVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzexi zzb() {
        return new zzexi(((zzclp) this.f7054a).a(), (Intent) this.b.zzb());
    }
}
