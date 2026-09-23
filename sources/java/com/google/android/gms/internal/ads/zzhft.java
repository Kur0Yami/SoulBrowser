package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhft {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8506a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8507c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.AesGcmSivKey");
        f8506a = new zzhjj(zzhct.class, zzhfs.f8505a);
        b = new zzhjg(a2, zzhfp.f8502a);
        f8507c = new zzhie(zzhcm.class, zzhfq.f8503a);
        d = new zzhib(a2, zzhfr.f8504a);
    }

    public static zzhpw a(zzhcs zzhcsVar) {
        if (zzhcs.b.equals(zzhcsVar)) {
            return zzhpw.TINK;
        }
        if (zzhcs.f8399c.equals(zzhcsVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhcs.d.equals(zzhcsVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzhcsVar)));
    }

    public static zzhcs b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza = zzhpwVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                    }
                } else {
                    return zzhcs.d;
                }
            }
            return zzhcs.f8399c;
        }
        return zzhcs.b;
    }
}
