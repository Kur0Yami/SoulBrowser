package com.google.android.gms.common.signatureverification;

import androidx.annotation.GuardedBy;

/* loaded from: classes.dex */
public final class zzd {

    @GuardedBy
    private static SignatureVerificationConfiguration zza;

    public static synchronized void zza(SignatureVerificationConfiguration signatureVerificationConfiguration) {
        synchronized (zzd.class) {
            if (zza == null) {
                zza = signatureVerificationConfiguration;
            } else {
                throw new IllegalStateException("Redundantly setting SignatureVerificationConfiguration");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized SignatureVerificationConfiguration zzc() {
        SignatureVerificationConfiguration signatureVerificationConfiguration;
        synchronized (zzd.class) {
            try {
                if (zza == null) {
                    zza(new zzb());
                }
                signatureVerificationConfiguration = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return signatureVerificationConfiguration;
    }
}
