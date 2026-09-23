package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhfm {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8498a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8499c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.AesGcmKey");
        f8498a = new zzhjj(zzhck.class, zzhfl.f8497a);
        b = new zzhjg(a2, zzhfi.f8494a);
        f8499c = new zzhie(zzhcd.class, zzhfj.f8495a);
        d = new zzhib(a2, zzhfk.f8496a);
    }

    public static zzhpw a(zzhcj zzhcjVar) {
        if (zzhcj.b.equals(zzhcjVar)) {
            return zzhpw.TINK;
        }
        if (zzhcj.f8386c.equals(zzhcjVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhcj.d.equals(zzhcjVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(String.valueOf(zzhcjVar)));
    }

    public static zzhcj b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza = zzhpwVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                    }
                } else {
                    return zzhcj.d;
                }
            }
            return zzhcj.f8386c;
        }
        return zzhcj.b;
    }
}
