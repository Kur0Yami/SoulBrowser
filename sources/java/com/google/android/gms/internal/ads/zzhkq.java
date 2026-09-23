package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzhkq implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhkq f8624a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhku zzhkuVar = (zzhku) zzhanVar;
        zzhhz zzhhzVar = zzhkr.f8625a;
        int i = zzhkuVar.f8631a;
        if (i == 32) {
            zzhkm zzhkmVar = new zzhkm();
            zzhkmVar.f8618a = zzhkuVar;
            zzhkmVar.b = zzhxe.b(i);
            zzhkmVar.f8619c = num;
            return zzhkmVar.a();
        }
        throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
    }
}
