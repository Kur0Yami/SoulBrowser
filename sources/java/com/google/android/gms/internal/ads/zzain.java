package com.google.android.gms.internal.ads;

@Deprecated
/* loaded from: classes.dex */
public class zzain implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final long f4067a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4068c;
    public final long d;
    public final long e;

    public zzain(long j, long j2, long j3, long j4, long j5) {
        this.f4067a = j;
        this.b = j2;
        this.f4068c = j3;
        this.d = j4;
        this.e = j5;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final /* synthetic */ void a(zzam zzamVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzain zzainVar = (zzain) obj;
            if (this.f4067a == zzainVar.f4067a && this.b == zzainVar.b && this.f4068c == zzainVar.f4068c && this.d == zzainVar.d && this.e == zzainVar.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f4067a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) + 527) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f4068c;
        int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.d;
        int i3 = (i2 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.e;
        return i3 + ((int) ((j5 >>> 32) ^ j5));
    }

    public final String toString() {
        long j = this.f4067a;
        int length = String.valueOf(j).length();
        long j2 = this.b;
        int length2 = String.valueOf(j2).length();
        long j3 = this.f4068c;
        int length3 = String.valueOf(j3).length();
        long j4 = this.d;
        int length4 = String.valueOf(j4).length();
        long j5 = this.e;
        StringBuilder sb = new StringBuilder(length + 54 + length2 + 31 + length3 + 21 + length4 + 12 + String.valueOf(j5).length());
        a.j(sb, "Motion photo metadata: photoStartPosition=", j, ", photoSize=");
        sb.append(j2);
        a.j(sb, ", photoPresentationTimestampUs=", j3, ", videoStartPosition=");
        sb.append(j4);
        sb.append(", videoSize=");
        sb.append(j5);
        return sb.toString();
    }
}
