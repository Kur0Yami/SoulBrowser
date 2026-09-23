package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhhd {
    public static zzgzu a() {
        try {
            zzhhv zzhhvVar = zzhbd.f8338a;
            if (!zzhhc.a()) {
                return zzhbd.f8338a;
            }
            throw new GeneralSecurityException("Cannot use non-FIPS-compliant AeadConfigurationV1 in FIPS mode");
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
