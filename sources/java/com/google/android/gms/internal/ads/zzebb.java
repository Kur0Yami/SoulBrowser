package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzebb extends AdListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzebh f6330c;

    public zzebb(zzebh zzebhVar) {
        Objects.requireNonNull(zzebhVar);
        this.f6330c = zzebhVar;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.f6330c.e5(zzebh.h5(loadAdError));
    }
}
