package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhci {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8384a = null;
    public Integer b = null;

    /* renamed from: c, reason: collision with root package name */
    public Integer f8385c = null;
    public zzhcj d = zzhcj.d;

    public final void a(int i) {
        if (i != 16 && i != 24 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8384a = Integer.valueOf(i);
    }

    public final void b() {
        this.b = 12;
    }

    public final void c() {
        this.f8385c = 16;
    }

    public final zzhck d() {
        Integer num = this.f8384a;
        if (num != null) {
            if (this.b != null) {
                if (this.f8385c != null) {
                    int intValue = num.intValue();
                    this.b.getClass();
                    this.f8385c.getClass();
                    return new zzhck(intValue, this.d);
                }
                throw new GeneralSecurityException("Tag size is not set");
            }
            throw new GeneralSecurityException("IV size is not set");
        }
        throw new GeneralSecurityException("Key size is not set");
    }
}
