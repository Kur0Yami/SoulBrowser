package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzhdd implements zzgzq {

    /* renamed from: c, reason: collision with root package name */
    public static final byte[] f8415c = new byte[0];
    public static final Set d;

    /* renamed from: a, reason: collision with root package name */
    public final String f8416a;
    public final zzgzq b;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        hashSet.add("type.googleapis.com/google.crypto.tink.AesEaxKey");
        d = DesugarCollections.unmodifiableSet(hashSet);
    }

    public zzhdd(zzhpd zzhpdVar, zzgzq zzgzqVar) {
        if (d.contains(zzhpdVar.D())) {
            this.f8416a = zzhpdVar.D();
            zzhpc I = zzhpd.I(zzhpdVar);
            I.q(zzhpw.RAW);
            zzhat.a(((zzhpd) I.m()).h());
            this.b = zzgzqVar;
            return;
        }
        String D = zzhpdVar.D();
        throw new IllegalArgumentException(android.support.v4.media.a.q(new StringBuilder(String.valueOf(D).length() + 67), "Unsupported DEK key type: ", D, ". Only Tink AEAD key types are supported."));
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i = wrap.getInt();
            if (i > 0 && i <= 4096 && i <= bArr.length - 4) {
                byte[] bArr3 = new byte[i];
                wrap.get(bArr3, 0, i);
                byte[] bArr4 = new byte[wrap.remaining()];
                wrap.get(bArr4, 0, wrap.remaining());
                byte[] a2 = this.b.a(bArr3, f8415c);
                String str = this.f8416a;
                zzhzl zzhzlVar = zzhzl.f;
                return ((zzgzq) ((zzhjw) zzhjb.b.f8588a.get()).a(zzhje.b.e(zzhjz.a(str, zzhzl.B(a2, 0, a2.length), zzhoz.SYMMETRIC, zzhpw.RAW, null)), zzgzq.class)).a(bArr4, bArr2);
            }
            throw new GeneralSecurityException("length of encrypted DEK too large");
        } catch (IndexOutOfBoundsException e) {
            e = e;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (NegativeArraySizeException e2) {
            e = e2;
            throw new GeneralSecurityException("invalid ciphertext", e);
        } catch (BufferUnderflowException e3) {
            e = e3;
            throw new GeneralSecurityException("invalid ciphertext", e);
        }
    }
}
