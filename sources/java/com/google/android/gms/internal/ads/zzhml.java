package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhml extends zzhmo {

    /* renamed from: a, reason: collision with root package name */
    public final zzhmm f8674a;
    public final zzhxe b;

    public zzhml(zzhmm zzhmmVar, zzhxe zzhxeVar) {
        this.f8674a = zzhmmVar;
        this.b = zzhxeVar;
    }

    public static zzhml c(zzhmm zzhmmVar, zzhxe zzhxeVar) {
        if (zzhmmVar.f8675a == zzhxeVar.f8865a.f8863a.length) {
            return new zzhml(zzhmmVar, zzhxeVar);
        }
        throw new GeneralSecurityException("Key size mismatch");
    }

    @Override // com.google.android.gms.internal.ads.zzhmo, com.google.android.gms.internal.ads.zzgzx
    public final /* synthetic */ zzhan a() {
        return this.f8674a;
    }

    @Override // com.google.android.gms.internal.ads.zzgzx
    public final Integer b() {
        return null;
    }
}
