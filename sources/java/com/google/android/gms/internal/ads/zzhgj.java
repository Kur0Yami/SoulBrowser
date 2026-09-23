package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzhgj implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f8521a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhmn f8522c;

    public zzhgj(byte[] bArr, zzhxc zzhxcVar, int i) {
        this.f8522c = zzhwp.b(zzhml.c(zzhmm.b(bArr.length), new zzhxe(zzhxc.a(bArr))));
        this.f8521a = zzhxcVar.b();
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr3 = this.f8521a;
            int length2 = bArr3.length;
            int i = this.b + length2;
            int i2 = i + 28;
            if (length >= i2) {
                if (zzhkl.c(bArr3, bArr)) {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, length2, i);
                    byte[] bArr4 = {0, 1, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                    byte[] bArr5 = {0, 2, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
                    int length3 = copyOfRange.length;
                    if (length3 <= 12 && length3 >= 8) {
                        System.arraycopy(copyOfRange, 0, bArr4, 4, length3);
                        System.arraycopy(copyOfRange, 0, bArr5, 4, length3);
                        byte[] bArr6 = new byte[32];
                        zzhmn zzhmnVar = this.f8522c;
                        System.arraycopy(zzhmnVar.a(bArr4, 16), 0, bArr6, 0, 16);
                        System.arraycopy(zzhmnVar.a(bArr5, 16), 0, bArr6, 16, 16);
                        if (zzhhb.a(2)) {
                            ThreadLocal threadLocal = zzhfh.f8493a;
                            zzhxa.a(32);
                            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr6, "AES");
                            int i3 = i + 12;
                            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, i, i3);
                            if (copyOfRange2.length == 12) {
                                if (length >= i2) {
                                    Objects.equals(System.getProperty("java.vendor"), "The Android Project");
                                    GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(Uuid.SIZE_BITS, copyOfRange2, 0, 12);
                                    Cipher cipher = (Cipher) zzhfh.f8493a.get();
                                    cipher.init(2, secretKeySpec, gCMParameterSpec);
                                    if (bArr2 != null && bArr2.length != 0) {
                                        cipher.updateAAD(bArr2);
                                    }
                                    return cipher.doFinal(bArr, i3, length - i3);
                                }
                                throw new GeneralSecurityException("ciphertext too short");
                            }
                            throw new GeneralSecurityException("iv is wrong size");
                        }
                        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
                    }
                    throw new GeneralSecurityException("invalid salt size");
                }
                throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new NullPointerException("ciphertext is null");
    }
}
