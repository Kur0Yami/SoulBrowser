package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzayf implements zzfvd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfuf f4471a;

    public zzayf(zzfuf zzfufVar) {
        this.f4471a = zzfufVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvd
    public final void c(int i, long j) {
        this.f4471a.b(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfvd
    public final void d(int i, String str, long j) {
        this.f4471a.e(i, System.currentTimeMillis() - j, null, null, str);
    }
}
