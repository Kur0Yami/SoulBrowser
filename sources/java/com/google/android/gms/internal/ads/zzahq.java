package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzahq implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final long f4043a;

    public zzahq(long j) {
        this.f4043a = j;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahq.class == obj.getClass() && this.f4043a == ((zzahq) obj).f4043a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f4043a;
        return ((int) (j ^ (j >>> 32))) + 527;
    }

    public final String toString() {
        long j = this.f4043a;
        StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 38);
        sb.append("ThumbnailMetadata: presentationTimeUs=");
        sb.append(j);
        return sb.toString();
    }
}
