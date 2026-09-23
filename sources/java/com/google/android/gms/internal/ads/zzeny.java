package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
final class zzeny extends zzbzw {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzdcv f6739c;
    public final /* synthetic */ zzdai f;
    public final /* synthetic */ zzdbr g;
    public final /* synthetic */ zzdja h;

    public zzeny(zzenz zzenzVar, zzdcv zzdcvVar, zzdai zzdaiVar, zzdbr zzdbrVar, zzdja zzdjaVar) {
        this.f6739c = zzdcvVar;
        this.f = zzdaiVar;
        this.g = zzdbrVar;
        this.h = zzdjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void B1(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void O4(IObjectWrapper iObjectWrapper) {
        this.f.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void o0(IObjectWrapper iObjectWrapper) {
        this.g.s0(zzdbp.f5679a);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void q3(IObjectWrapper iObjectWrapper) {
        this.h.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void s2(IObjectWrapper iObjectWrapper) {
        this.h.U(null);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void u(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void v3(IObjectWrapper iObjectWrapper, zzbzy zzbzyVar) {
        this.h.U(zzbzyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void y(IObjectWrapper iObjectWrapper) {
        this.f6739c.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzf(IObjectWrapper iObjectWrapper, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzg(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzj(IObjectWrapper iObjectWrapper) {
        this.f6739c.zzdT(4);
    }

    @Override // com.google.android.gms.internal.ads.zzbzx
    public final void zzn(IObjectWrapper iObjectWrapper) {
        this.g.t0();
    }
}
