package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfy implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final long f7714a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f7715c;

    public zzfy(long j, long j2, long j3) {
        this.f7714a = j;
        this.b = j2;
        this.f7715c = j3;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfy)) {
            return false;
        }
        zzfy zzfyVar = (zzfy) obj;
        if (this.f7714a == zzfyVar.f7714a && this.b == zzfyVar.b && this.f7715c == zzfyVar.f7715c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f7714a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) + 527) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f7715c;
        return i + ((int) ((j3 >>> 32) ^ j3));
    }

    public final String toString() {
        long j = this.f7714a;
        int length = String.valueOf(j).length();
        long j2 = this.b;
        int length2 = String.valueOf(j2).length();
        long j3 = this.f7715c;
        StringBuilder sb = new StringBuilder(length + 48 + length2 + 12 + String.valueOf(j3).length());
        a.j(sb, "Mp4Timestamp: creation time=", j, ", modification time=");
        sb.append(j2);
        sb.append(", timescale=");
        sb.append(j3);
        return sb.toString();
    }
}
