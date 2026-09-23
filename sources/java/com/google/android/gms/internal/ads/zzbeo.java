package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzbeo implements zzbde {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzber f4594c;

    public zzbeo(zzber zzberVar) {
        Objects.requireNonNull(zzberVar);
        this.f4594c = zzberVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        zzber zzberVar = this.f4594c;
        if (z) {
            zzberVar.e();
        } else {
            zzberVar.d();
        }
    }
}
