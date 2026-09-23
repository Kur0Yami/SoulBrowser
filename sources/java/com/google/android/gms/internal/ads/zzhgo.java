package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhgo {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8527a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8528c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.XAesGcmKey");
        f8527a = new zzhjj(zzheo.class, zzhgn.f8526a);
        b = new zzhjg(a2, zzhgk.f8523a);
        f8528c = new zzhie(zzhej.class, zzhgl.f8524a);
        d = new zzhib(a2, zzhgm.f8525a);
    }

    public static zzhpw a(zzhen zzhenVar) {
        if (zzhenVar.equals(zzhen.b)) {
            return zzhpw.TINK;
        }
        if (zzhenVar.equals(zzhen.f8466c)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhenVar.f8467a));
    }

    public static zzhen b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                return zzhen.f8466c;
            }
            int zza = zzhpwVar.zza();
            throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
        }
        return zzhen.b;
    }
}
