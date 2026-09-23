package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhcr {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8398a = null;
    public zzhcs b = zzhcs.d;

    public final void a(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f8398a = Integer.valueOf(i);
    }

    public final zzhct b() {
        Integer num = this.f8398a;
        if (num != null) {
            return new zzhct(num.intValue(), this.b);
        }
        throw new GeneralSecurityException("Key size is not set");
    }
}
