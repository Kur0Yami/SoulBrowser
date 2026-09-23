package com.google.android.gms.ads.internal.client;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* loaded from: classes.dex */
public final class zzfr extends zzdp {

    /* renamed from: c, reason: collision with root package name */
    public final OnAdMetadataChangedListener f3041c;

    public zzfr(@Nullable OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f3041c = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdq
    public final void zze() {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f3041c;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
