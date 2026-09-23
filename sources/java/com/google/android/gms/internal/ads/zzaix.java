package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzaix implements Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final long f4077c;
    public final long f;
    public final long g;

    public /* synthetic */ zzaix(long j, long j2, long j3) {
        this.f4077c = j;
        this.f = j2;
        this.g = j3;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Long.compare(this.f4077c, ((zzaix) obj).f4077c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaix)) {
            return false;
        }
        zzaix zzaixVar = (zzaix) obj;
        if (this.f4077c == zzaixVar.f4077c && this.f == zzaixVar.f && this.g == zzaixVar.g) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f4077c), Long.valueOf(this.f), Long.valueOf(this.g));
    }
}
