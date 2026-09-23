package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzhfo implements zzgzq {
    public static final byte[] d = zzhwm.a("7a806c");
    public static final byte[] e = zzhwm.a("46bb91c3c5");
    public static final byte[] f = zzhwm.a("36864200e0eaf5284d884a0e77d31646");
    public static final byte[] g = zzhwm.a("bae8e37fc83441b16034566b");
    public static final byte[] h = zzhwm.a("af60eb711bd85bc1e4d3e0a462e074eea428a8");

    /* renamed from: a, reason: collision with root package name */
    public final zzhfn f8500a;
    public final SecretKeySpec b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8501c;

    public zzhfo(byte[] bArr, byte[] bArr2) {
        this.f8501c = bArr2;
        zzhxa.a(bArr.length);
        this.b = new SecretKeySpec(bArr, "AES");
        this.f8500a = zzhgw.f8537a;
    }

    public static boolean b(Cipher cipher) {
        try {
            byte[] bArr = g;
            cipher.init(2, new SecretKeySpec(f, "AES"), new GCMParameterSpec(Uuid.SIZE_BITS, bArr, 0, bArr.length));
            cipher.updateAAD(e);
            byte[] bArr2 = h;
            return MessageDigest.isEqual(cipher.doFinal(bArr2, 0, bArr2.length), d);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = this.f8501c;
        int length2 = bArr3.length;
        if (length >= length2 + 28) {
            if (zzhkl.c(bArr3, bArr)) {
                Cipher a2 = ((zzhgw) this.f8500a).a();
                a2.init(2, this.b, new GCMParameterSpec(Uuid.SIZE_BITS, bArr, length2, 12));
                if (bArr2 != null && bArr2.length != 0) {
                    a2.updateAAD(bArr2);
                }
                return a2.doFinal(bArr, length2 + 12, (length - length2) - 12);
            }
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
