package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class zzdmo implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5914a;
    public final zzcwb b;

    public zzdmo(zzcwb zzcwbVar, zzijf zzijfVar) {
        this.f5914a = zzijfVar;
        this.b = zzcwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdil((Context) this.f5914a.zzb(), new HashSet(), this.b.a());
    }
}
