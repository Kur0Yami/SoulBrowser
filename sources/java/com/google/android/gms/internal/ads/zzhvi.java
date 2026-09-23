package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhvi implements zzhwn {
    public static final ThreadLocal d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f8828a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8829c;

    public zzhvi(byte[] bArr, int i) {
        if (zzhhb.a(2)) {
            zzhxa.a(bArr.length);
            this.f8828a = new SecretKeySpec(bArr, "AES");
            int blockSize = ((Cipher) d.get()).getBlockSize();
            this.f8829c = blockSize;
            if (i <= blockSize) {
                this.b = i;
                return;
            }
            throw new GeneralSecurityException("invalid IV size");
        }
        throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
    }
}
