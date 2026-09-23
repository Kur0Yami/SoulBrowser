package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhej extends zzhbe {

    /* renamed from: a, reason: collision with root package name */
    public final zzheo f8461a;
    public final zzhxe b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhxc f8462c;
    public final Integer d;

    public zzhej(zzheo zzheoVar, zzhxe zzhxeVar, zzhxc zzhxcVar, Integer num) {
        this.f8461a = zzheoVar;
        this.b = zzhxeVar;
        this.f8462c = zzhxcVar;
        this.d = num;
    }

    public static zzhej d(zzheo zzheoVar, zzhxe zzhxeVar, Integer num) {
        zzhxc b;
        zzhxc zzhxcVar = zzhxeVar.f8865a;
        zzhen zzhenVar = zzheoVar.f8468a;
        String str = zzhenVar.f8467a;
        zzhen zzhenVar2 = zzhen.f8466c;
        if (zzhenVar != zzhenVar2 && num == null) {
            throw new GeneralSecurityException(android.support.v4.media.a.q(new StringBuilder(str.length() + 62), "For given Variant ", str, " the value of idRequirement must be non-null"));
        }
        if (zzhenVar == zzhenVar2 && num != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (zzhxcVar.f8863a.length == 32) {
            if (zzhenVar == zzhenVar2) {
                b = zzhjf.f8592a;
            } else if (zzhenVar == zzhen.b) {
                b = zzhjf.b(num.intValue());
            } else {
                throw new IllegalStateException("Unknown Variant: ".concat(str));
            }
            return new zzhej(zzheoVar, zzhxeVar, b, num);
        }
        int length = zzhxcVar.f8863a.length;
        throw new GeneralSecurityException(androidx.work.impl.workers.a.r(length, "XAesGcmKey key must be constructed with key of length 32 bytes, not ", new StringBuilder(String.valueOf(length).length() + 68)));
    }

    @Override // com.google.android.gms.internal.ads.zzhbe, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8461a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final zzhxc c() {
        return this.f8462c;
    }
}
