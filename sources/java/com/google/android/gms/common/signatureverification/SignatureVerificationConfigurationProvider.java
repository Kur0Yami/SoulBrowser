package com.google.android.gms.common.signatureverification;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class SignatureVerificationConfigurationProvider {
    private static final SignatureVerificationConfiguration zza;

    static {
        SignatureVerificationConfiguration zzc;
        zzc = zzd.zzc();
        zza = zzc;
    }

    private SignatureVerificationConfigurationProvider() {
    }

    @NonNull
    public static SignatureVerificationConfiguration zza() {
        return zza;
    }
}
