package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhff {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8491a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8492c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.AesEaxKey");
        f8491a = new zzhjj(zzhcb.class, zzhfe.f8490a);
        b = new zzhjg(a2, zzhfb.f8487a);
        f8492c = new zzhie(zzhbv.class, zzhfc.f8488a);
        d = new zzhib(a2, zzhfd.f8489a);
    }

    public static zzhpw a(zzhca zzhcaVar) {
        if (zzhca.b.equals(zzhcaVar)) {
            return zzhpw.TINK;
        }
        if (zzhca.f8371c.equals(zzhcaVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhca.d.equals(zzhcaVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzhcaVar)));
    }

    public static zzhca b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza = zzhpwVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                    }
                } else {
                    return zzhca.d;
                }
            }
            return zzhca.f8371c;
        }
        return zzhca.b;
    }
}
