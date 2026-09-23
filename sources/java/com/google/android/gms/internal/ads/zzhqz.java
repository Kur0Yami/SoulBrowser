package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhqz {

    /* renamed from: a, reason: collision with root package name */
    public zzhrc f8682a = null;
    public zzhra b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzhrb f8683c = null;
    public zzhrd d = zzhrd.e;

    public final zzhre a() {
        zzhrc zzhrcVar = this.f8682a;
        if (zzhrcVar != null) {
            zzhra zzhraVar = this.b;
            if (zzhraVar != null) {
                zzhrb zzhrbVar = this.f8683c;
                if (zzhrbVar != null) {
                    zzhrd zzhrdVar = this.d;
                    if (zzhraVar == zzhra.f8684c && zzhrbVar != zzhrb.b) {
                        throw new GeneralSecurityException("NIST_P256 requires SHA256");
                    }
                    zzhra zzhraVar2 = zzhra.d;
                    zzhrb zzhrbVar2 = zzhrb.d;
                    if (zzhraVar == zzhraVar2 && zzhrbVar != zzhrb.f8686c && zzhrbVar != zzhrbVar2) {
                        throw new GeneralSecurityException("NIST_P384 requires SHA384 or SHA512");
                    }
                    if (zzhraVar == zzhra.e && zzhrbVar != zzhrbVar2) {
                        throw new GeneralSecurityException("NIST_P521 requires SHA512");
                    }
                    return new zzhre(zzhrcVar, zzhraVar, zzhrbVar, zzhrdVar);
                }
                throw new GeneralSecurityException("hash type is not set");
            }
            throw new GeneralSecurityException("EC curve type is not set");
        }
        throw new GeneralSecurityException("signature encoding is not set");
    }
}
