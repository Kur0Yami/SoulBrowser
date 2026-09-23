package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzagk implements zzafr {

    /* renamed from: a, reason: collision with root package name */
    public final long f4006a;
    public final /* synthetic */ zzagm b;

    public zzagk(zzagm zzagmVar, long j) {
        this.b = zzagmVar;
        this.f4006a = j;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final zzafp b(long j) {
        zzagm zzagmVar = this.b;
        zzafp a2 = zzagmVar.i[0].a(j);
        int i = 1;
        while (true) {
            zzagp[] zzagpVarArr = zzagmVar.i;
            if (i < zzagpVarArr.length) {
                zzafp a3 = zzagpVarArr[i].a(j);
                if (a3.f3984a.b < a2.f3984a.b) {
                    a2 = a3;
                }
                i++;
            } else {
                return a2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final long zza() {
        return this.f4006a;
    }

    @Override // com.google.android.gms.internal.ads.zzafr
    public final boolean zzb() {
        return true;
    }
}
