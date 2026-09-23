package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhde implements zzhjr {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhde f8417a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhjr
    public final Object a(zzgzx zzgzxVar) {
        zzhdp zzhdpVar = (zzhdp) zzgzxVar;
        zzhij zzhijVar = zzhdg.f8419a;
        zzhdt zzhdtVar = zzhdpVar.f8432a;
        String str = zzhdtVar.b;
        zzhbf zzhbfVar = zzhdtVar.d;
        zzgzq zzb = zzhal.a(str).zzb();
        byte[] bArr = zzhdd.f8415c;
        try {
            byte[] h = ((zzhka) zzhje.b.h(zzhbfVar)).b.h();
            zziab zziabVar = zziab.b;
            int i = zzhyy.f8889a;
            return new zzhgh(new zzhdd(zzhpd.G(h, zziab.f8905c), zzb), zzhdpVar.b.b());
        } catch (zzibg e) {
            throw new GeneralSecurityException(e);
        }
    }
}
