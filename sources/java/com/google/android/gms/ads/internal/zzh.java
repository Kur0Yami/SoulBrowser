package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfvd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzh implements zzfvd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzk f3172a;

    public zzh(zzk zzkVar) {
        this.f3172a = zzkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvd
    public final void c(int i, long j) {
        this.f3172a.l.b(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfvd
    public final void d(int i, String str, long j) {
        this.f3172a.l.e(i, System.currentTimeMillis() - j, null, null, str);
    }
}
