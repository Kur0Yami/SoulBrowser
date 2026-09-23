package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
final class zzeko extends zzbul {

    /* renamed from: c, reason: collision with root package name */
    public final zzejj f6603c;
    public final /* synthetic */ zzekp f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzeko(zzekp zzekpVar, zzejj zzejjVar) {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
        this.f = zzekpVar;
        this.f6603c = zzejjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void Z4(zzbti zzbtiVar) {
        this.f.d = zzbtiVar;
        ((zzekv) this.f6603c.f6560c).zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void c(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzekv) this.f6603c.f6560c).Q(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void u(IObjectWrapper iObjectWrapper) {
        this.f.f6605c = (View) ObjectWrapper.f2(iObjectWrapper);
        ((zzekv) this.f6603c.f6560c).zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zzf(String str) {
        ((zzekv) this.f6603c.f6560c).U4(0, str);
    }
}
