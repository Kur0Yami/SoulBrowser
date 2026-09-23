package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbub extends zzbth {

    /* renamed from: c, reason: collision with root package name */
    public final MediationInterscrollerAd f4902c;

    public zzbub(MediationInterscrollerAd mediationInterscrollerAd) {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
        this.f4902c = mediationInterscrollerAd;
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final IObjectWrapper zze() {
        return new ObjectWrapper(this.f4902c.getView());
    }

    @Override // com.google.android.gms.internal.ads.zzbti
    public final boolean zzf() {
        return this.f4902c.shouldDelegateInterscrollerEffect();
    }
}
