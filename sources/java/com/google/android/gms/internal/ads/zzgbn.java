package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgbn implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f7803c;
    public final long f;

    public zzgbn(Runnable runnable, long j) {
        this.f7803c = runnable;
        this.f = j;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Long.compare(this.f, ((zzgbn) obj).f);
    }
}
