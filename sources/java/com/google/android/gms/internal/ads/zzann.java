package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzann implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final int f4244c;
    public final zzani f;

    public zzann(int i, zzani zzaniVar) {
        this.f4244c = i;
        this.f = zzaniVar;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Integer.compare(this.f4244c, ((zzann) obj).f4244c);
    }
}
