package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
final /* synthetic */ class zzhbx implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhbx f8365a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhcb zzhcbVar = (zzhcb) zzhanVar;
        zzhjs zzhjsVar = zzhby.f8366a;
        int i = zzhcbVar.f8373a;
        if (i != 24) {
            zzhbu zzhbuVar = new zzhbu();
            zzhbuVar.f8360a = zzhcbVar;
            zzhbuVar.f8361c = num;
            zzhbuVar.b = zzhxe.b(i);
            return zzhbuVar.a();
        }
        throw new GeneralSecurityException("192 bit AES GCM Parameters are not valid");
    }
}
