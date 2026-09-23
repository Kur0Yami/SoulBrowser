package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhfu implements zzgzq {
    public static final byte[] d = zzhwm.a("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f");
    public static final byte[] e = zzhwm.a("070000004041424344454647");
    public static final byte[] f = zzhwm.a("a0784d7a4716f3feb4f64e7f4b39bf04");

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f8508a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Provider f8509c;

    public zzhfu(byte[] bArr, byte[] bArr2, Provider provider) {
        if (zzhhb.a(1)) {
            if (bArr.length == 32) {
                this.f8508a = new SecretKeySpec(bArr, "ChaCha20");
                this.b = bArr2;
                this.f8509c = provider;
                return;
            }
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    public static Cipher b() {
        Cipher cipher = (Cipher) zzhwc.b.f8846a.zza("ChaCha20-Poly1305");
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(e);
            byte[] bArr = d;
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            byte[] bArr2 = f;
            if (cipher.doFinal(bArr2).length == 0) {
                cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
                if (cipher.doFinal(bArr2).length == 0) {
                    return cipher;
                }
            }
        } catch (GeneralSecurityException unused) {
        }
        throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr3 = this.b;
            int length2 = bArr3.length;
            if (length >= length2 + 28) {
                if (zzhkl.c(bArr3, bArr)) {
                    byte[] bArr4 = new byte[12];
                    System.arraycopy(bArr, length2, bArr4, 0, 12);
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
                    Cipher cipher = Cipher.getInstance("ChaCha20-Poly1305", this.f8509c);
                    cipher.init(2, this.f8508a, ivParameterSpec);
                    if (bArr2 != null && bArr2.length != 0) {
                        cipher.updateAAD(bArr2);
                    }
                    return cipher.doFinal(bArr, length2 + 12, (length - length2) - 12);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
