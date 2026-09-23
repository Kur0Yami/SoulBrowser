package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzhvl implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f8832a;
    public final byte[] b;

    public zzhvl(byte[] bArr, zzhxc zzhxcVar) {
        if (zzhhb.a(2)) {
            ThreadLocal threadLocal = zzhfh.f8493a;
            zzhxa.a(bArr.length);
            this.f8832a = new SecretKeySpec(bArr, "AES");
            this.b = zzhxcVar.b();
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr3 = this.b;
            int length2 = bArr3.length;
            if (length >= length2 + 28) {
                if (zzhkl.c(bArr3, bArr)) {
                    ThreadLocal threadLocal = zzhfh.f8493a;
                    Objects.equals(System.getProperty("java.vendor"), "The Android Project");
                    GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(Uuid.SIZE_BITS, bArr, length2, 12);
                    Cipher cipher = (Cipher) zzhfh.f8493a.get();
                    cipher.init(2, this.f8832a, gCMParameterSpec);
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
