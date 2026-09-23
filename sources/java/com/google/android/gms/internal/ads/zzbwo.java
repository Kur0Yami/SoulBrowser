package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

/* loaded from: classes.dex */
public final class zzbwo extends zzblo {

    /* renamed from: c, reason: collision with root package name */
    public final NativeAd.UnconfirmedClickListener f4954c;

    public zzbwo(NativeAd.UnconfirmedClickListener unconfirmedClickListener) {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
        this.f4954c = unconfirmedClickListener;
    }

    @Override // com.google.android.gms.internal.ads.zzblp
    public final void zze(String str) {
        this.f4954c.onUnconfirmedClickReceived(str);
    }

    @Override // com.google.android.gms.internal.ads.zzblp
    public final void zzf() {
        this.f4954c.onUnconfirmedClickCancelled();
    }
}
