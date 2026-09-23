package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhcu extends zzhbe {

    /* renamed from: a, reason: collision with root package name */
    public final zzhcz f8402a;
    public final zzhxe b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhxc f8403c;
    public final Integer d;

    public zzhcu(zzhcz zzhczVar, zzhxe zzhxeVar, zzhxc zzhxcVar, Integer num) {
        this.f8402a = zzhczVar;
        this.b = zzhxeVar;
        this.f8403c = zzhxcVar;
        this.d = num;
    }

    public static zzhcu d(zzhcy zzhcyVar, zzhxe zzhxeVar, Integer num) {
        zzhxc b;
        String str = zzhcyVar.f8409a;
        zzhxc zzhxcVar = zzhxeVar.f8865a;
        zzhcy zzhcyVar2 = zzhcy.d;
        if (zzhcyVar != zzhcyVar2 && num == null) {
            throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(str.length() + 62), "For given Variant ", str, " the value of idRequirement must be non-null"));
        }
        if (zzhcyVar == zzhcyVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzhxcVar.f8863a.length == 32) {
            zzhcz zzhczVar = new zzhcz(zzhcyVar);
            if (zzhcyVar == zzhcyVar2) {
                b = zzhjf.f8592a;
            } else if (zzhcyVar == zzhcy.f8408c) {
                b = zzhjf.a(num.intValue());
            } else if (zzhcyVar == zzhcy.b) {
                b = zzhjf.b(num.intValue());
            } else {
                throw new IllegalStateException("Unknown Variant: ".concat(str));
            }
            return new zzhcu(zzhczVar, zzhxeVar, b, num);
        }
        int length = zzhxcVar.f8863a.length;
        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(length, "ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not ", new StringBuilder(String.valueOf(length).length() + 74)));
    }

    @Override // com.google.android.gms.internal.ads.zzhbe, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8402a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final zzhxc c() {
        return this.f8403c;
    }
}
