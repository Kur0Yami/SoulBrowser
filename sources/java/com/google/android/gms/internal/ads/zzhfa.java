package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhfa {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8485a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8486c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        f8485a = new zzhjj(zzhbt.class, zzhez.f8482a);
        b = new zzhjg(a2, zzhew.f8479a);
        f8486c = new zzhie(zzhbl.class, zzhex.f8480a);
        d = new zzhib(a2, zzhey.f8481a);
    }

    public static zzhpw a(zzhbs zzhbsVar) {
        if (zzhbs.b.equals(zzhbsVar)) {
            return zzhpw.TINK;
        }
        if (zzhbs.f8356c.equals(zzhbsVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhbs.d.equals(zzhbsVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzhbsVar)));
    }

    public static zzhbs b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza = zzhpwVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                    }
                } else {
                    return zzhbs.d;
                }
            }
            return zzhbs.f8356c;
        }
        return zzhbs.b;
    }

    public static zzhbr c(zzhor zzhorVar) {
        int ordinal = zzhorVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal == 5) {
                            return zzhbr.f8354c;
                        }
                        int zza = zzhorVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse HashType: ", new StringBuilder(String.valueOf(zza).length() + 26)));
                    }
                    return zzhbr.f;
                }
                return zzhbr.d;
            }
            return zzhbr.e;
        }
        return zzhbr.b;
    }

    public static zzhox d(zzhbt zzhbtVar) {
        zzhor zzhorVar;
        zzhow F = zzhox.F();
        int i = zzhbtVar.d;
        F.k();
        ((zzhox) F.f).I(i);
        zzhbr zzhbrVar = zzhbtVar.f;
        if (zzhbr.b.equals(zzhbrVar)) {
            zzhorVar = zzhor.SHA1;
        } else if (zzhbr.f8354c.equals(zzhbrVar)) {
            zzhorVar = zzhor.SHA224;
        } else if (zzhbr.d.equals(zzhbrVar)) {
            zzhorVar = zzhor.SHA256;
        } else if (zzhbr.e.equals(zzhbrVar)) {
            zzhorVar = zzhor.SHA384;
        } else if (zzhbr.f.equals(zzhbrVar)) {
            zzhorVar = zzhor.SHA512;
        } else {
            throw new GeneralSecurityException("Unable to serialize HashType ".concat(String.valueOf(zzhbrVar)));
        }
        F.k();
        ((zzhox) F.f).H(zzhorVar);
        return (zzhox) F.m();
    }
}
