package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhvk implements zzgzq {
    public static final ThreadLocal e = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8830a;
    public final zzhmn b;

    /* renamed from: c, reason: collision with root package name */
    public final SecretKeySpec f8831c;
    public final int d;

    public zzhvk(byte[] bArr, int i, byte[] bArr2) {
        if (zzhhb.a(1)) {
            if (i != 12 && i != 16) {
                throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
            }
            this.d = i;
            int length = bArr.length;
            zzhxa.a(length);
            this.f8831c = new SecretKeySpec(bArr, "AES");
            this.b = zzhwp.b(zzhml.c(zzhmm.b(length), new zzhxe(zzhxc.a(bArr))));
            this.f8830a = bArr2;
            return;
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    public static zzhvk b(zzhbv zzhbvVar) {
        if (zzhhb.a(1)) {
            zzhbvVar.getClass();
            return new zzhvk(zzhbvVar.b.f8865a.b(), zzhbvVar.f8362a.b, zzhbvVar.f8363c.b());
        }
        throw new GeneralSecurityException("Can not use AES-EAX in FIPS-mode.");
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f8830a;
        int length2 = bArr3.length;
        int i = this.d;
        int i2 = ((length - length2) - i) - 16;
        if (i2 >= 0) {
            if (zzhkl.c(bArr3, bArr)) {
                byte[] c2 = c(bArr, 0, length2, i);
                if (bArr2 == null) {
                    bArr2 = new byte[0];
                }
                byte[] c3 = c(bArr2, 1, 0, bArr2.length);
                byte[] c4 = c(bArr, 2, length2 + i, i2);
                int i3 = length - 16;
                byte b = 0;
                for (int i4 = 0; i4 < 16; i4++) {
                    b = (byte) (b | (((bArr[i3 + i4] ^ c3[i4]) ^ c2[i4]) ^ c4[i4]));
                }
                if (b == 0) {
                    Cipher cipher = (Cipher) e.get();
                    cipher.init(1, this.f8831c, new IvParameterSpec(c2));
                    return cipher.doFinal(bArr, bArr3.length + i, i2);
                }
                throw new AEADBadTagException("tag mismatch");
            }
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        throw new GeneralSecurityException("ciphertext too short");
    }

    public final byte[] c(byte[] bArr, int i, int i2, int i3) {
        byte[] bArr2 = new byte[i3 + 16];
        bArr2[15] = (byte) i;
        System.arraycopy(bArr, i2, bArr2, 16, i3);
        return this.b.a(bArr2, 16);
    }
}
