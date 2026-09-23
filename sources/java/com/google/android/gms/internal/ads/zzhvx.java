package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhvx implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final zzhvi f8840a;
    public final zzhws b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8841c;
    public final byte[] d;

    public zzhvx(zzhvi zzhviVar, zzhws zzhwsVar, int i, byte[] bArr) {
        this.f8840a = zzhviVar;
        this.b = zzhwsVar;
        this.f8841c = i;
        this.d = bArr;
    }

    public static zzhvx b(zzhbl zzhblVar) {
        byte[] b = zzhblVar.b.f8865a.b();
        zzhbt zzhbtVar = zzhblVar.f8345a;
        zzhvi zzhviVar = new zzhvi(b, zzhbtVar.f8359c);
        String valueOf = String.valueOf(zzhbtVar.f);
        zzhwr zzhwrVar = new zzhwr("HMAC".concat(valueOf), new SecretKeySpec(zzhblVar.f8346c.f8865a.b(), "HMAC"));
        int i = zzhbtVar.d;
        return new zzhvx(zzhviVar, new zzhws(zzhwrVar, i), i, zzhblVar.d.b());
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] a2;
        int length = bArr.length;
        byte[] bArr3 = this.d;
        int length2 = bArr3.length;
        int i = this.f8841c;
        if (length >= i + length2) {
            if (zzhkl.c(bArr3, bArr)) {
                int i2 = length - i;
                byte[] copyOfRange = Arrays.copyOfRange(bArr, length2, i2);
                byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i2, length);
                if (bArr2 == null) {
                    bArr2 = new byte[0];
                }
                byte[] a3 = zzhvp.a(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8));
                zzhws zzhwsVar = this.b;
                int i3 = zzhwsVar.b;
                zzhmn zzhmnVar = zzhwsVar.f8852a;
                byte[] bArr4 = zzhwsVar.f8853c;
                byte[] bArr5 = zzhwsVar.d;
                if (bArr5.length > 0) {
                    a2 = zzhvp.a(bArr4, zzhmnVar.a(zzhvp.a(a3, bArr5), i3));
                } else {
                    a2 = zzhvp.a(bArr4, zzhmnVar.a(a3, i3));
                }
                if (MessageDigest.isEqual(a2, copyOfRange2)) {
                    int length3 = copyOfRange.length;
                    zzhvi zzhviVar = this.f8840a;
                    int i4 = zzhviVar.b;
                    if (length3 >= i4) {
                        byte[] bArr6 = new byte[i4];
                        System.arraycopy(copyOfRange, 0, bArr6, 0, i4);
                        int i5 = length3 - i4;
                        byte[] bArr7 = new byte[i5];
                        Cipher cipher = (Cipher) zzhvi.d.get();
                        byte[] bArr8 = new byte[zzhviVar.f8829c];
                        System.arraycopy(bArr6, 0, bArr8, 0, i4);
                        cipher.init(2, zzhviVar.f8828a, new IvParameterSpec(bArr8));
                        if (cipher.doFinal(copyOfRange, i4, i5, bArr7, 0) == i5) {
                            return bArr7;
                        }
                        throw new GeneralSecurityException("stored output's length does not match input's length");
                    }
                    throw new GeneralSecurityException("ciphertext too short");
                }
                throw new GeneralSecurityException("invalid MAC");
            }
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        throw new GeneralSecurityException("Decryption failed (ciphertext too short).");
    }
}
