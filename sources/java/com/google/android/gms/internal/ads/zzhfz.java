package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhfz {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8514a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8515c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        f8514a = new zzhjj(zzhcz.class, zzhfy.f8513a);
        b = new zzhjg(a2, zzhfv.f8510a);
        f8515c = new zzhie(zzhcu.class, zzhfw.f8511a);
        d = new zzhib(a2, zzhfx.f8512a);
    }

    public static zzhpw a(zzhcy zzhcyVar) {
        if (zzhcy.b.equals(zzhcyVar)) {
            return zzhpw.TINK;
        }
        if (zzhcy.f8408c.equals(zzhcyVar)) {
            return zzhpw.CRUNCHY;
        }
        if (zzhcy.d.equals(zzhcyVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhcyVar.f8409a));
    }

    public static zzhcy b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        int zza = zzhpwVar.zza();
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
                    }
                } else {
                    return zzhcy.d;
                }
            }
            return zzhcy.f8408c;
        }
        return zzhcy.b;
    }
}
