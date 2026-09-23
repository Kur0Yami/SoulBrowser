package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
final /* synthetic */ class zzhrq implements zzhhz {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzhrq f8709a = new Object();

    @Override // com.google.android.gms.internal.ads.zzhhz
    public final zzgzx a(zzhan zzhanVar, Integer num) {
        zzhro zzhroVar = (zzhro) zzhanVar;
        zzhjs zzhjsVar = zzhru.f8713a;
        byte[] a2 = zzhkc.a(32);
        if (a2.length == 32) {
            return zzhrp.d(zzhrv.d(zzhroVar.f8707a, zzhxc.a(Arrays.copyOf(zzhhm.a(zzhhm.b(a2)), 32)), num), zzhxe.a(Arrays.copyOf(a2, a2.length)));
        }
        throw new IllegalArgumentException("Given secret seed length is not 32");
    }
}
