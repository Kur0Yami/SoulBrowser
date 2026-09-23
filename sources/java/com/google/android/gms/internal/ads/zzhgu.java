package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhgu {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8535a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8536c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        f8535a = new zzhjj(zzhev.class, zzhgt.f8534a);
        b = new zzhjg(a2, zzhgq.f8531a);
        f8536c = new zzhie(zzhep.class, zzhgr.f8532a);
        d = new zzhib(a2, zzhgs.f8533a);
    }

    public static zzhpw a(zzheu zzheuVar) {
        if (zzheu.b.equals(zzheuVar)) {
            return zzhpw.TINK;
        }
        if (zzheu.f8476c.equals(zzheuVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzheu.d.equals(zzheuVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzheuVar.f8477a));
    }

    public static zzheu b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza = zzhpwVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                    }
                } else {
                    return zzheu.d;
                }
            }
            return zzheu.f8476c;
        }
        return zzheu.b;
    }
}
