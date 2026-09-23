package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhcf implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhcf f8380a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhck zzhckVar = (zzhck) zzhanVar;
        zzhjs zzhjsVar = zzhch.f8382a;
        int i = zzhckVar.f8388a;
        if (i != 24) {
            zzhcc zzhccVar = new zzhcc();
            zzhccVar.f8375a = zzhckVar;
            zzhccVar.f8376c = num;
            zzhccVar.b = zzhxe.b(i);
            return zzhccVar.a();
        }
        throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
    }
}
