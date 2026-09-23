package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;

/* loaded from: classes.dex */
public final class zzdfo extends zzdgi implements zzbmf {
    @Override // com.google.android.gms.internal.ads.zzbmf
    public final synchronized void zzb(final String str, final String str2) {
        s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdfn
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                ((AppEventListener) obj).onAppEvent(str, str2);
            }
        });
    }
}
