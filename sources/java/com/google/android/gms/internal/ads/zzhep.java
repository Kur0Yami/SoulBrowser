package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhep extends zzhbe {

    /* renamed from: a, reason: collision with root package name */
    public final zzhev f8469a;
    public final zzhxe b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhxc f8470c;
    public final Integer d;

    public zzhep(zzhev zzhevVar, zzhxe zzhxeVar, zzhxc zzhxcVar, Integer num) {
        this.f8469a = zzhevVar;
        this.b = zzhxeVar;
        this.f8470c = zzhxcVar;
        this.d = num;
    }

    public static zzhep d(zzheu zzheuVar, zzhxe zzhxeVar, Integer num) {
        zzhxc b;
        String str = zzheuVar.f8477a;
        zzhxc zzhxcVar = zzhxeVar.f8865a;
        zzheu zzheuVar2 = zzheu.d;
        if (zzheuVar != zzheuVar2 && num == null) {
            throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(str.length() + 62), "For given Variant ", str, " the value of idRequirement must be non-null"));
        }
        if (zzheuVar == zzheuVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzhxcVar.f8863a.length == 32) {
            zzhev zzhevVar = new zzhev(zzheuVar);
            if (zzheuVar == zzheuVar2) {
                b = zzhjf.f8592a;
            } else if (zzheuVar == zzheu.f8476c) {
                b = zzhjf.a(num.intValue());
            } else if (zzheuVar == zzheu.b) {
                b = zzhjf.b(num.intValue());
            } else {
                throw new IllegalStateException("Unknown Variant: ".concat(str));
            }
            return new zzhep(zzhevVar, zzhxeVar, b, num);
        }
        int length = zzhxcVar.f8863a.length;
        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(length, "XChaCha20Poly1305 key must be constructed with key of length 32 bytes, not ", new StringBuilder(String.valueOf(length).length() + 75)));
    }

    @Override // com.google.android.gms.internal.ads.zzhbe, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8469a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final zzhxc c() {
        return this.f8470c;
    }
}
