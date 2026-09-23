package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhdp extends zzhbe {

    /* renamed from: a, reason: collision with root package name */
    public final zzhdt f8432a;
    public final zzhxc b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f8433c;

    public zzhdp(zzhdt zzhdtVar, zzhxc zzhxcVar, Integer num) {
        this.f8432a = zzhdtVar;
        this.b = zzhxcVar;
        this.f8433c = num;
    }

    public static zzhdp d(zzhdt zzhdtVar, Integer num) {
        zzhxc b;
        zzhds zzhdsVar = zzhdtVar.f8440a;
        if (zzhdsVar == zzhds.f8438c) {
            if (num == null) {
                b = zzhjf.f8592a;
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else if (zzhdsVar == zzhds.b) {
            if (num != null) {
                b = zzhjf.b(num.intValue());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else {
            throw new GeneralSecurityException("Unknown Variant: ".concat(String.valueOf(zzhdsVar)));
        }
        return new zzhdp(zzhdtVar, b, num);
    }

    @Override // com.google.android.gms.internal.ads.zzhbe, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8432a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.f8433c;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final zzhxc c() {
        return this.b;
    }
}
