package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzcwx implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5549a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdab f5550c;

    public zzcwx(zzijf zzijfVar, zzcmj zzcmjVar, zzdab zzdabVar) {
        this.f5549a = zzijfVar;
        this.b = zzcmjVar;
        this.f5550c = zzdabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        String bigInteger;
        Clock clock = (Clock) this.f5549a.zzb();
        zzcdf zzb = ((zzcmj) this.b).zzb();
        String str = this.f5550c.a().g;
        zzcdd zzcddVar = zzb.g;
        synchronized (zzcddVar) {
            bigInteger = zzcddVar.f5059a.toString();
            zzcddVar.f5059a = zzcddVar.f5059a.add(BigInteger.ONE);
            zzcddVar.b = bigInteger;
        }
        return new zzccu(clock, zzb, bigInteger, str);
    }
}
