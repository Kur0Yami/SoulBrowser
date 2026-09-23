package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzfjc implements zzijg {
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Object obj = new Object();
        try {
            zzhav.a();
            return obj;
        } catch (GeneralSecurityException e) {
            com.google.android.gms.ads.internal.util.zze.zza("Failed to Configure Aead. ".concat(e.toString()));
            com.google.android.gms.ads.internal.zzt.zzh().f("CryptoUtils.registerAead", e);
            return obj;
        }
    }
}
