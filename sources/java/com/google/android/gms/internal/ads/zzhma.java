package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhma {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8666a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8667c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.AesCmacKey");
        f8666a = new zzhjj(zzhku.class, zzhlz.f8665a);
        b = new zzhjg(a2, zzhlw.f8662a);
        f8667c = new zzhie(zzhkn.class, zzhlx.f8663a);
        d = new zzhib(a2, zzhly.f8664a);
    }

    public static zzhpw a(zzhkt zzhktVar) {
        if (zzhkt.b.equals(zzhktVar)) {
            return zzhpw.TINK;
        }
        if (zzhkt.f8629c.equals(zzhktVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhkt.e.equals(zzhktVar)) {
            return zzhpw.RAW;
        }
        if (zzhkt.d.equals(zzhktVar)) {
            return zzhpw.LEGACY;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzhktVar)));
    }

    public static zzhkt b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 4) {
                        return zzhkt.f8629c;
                    }
                    int zza = zzhpwVar.zza();
                    throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                }
                return zzhkt.e;
            }
            return zzhkt.d;
        }
        return zzhkt.b;
    }
}
