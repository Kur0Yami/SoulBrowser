package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhdh extends zzhbe {

    /* renamed from: a, reason: collision with root package name */
    public final zzhdj f8421a;
    public final zzhxc b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f8422c;

    public zzhdh(zzhdj zzhdjVar, zzhxc zzhxcVar, Integer num) {
        this.f8421a = zzhdjVar;
        this.b = zzhxcVar;
        this.f8422c = num;
    }

    public static zzhdh d(zzhdj zzhdjVar, Integer num) {
        zzhxc a2;
        zzhdi zzhdiVar = zzhdjVar.b;
        if (zzhdiVar == zzhdi.b) {
            if (num != null) {
                a2 = zzhxc.a(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
            } else {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
        } else if (zzhdiVar == zzhdi.f8423c) {
            if (num == null) {
                a2 = zzhxc.a(new byte[0]);
            } else {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
        } else {
            throw new GeneralSecurityException("Unknown Variant: ".concat(zzhdiVar.f8424a));
        }
        return new zzhdh(zzhdjVar, a2, num);
    }

    @Override // com.google.android.gms.internal.ads.zzhbe, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8421a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return this.f8422c;
    }

    @Override // com.google.android.gms.internal.ads.zzhbe
    public final zzhxc c() {
        return this.b;
    }
}
