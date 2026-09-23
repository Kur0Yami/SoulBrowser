package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhdo {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhjl f8430a;
    public static final zzhji b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzhig f8431c;
    public static final zzhid d;

    static {
        zzhxc a2 = zzhkl.a("type.googleapis.com/google.crypto.tink.KmsAeadKey");
        f8430a = new zzhjj(zzhdj.class, zzhdn.f8429a);
        b = new zzhjg(a2, zzhdk.f8426a);
        f8431c = new zzhie(zzhdh.class, zzhdl.f8427a);
        d = new zzhib(a2, zzhdm.f8428a);
    }

    public static zzhpw a(zzhdi zzhdiVar) {
        if (zzhdi.b.equals(zzhdiVar)) {
            return zzhpw.TINK;
        }
        if (zzhdi.f8423c.equals(zzhdiVar)) {
            return zzhpw.RAW;
        }
        throw new GeneralSecurityException("Unable to serialize variant: ".concat(zzhdiVar.f8424a));
    }

    public static zzhdi b(zzhpw zzhpwVar) {
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal == 3) {
                return zzhdi.f8423c;
            }
            int zza = zzhpwVar.zza();
            throw new GeneralSecurityException(androidx.work.impl.workers.a.r(zza, "Unable to parse OutputPrefixType: ", new StringBuilder(String.valueOf(zza).length() + 34)));
        }
        return zzhdi.b;
    }
}
