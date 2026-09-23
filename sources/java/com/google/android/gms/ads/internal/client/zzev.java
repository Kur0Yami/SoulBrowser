package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.OnAdInspectorClosedListener;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzev extends zzdm {
    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final void zze(zze zzeVar) {
        AdInspectorError adInspectorError;
        OnAdInspectorClosedListener onAdInspectorClosedListener = zzex.zzb().k;
        if (onAdInspectorClosedListener != null) {
            if (zzeVar == null) {
                adInspectorError = null;
            } else {
                adInspectorError = new AdInspectorError(zzeVar.zza, zzeVar.zzb, zzeVar.zzc);
            }
            onAdInspectorClosedListener.onAdInspectorClosed(adInspectorError);
        }
    }
}
