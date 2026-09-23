package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzdim implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5816a;
    public final zzijs b;

    /* renamed from: c, reason: collision with root package name */
    public final zzcwb f5817c;

    public zzdim(zzijf zzijfVar, zzijs zzijsVar, zzcwb zzcwbVar) {
        this.f5816a = zzijfVar;
        this.b = zzijsVar;
        this.f5817c = zzcwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdil((Context) this.f5816a.zzb(), this.b.zzb(), this.f5817c.a());
    }
}
