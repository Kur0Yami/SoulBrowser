package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhrv extends zzhtu {

    /* renamed from: a, reason: collision with root package name */
    public final zzhro f8715a;
    public final zzhxc b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhxc f8716c;
    public final Integer d;

    public zzhrv(zzhro zzhroVar, zzhxc zzhxcVar, zzhxc zzhxcVar2, Integer num) {
        this.f8715a = zzhroVar;
        this.b = zzhxcVar;
        this.f8716c = zzhxcVar2;
        this.d = num;
    }

    public static zzhrv d(zzhrn zzhrnVar, zzhxc zzhxcVar, Integer num) {
        zzhxc a2;
        String str = zzhrnVar.f8706a;
        byte[] bArr = zzhxcVar.f8863a;
        zzhro zzhroVar = new zzhro(zzhrnVar);
        zzhrn zzhrnVar2 = zzhrn.e;
        if (!zzhrnVar.equals(zzhrnVar2) && num == null) {
            throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(str.length() + 62), "For given Variant ", str, " the value of idRequirement must be non-null"));
        }
        if (zzhrnVar.equals(zzhrnVar2) && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (bArr.length == 32) {
            if (zzhrnVar == zzhrnVar2) {
                a2 = zzhjf.f8592a;
            } else if (zzhrnVar != zzhrn.f8705c && zzhrnVar != zzhrn.d) {
                if (zzhrnVar == zzhrn.b) {
                    a2 = zzhjf.b(num.intValue());
                } else {
                    throw new IllegalStateException("Unknown Variant: ".concat(str));
                }
            } else {
                a2 = zzhjf.a(num.intValue());
            }
            return new zzhrv(zzhroVar, zzhxcVar, a2, num);
        }
        int length = bArr.length;
        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(length, "Ed25519 key must be constructed with key of length 32 bytes, not ", new StringBuilder(String.valueOf(length).length() + 65)));
    }

    @Override // com.google.android.gms.internal.ads.zzhtu, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8715a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzhtu
    public final zzhxc c() {
        return this.f8716c;
    }
}
