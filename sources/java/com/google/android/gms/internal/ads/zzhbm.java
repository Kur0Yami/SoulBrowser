package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhbm implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhbm f8347a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhbt zzhbtVar = (zzhbt) zzhanVar;
        zzhjs zzhjsVar = zzhbp.f8350a;
        int i = zzhbtVar.f8358a;
        if (i != 16 && i != 32) {
            throw new GeneralSecurityException("AES key size must be 16 or 32 bytes");
        }
        zzhbk zzhbkVar = new zzhbk();
        zzhbkVar.f8343a = zzhbtVar;
        zzhbkVar.d = num;
        zzhbkVar.b = zzhxe.b(i);
        zzhbkVar.f8344c = zzhxe.b(zzhbtVar.b);
        return zzhbkVar.a();
    }
}
