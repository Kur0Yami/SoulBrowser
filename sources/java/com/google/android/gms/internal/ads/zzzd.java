package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzzd implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9409c;
    public final boolean f;

    public zzzd(zzv zzvVar, int i) {
        this.f9409c = 1 == (zzvVar.e & 1);
        this.f = a.n(i, false);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        zzzd zzzdVar = (zzzd) obj;
        return zzgsq.f8237a.d(this.f, zzzdVar.f).d(this.f9409c, zzzdVar.f9409c).e();
    }
}
