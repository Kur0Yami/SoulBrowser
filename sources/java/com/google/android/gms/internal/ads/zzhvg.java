package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;

/* loaded from: classes.dex */
public final class zzhvg implements zzhaq {
    public static final byte[] g = new byte[0];
    public static final byte[] h = {0};

    /* renamed from: a, reason: collision with root package name */
    public final RSAPublicKey f8826a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final PSSParameterSpec f8827c;
    public final byte[] d;
    public final byte[] e;
    public final Provider f;

    public zzhvg(RSAPublicKey rSAPublicKey, zzhtg zzhtgVar, zzhtg zzhtgVar2, int i, byte[] bArr, byte[] bArr2, Provider provider) {
        if (zzhhb.a(2)) {
            if (zzhtgVar.equals(zzhtgVar2)) {
                zzhxa.c(rSAPublicKey.getModulus().bitLength());
                zzhxa.d(rSAPublicKey.getPublicExponent());
                this.f8826a = rSAPublicKey;
                this.b = b(zzhtgVar);
                this.f8827c = c(zzhtgVar, zzhtgVar2, i);
                this.d = bArr;
                this.e = bArr2;
                this.f = provider;
                return;
            }
            throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
        }
        throw new GeneralSecurityException("Cannot use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available.");
    }

    public static String b(zzhtg zzhtgVar) {
        if (zzhtgVar == zzhtg.b) {
            return "SHA256withRSA/PSS";
        }
        if (zzhtgVar == zzhtg.f8763c) {
            return "SHA384withRSA/PSS";
        }
        if (zzhtgVar == zzhtg.d) {
            return "SHA512withRSA/PSS";
        }
        throw new IllegalArgumentException("Unsupported hash: ".concat(String.valueOf(zzhtgVar)));
    }

    public static PSSParameterSpec c(zzhtg zzhtgVar, zzhtg zzhtgVar2, int i) {
        String str;
        MGF1ParameterSpec mGF1ParameterSpec;
        zzhtg zzhtgVar3 = zzhtg.d;
        zzhtg zzhtgVar4 = zzhtg.f8763c;
        zzhtg zzhtgVar5 = zzhtg.b;
        if (zzhtgVar == zzhtgVar5) {
            str = "SHA-256";
        } else if (zzhtgVar == zzhtgVar4) {
            str = "SHA-384";
        } else if (zzhtgVar == zzhtgVar3) {
            str = "SHA-512";
        } else {
            throw new IllegalArgumentException("Unsupported MD hash: ".concat(String.valueOf(zzhtgVar)));
        }
        if (zzhtgVar2 == zzhtgVar5) {
            mGF1ParameterSpec = MGF1ParameterSpec.SHA256;
        } else if (zzhtgVar2 == zzhtgVar4) {
            mGF1ParameterSpec = MGF1ParameterSpec.SHA384;
        } else if (zzhtgVar2 == zzhtgVar3) {
            mGF1ParameterSpec = MGF1ParameterSpec.SHA512;
        } else {
            throw new IllegalArgumentException("Unsupported MGF1 hash: ".concat(String.valueOf(zzhtgVar2)));
        }
        return new PSSParameterSpec(str, "MGF1", mGF1ParameterSpec, i, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
    
        if (r0.intValue() <= 23) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzhvg d(com.google.android.gms.internal.ads.zzhtm r10) {
        /*
            int r0 = com.google.android.gms.internal.ads.zzhkl.f8617a
            java.lang.String r0 = "java.vendor"
            java.lang.String r1 = java.lang.System.getProperty(r0)
            java.lang.String r2 = "The Android Project"
            boolean r1 = j$.util.Objects.equals(r1, r2)
            if (r1 == 0) goto L2d
            java.lang.String r0 = java.lang.System.getProperty(r0)
            boolean r0 = j$.util.Objects.equals(r0, r2)
            r1 = 0
            if (r0 != 0) goto L1d
            r0 = r1
            goto L23
        L1d:
            int r0 = android.os.Build.VERSION.SDK_INT
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
        L23:
            int r0 = r0.intValue()
            r2 = 23
            if (r0 > r2) goto L2d
        L2b:
            r9 = r1
            goto L32
        L2d:
            java.security.Provider r1 = com.google.android.gms.internal.ads.zzhhf.a()
            goto L2b
        L32:
            if (r9 == 0) goto L6f
            java.lang.String r0 = "RSA"
            java.security.KeyFactory r0 = java.security.KeyFactory.getInstance(r0, r9)
            java.security.spec.RSAPublicKeySpec r1 = new java.security.spec.RSAPublicKeySpec
            java.math.BigInteger r2 = r10.b
            com.google.android.gms.internal.ads.zzhti r3 = r10.f8775a
            java.math.BigInteger r4 = r3.b
            r1.<init>(r2, r4)
            java.security.PublicKey r0 = r0.generatePublic(r1)
            java.security.interfaces.RSAPublicKey r0 = (java.security.interfaces.RSAPublicKey) r0
            com.google.android.gms.internal.ads.zzhvg r2 = new com.google.android.gms.internal.ads.zzhvg
            com.google.android.gms.internal.ads.zzhtg r4 = r3.d
            com.google.android.gms.internal.ads.zzhtg r5 = r3.e
            int r6 = r3.f
            com.google.android.gms.internal.ads.zzhxc r10 = r10.f8776c
            byte[] r7 = r10.b()
            com.google.android.gms.internal.ads.zzhth r10 = r3.f8768c
            com.google.android.gms.internal.ads.zzhth r1 = com.google.android.gms.internal.ads.zzhth.d
            boolean r10 = r10.equals(r1)
            if (r10 == 0) goto L68
            byte[] r10 = com.google.android.gms.internal.ads.zzhvg.h
        L65:
            r8 = r10
            r3 = r0
            goto L6b
        L68:
            byte[] r10 = com.google.android.gms.internal.ads.zzhvg.g
            goto L65
        L6b:
            r2.<init>(r3, r4, r5, r6, r7, r8, r9)
            return r2
        L6f:
            java.security.NoSuchProviderException r10 = new java.security.NoSuchProviderException
            java.lang.String r0 = "RSA SSA PSS using Conscrypt is not supported."
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhvg.d(com.google.android.gms.internal.ads.zzhtm):com.google.android.gms.internal.ads.zzhvg");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.d;
        if (zzhkl.c(bArr3, bArr)) {
            Signature signature = Signature.getInstance(this.b, this.f);
            signature.initVerify(this.f8826a);
            signature.setParameter(this.f8827c);
            signature.update(bArr2);
            byte[] bArr4 = this.e;
            if (bArr4.length > 0) {
                signature.update(bArr4);
            }
            int length = bArr.length;
            int length2 = bArr3.length;
            if (signature.verify(bArr, length2, length - length2)) {
                return;
            } else {
                throw new GeneralSecurityException("signature verification failed");
            }
        }
        throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
    }
}
