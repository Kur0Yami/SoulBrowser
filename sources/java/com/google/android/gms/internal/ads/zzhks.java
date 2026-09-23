package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhks {

    /* renamed from: a, reason: collision with root package name */
    public Integer f8627a = null;
    public Integer b = null;

    /* renamed from: c, reason: collision with root package name */
    public zzhkt f8628c = zzhkt.e;

    public final void a(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i * 8)));
        }
        this.f8627a = Integer.valueOf(i);
    }

    public final void b(int i) {
        if (i >= 10 && i <= 16) {
            this.b = Integer.valueOf(i);
            return;
        }
        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(i, "Invalid tag size for AesCmacParameters: ", new StringBuilder(String.valueOf(i).length() + 40)));
    }

    public final zzhku c() {
        Integer num = this.f8627a;
        if (num != null) {
            if (this.b != null) {
                return new zzhku(num.intValue(), this.b.intValue(), this.f8628c);
            }
            throw new GeneralSecurityException("tag size not set");
        }
        throw new GeneralSecurityException("key size not set");
    }
}
