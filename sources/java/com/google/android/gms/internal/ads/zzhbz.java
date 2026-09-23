package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhbz {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8368a = null;
    public Integer b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8369c = null;
    public zzhca d = zzhca.d;

    public final void a(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8368a = Integer.valueOf(i);
    }

    public final void b(int i) {
        if (i != 12 && i != 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes", Integer.valueOf(i)));
        }
        this.b = Integer.valueOf(i);
    }

    public final void c() {
        this.f8369c = 16;
    }

    public final zzhcb d() {
        Integer num = this.f8368a;
        if (num != null) {
            if (this.b != null) {
                if (this.f8369c != null) {
                    int intValue = num.intValue();
                    int intValue2 = this.b.intValue();
                    this.f8369c.getClass();
                    return new zzhcb(intValue, intValue2, this.d);
                }
                throw new GeneralSecurityException("Tag size is not set");
            }
            throw new GeneralSecurityException("IV size is not set");
        }
        throw new GeneralSecurityException("Key size is not set");
    }
}
