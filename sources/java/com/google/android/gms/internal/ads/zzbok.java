package com.google.android.gms.internal.ads;

import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;

@RequiresApi
/* loaded from: classes.dex */
public final class zzbok extends zzbom {

    /* renamed from: c, reason: collision with root package name */
    public final OnH5AdsEventListener f4804c;

    public zzbok(OnH5AdsEventListener onH5AdsEventListener) {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
        this.f4804c = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbon
    public final void a(String str) {
        this.f4804c.onH5AdsEvent(str);
    }
}
