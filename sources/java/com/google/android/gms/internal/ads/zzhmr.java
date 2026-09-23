package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzhmr implements zzhmn {
    public static final ThreadLocal d = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f8676a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8677c;

    public zzhmr(byte[] bArr) {
        zzhxa.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f8676a = secretKeySpec;
        if (zzhhb.a(1)) {
            Cipher cipher = (Cipher) d.get();
            cipher.init(1, secretKeySpec);
            byte[] a2 = zzhmb.a(cipher.doFinal(new byte[16]));
            this.b = a2;
            this.f8677c = zzhmb.a(a2);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzhmn
    public final byte[] a(byte[] bArr, int i) {
        byte[] b;
        if (i <= 16) {
            int i2 = 1;
            if (zzhhb.a(1)) {
                Cipher cipher = (Cipher) d.get();
                cipher.init(1, this.f8676a);
                int length = bArr.length;
                if (length != 0) {
                    i2 = 1 + ((length - 1) >> 4);
                }
                int i3 = i2 - 1;
                int i4 = i3 * 16;
                if (i2 * 16 == length) {
                    b = zzhvp.b(bArr, i4, this.b);
                } else {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, i4, length);
                    int length2 = copyOfRange.length;
                    if (length2 < 16) {
                        byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                        copyOf[length2] = ByteCompanionObject.MIN_VALUE;
                        if (copyOf.length == 16) {
                            b = zzhvp.b(copyOf, 0, this.f8677c);
                        } else {
                            throw new IllegalArgumentException("The lengths of x and y should match.");
                        }
                    } else {
                        throw new IllegalArgumentException("x must be smaller than a block.");
                    }
                }
                byte[] bArr2 = new byte[16];
                byte[] bArr3 = new byte[16];
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = i5 * 16;
                    for (int i7 = 0; i7 < 16; i7++) {
                        bArr3[i7] = (byte) (bArr2[i7] ^ bArr[i7 + i6]);
                    }
                    if (cipher.doFinal(bArr3, 0, 16, bArr2) != 16) {
                        throw new IllegalStateException("Cipher didn't write full block");
                    }
                }
                for (int i8 = 0; i8 < 16; i8++) {
                    bArr3[i8] = (byte) (bArr2[i8] ^ b[i8]);
                }
                if (cipher.doFinal(bArr3, 0, 16, bArr2) == 16) {
                    if (i == 16) {
                        return bArr2;
                    }
                    return Arrays.copyOf(bArr2, i);
                }
                throw new IllegalStateException("Cipher didn't write full block");
            }
            throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
