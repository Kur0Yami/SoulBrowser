package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzdat extends zzdgi implements zzdao {
    @Override // com.google.android.gms.internal.ads.zzdao
    public final void o(final zzdlg zzdlgVar) {
        s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdaq
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                zzdba zzdbaVar = (zzdba) obj;
                String message = zzdlg.this.getMessage();
                if (message == null) {
                    message = "Internal show error.";
                }
                zzdbaVar.g(zzfjm.d(12, message, null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void zzc(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        s0(new zzdgh() { // from class: com.google.android.gms.internal.ads.zzdas
            @Override // com.google.android.gms.internal.ads.zzdgh
            public final /* synthetic */ void zza(Object obj) {
                ((zzdba) obj).g(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdao
    public final void zze() {
        s0(zzdar.f5660a);
    }
}
