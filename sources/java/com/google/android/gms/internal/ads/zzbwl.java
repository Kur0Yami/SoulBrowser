package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* loaded from: classes.dex */
public final class zzbwl {

    /* renamed from: a, reason: collision with root package name */
    public final NativeCustomFormatAd.OnCustomFormatAdLoadedListener f4950a;
    public final NativeCustomFormatAd.OnCustomClickListener b;

    /* renamed from: c, reason: collision with root package name */
    public zzbwm f4951c;

    public zzbwl(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.f4950a = onCustomFormatAdLoadedListener;
        this.b = onCustomClickListener;
    }

    public final zzblf a() {
        return new zzbwk(this);
    }

    public final zzblc b() {
        if (this.b == null) {
            return null;
        }
        return new zzbwj(this);
    }
}
