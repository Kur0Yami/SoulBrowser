package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;

/* loaded from: classes.dex */
public final class zzhum implements zzhaq {
    public static final byte[] e = {48, 42, 48, 5, 6, 3, 43, 101, 112, 3, 33, 0};

    /* renamed from: a, reason: collision with root package name */
    public final PublicKey f8801a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8802c;
    public final Provider d;

    public zzhum(byte[] bArr, byte[] bArr2, byte[] bArr3, Provider provider) {
        if (zzhhb.a(1)) {
            if (bArr.length == 32) {
                this.f8801a = KeyFactory.getInstance("Ed25519", provider).generatePublic(new X509EncodedKeySpec(zzhvp.a(e, bArr)));
                this.b = bArr2;
                this.f8802c = bArr3;
                this.d = provider;
                return;
            }
            throw new IllegalArgumentException("Given public key's length is not 32.");
        }
        throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
    }

    public static zzhum b(zzhrv zzhrvVar) {
        byte[] bArr;
        Provider a2 = zzhhf.a();
        if (a2 != null) {
            if (zzhhb.a(1)) {
                byte[] b = zzhrvVar.b.b();
                byte[] b2 = zzhrvVar.f8716c.b();
                if (zzhrvVar.f8715a.f8707a.equals(zzhrn.d)) {
                    bArr = new byte[]{0};
                } else {
                    bArr = new byte[0];
                }
                return new zzhum(b, b2, bArr, a2);
            }
            throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
        }
        throw new NoSuchProviderException("Ed25519VerifyJce requires the Conscrypt provider.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        if (bArr.length == length + 64) {
            if (zzhkl.c(bArr3, bArr)) {
                Signature signature = Signature.getInstance("Ed25519", this.d);
                signature.initVerify(this.f8801a);
                signature.update(bArr2);
                signature.update(this.f8802c);
                try {
                    if (signature.verify(bArr, length, 64)) {
                        return;
                    }
                } catch (RuntimeException unused) {
                }
                throw new GeneralSecurityException("Signature check failed.");
            }
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
        throw new GeneralSecurityException("Invalid signature length: 64");
    }
}
