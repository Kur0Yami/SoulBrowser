package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhbq {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8352a = null;
    public Integer b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8353c = null;
    public Integer d = null;
    public zzhbr e = null;
    public zzhbs f = zzhbs.d;

    public final void a(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8352a = Integer.valueOf(i);
    }

    public final void b(int i) {
        if (i >= 16) {
            this.b = Integer.valueOf(i);
            return;
        }
        throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i)));
    }

    public final void c(int i) {
        if (i >= 12 && i <= 16) {
            this.f8353c = Integer.valueOf(i);
            return;
        }
        throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i)));
    }

    public final void d(int i) {
        if (i >= 10) {
            this.d = Integer.valueOf(i);
            return;
        }
        throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i)));
    }

    public final zzhbt e() {
        if (this.f8352a != null) {
            if (this.b != null) {
                if (this.f8353c != null) {
                    Integer num = this.d;
                    if (num != null) {
                        if (this.e != null) {
                            int intValue = num.intValue();
                            zzhbr zzhbrVar = this.e;
                            if (zzhbrVar == zzhbr.b) {
                                if (intValue > 20) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
                                }
                            } else if (zzhbrVar == zzhbr.f8354c) {
                                if (intValue > 28) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
                                }
                            } else if (zzhbrVar == zzhbr.d) {
                                if (intValue > 32) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
                                }
                            } else if (zzhbrVar == zzhbr.e) {
                                if (intValue > 48) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
                                }
                            } else if (zzhbrVar == zzhbr.f) {
                                if (intValue > 64) {
                                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
                                }
                            } else {
                                throw new GeneralSecurityException("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
                            }
                            return new zzhbt(this.f8352a.intValue(), this.b.intValue(), this.f8353c.intValue(), this.d.intValue(), this.f, this.e);
                        }
                        throw new GeneralSecurityException("hash type is not set");
                    }
                    throw new GeneralSecurityException("tag size is not set");
                }
                throw new GeneralSecurityException("iv size is not set");
            }
            throw new GeneralSecurityException("HMAC key size is not set");
        }
        throw new GeneralSecurityException("AES key size is not set");
    }
}
