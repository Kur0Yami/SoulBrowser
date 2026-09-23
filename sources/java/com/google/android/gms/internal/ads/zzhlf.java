package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhlf {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8645a = null;
    public Integer b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzhlg f8646c = null;
    public zzhlh d = zzhlh.e;

    public final void a(int i) {
        this.f8645a = Integer.valueOf(i);
    }

    public final void b(int i) {
        this.b = Integer.valueOf(i);
    }

    public final zzhli c() {
        Integer num = this.f8645a;
        if (num != null) {
            if (this.b != null) {
                if (this.f8646c != null) {
                    if (num.intValue() >= 16) {
                        Integer num2 = this.b;
                        int intValue = num2.intValue();
                        zzhlg zzhlgVar = this.f8646c;
                        if (intValue >= 10) {
                            if (zzhlgVar == zzhlg.b) {
                                if (intValue > 20) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
                                }
                            } else if (zzhlgVar == zzhlg.f8647c) {
                                if (intValue > 28) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
                                }
                            } else if (zzhlgVar == zzhlg.d) {
                                if (intValue > 32) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
                                }
                            } else if (zzhlgVar == zzhlg.e) {
                                if (intValue > 48) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
                                }
                            } else if (zzhlgVar == zzhlg.f) {
                                if (intValue > 64) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
                                }
                            } else {
                                throw new GeneralSecurityException("unknown hash type; must be SHA256, SHA384 or SHA512");
                            }
                            return new zzhli(this.f8645a.intValue(), this.b.intValue(), this.d, this.f8646c);
                        }
                        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
                    }
                    throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.f8645a));
                }
                throw new GeneralSecurityException("hash type is not set");
            }
            throw new GeneralSecurityException("tag size is not set");
        }
        throw new GeneralSecurityException("key size is not set");
    }
}
