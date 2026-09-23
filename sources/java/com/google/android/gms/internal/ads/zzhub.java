package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.ECPoint;

/* loaded from: classes.dex */
public final class zzhub {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8788a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8789c;
    public static final zzhid d;
    public static final zzhig e;
    public static final zzhid f;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.EcdsaPrivateKey");
        zzhxc a3 = zzhkl.a("type.googleapis.com/google.crypto.tink.EcdsaPublicKey");
        f8788a = new zzhjj(zzhre.class, zzhua.f8787a);
        b = new zzhjg(a2, zzhtv.f8782a);
        f8789c = new zzhie(zzhri.class, zzhtw.f8783a);
        d = new zzhib(a3, zzhtx.f8784a);
        e = new zzhie(zzhrg.class, zzhty.f8785a);
        f = new zzhib(a2, zzhtz.f8786a);
    }

    public static zzhpw a(zzhrd zzhrdVar) {
        if (zzhrd.b.equals(zzhrdVar)) {
            return zzhpw.TINK;
        }
        if (zzhrd.f8690c.equals(zzhrdVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhrd.e.equals(zzhrdVar)) {
            return zzhpw.RAW;
        }
        if (zzhrd.d.equals(zzhrdVar)) {
            return zzhpw.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhrdVar.f8691a));
    }

    public static zzhrb b(zzhor zzhorVar) {
        int ordinal = zzhorVar.ordinal();
        if (ordinal != 2) {
            if (ordinal != 3) {
                if (ordinal == 4) {
                    return zzhrb.d;
                }
                int zza = zzhorVar.zza();
                throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse HashType: ", new StringBuilder(String.valueOf(zza).length() + 26)));
            }
            return zzhrb.b;
        }
        return zzhrb.f8686c;
    }

    public static zzhrd c(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 4) {
                        return zzhrd.f8690c;
                    }
                    int zza = zzhpwVar.zza();
                    throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                }
                return zzhrd.e;
            }
            return zzhrd.d;
        }
        return zzhrd.b;
    }

    public static int d(zzhra zzhraVar) {
        if (zzhra.f8684c.equals(zzhraVar)) {
            return 33;
        }
        if (zzhra.d.equals(zzhraVar)) {
            return 49;
        }
        if (zzhra.e.equals(zzhraVar)) {
            return 67;
        }
        throw new GeneralSecurityException("Unable to serialize CurveType ".concat(zzhraVar.f8685a));
    }

    public static zzhoe e(zzhre zzhreVar) {
        zzhor zzhorVar;
        int i;
        zzhod E = zzhoe.E();
        zzhrb zzhrbVar = zzhreVar.f8693c;
        if (zzhrb.b.equals(zzhrbVar)) {
            zzhorVar = zzhor.SHA256;
        } else if (zzhrb.f8686c.equals(zzhrbVar)) {
            zzhorVar = zzhor.SHA384;
        } else if (zzhrb.d.equals(zzhrbVar)) {
            zzhorVar = zzhor.SHA512;
        } else {
            throw new GeneralSecurityException("Unable to serialize HashType ".concat(zzhrbVar.f8687a));
        }
        E.k();
        ((zzhoe) E.f).G(zzhorVar);
        zzhra zzhraVar = zzhreVar.b;
        int i2 = 4;
        if (zzhra.f8684c.equals(zzhraVar)) {
            i = 4;
        } else if (zzhra.d.equals(zzhraVar)) {
            i = 5;
        } else if (zzhra.e.equals(zzhraVar)) {
            i = 6;
        } else {
            throw new GeneralSecurityException("Unable to serialize CurveType ".concat(zzhraVar.f8685a));
        }
        E.k();
        ((zzhoe) E.f).J(i);
        zzhrc zzhrcVar = zzhreVar.f8692a;
        if (zzhrc.b.equals(zzhrcVar)) {
            i2 = 3;
        } else if (!zzhrc.f8688c.equals(zzhrcVar)) {
            throw new GeneralSecurityException("Unable to serialize SignatureEncoding ".concat(zzhrcVar.f8689a));
        }
        E.k();
        ((zzhoe) E.f).K(i2);
        return (zzhoe) E.m();
    }

    public static zzhoi f(zzhri zzhriVar) {
        int d2 = d(zzhriVar.f8698a.b);
        ECPoint eCPoint = zzhriVar.b;
        zzhoh I = zzhoi.I();
        zzhoe e2 = e(zzhriVar.f8698a);
        I.k();
        ((zzhoi) I.f).L(e2);
        byte[] b2 = zzhhe.b(eCPoint.getAffineX(), d2);
        zzhzl zzhzlVar = zzhzl.f;
        zzhzl B = zzhzl.B(b2, 0, b2.length);
        I.k();
        ((zzhoi) I.f).M(B);
        byte[] b3 = zzhhe.b(eCPoint.getAffineY(), d2);
        zzhzl B2 = zzhzl.B(b3, 0, b3.length);
        I.k();
        ((zzhoi) I.f).N(B2);
        return (zzhoi) I.m();
    }

    public static zzhra g(int i) {
        int i2 = i - 2;
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 == 4) {
                    return zzhra.e;
                }
                if (i != 1) {
                    throw new GeneralSecurityException(androidx.work.impl.workers.a.r(i2, "Unable to parse EllipticCurveType: ", new StringBuilder(String.valueOf(i2).length() + 35)));
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
            return zzhra.d;
        }
        return zzhra.f8684c;
    }

    public static zzhrc h(int i) {
        int i2 = i - 2;
        if (i2 != 1) {
            if (i2 == 2) {
                return zzhrc.f8688c;
            }
            if (i != 1) {
                throw new GeneralSecurityException(androidx.work.impl.workers.a.r(i2, "Unable to parse EcdsaSignatureEncoding: ", new StringBuilder(String.valueOf(i2).length() + 40)));
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        return zzhrc.b;
    }
}
