package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhgp implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8529a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Provider f8530c;

    public zzhgp(byte[] bArr, byte[] bArr2, Provider provider) {
        if (zzhhb.a(1)) {
            if (bArr.length == 32) {
                this.f8529a = bArr;
                this.b = bArr2;
                this.f8530c = provider;
                return;
            }
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr3 = this.b;
            int length2 = bArr3.length;
            if (length >= length2 + 40) {
                if (zzhkl.c(bArr3, bArr)) {
                    byte[] bArr4 = new byte[24];
                    System.arraycopy(bArr, length2, bArr4, 0, 24);
                    int[] d = zzhga.d(zzhga.c(this.f8529a), zzhga.c(bArr4));
                    ByteBuffer order = ByteBuffer.allocate(d.length * 4).order(ByteOrder.LITTLE_ENDIAN);
                    order.asIntBuffer().put(d);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(order.array(), "ChaCha20");
                    byte[] bArr5 = new byte[12];
                    System.arraycopy(bArr4, 16, bArr5, 4, 8);
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr5);
                    byte[] bArr6 = zzhfu.d;
                    Cipher cipher = Cipher.getInstance("ChaCha20-Poly1305", this.f8530c);
                    cipher.init(2, secretKeySpec, ivParameterSpec);
                    if (bArr2 != null && bArr2.length != 0) {
                        cipher.updateAAD(bArr2);
                    }
                    return cipher.doFinal(bArr, length2 + 24, (length - length2) - 24);
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
