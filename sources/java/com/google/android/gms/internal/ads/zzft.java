package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzft implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final int f7638a;

    public zzft(int i) {
        this.f7638a = i;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof zzft) && this.f7638a == ((zzft) obj).f7638a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.f7638a;
    }

    public final String toString() {
        int i = this.f7638a;
        return androidx.work.impl.workers.a.r(i, "Mp4AlternateGroup: ", new StringBuilder(String.valueOf(i).length() + 19));
    }
}
