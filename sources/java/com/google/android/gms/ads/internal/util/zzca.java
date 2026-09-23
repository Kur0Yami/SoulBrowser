package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzclp;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zzca implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3139a;

    public zzca(zzijp zzijpVar) {
        this.f3139a = zzijpVar;
    }

    public static zzca zza(zzijp zzijpVar) {
        return new zzca(zzijpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzbz(((zzclp) this.f3139a).a());
    }
}
