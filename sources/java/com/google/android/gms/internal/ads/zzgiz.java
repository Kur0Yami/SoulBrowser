package com.google.android.gms.internal.ads;

import j$.util.Optional;
import java.util.List;

/* loaded from: classes.dex */
final class zzgiz {

    /* renamed from: a, reason: collision with root package name */
    public final zzath f8009a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8010c;
    public final String d;

    public zzgiz(zzath zzathVar, long j, long j2, String str) {
        this.f8009a = zzathVar;
        this.b = j;
        this.f8010c = j2;
        this.d = str;
    }

    public static zzgiz a(zzath zzathVar, byte[] bArr) {
        zzathVar.a();
        zzathVar.f4399a.f4425c.b = zzatw.e(bArr);
        List list = (List) zzathVar.b(Optional.empty());
        long longValue = ((Long) list.get(0)).longValue();
        long longValue2 = ((Long) list.get(1)).longValue();
        long longValue3 = ((Long) list.get(2)).longValue();
        zzathVar.c(longValue, Optional.empty());
        byte[] a2 = zzatg.a();
        return new zzgiz(zzathVar, longValue2, longValue3, "3.815976881.".concat(zzgvy.f8268a.g(a2, a2.length)));
    }
}
