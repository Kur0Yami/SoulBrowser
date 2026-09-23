package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzclp;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;

/* loaded from: classes.dex */
public final class zze implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3275a;

    public zze(zzijp zzijpVar) {
        this.f3275a = zzijpVar;
    }

    public static zze zza(zzijp zzijpVar) {
        return new zze(zzijpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzd(((zzclp) this.f3275a).a());
    }
}
