package com.google.android.gms.cast;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
final class zzk extends com.google.android.gms.cast.internal.zzae {
    @Override // com.google.android.gms.cast.internal.zzae, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: b */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        try {
            zzxVar.n(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this);
        } catch (IllegalStateException unused) {
            a();
        }
    }
}
