package com.google.android.gms.ads.internal.util.client;

import androidx.work.impl.workers.a;

/* loaded from: classes.dex */
final class zzn extends zzx {

    /* renamed from: a, reason: collision with root package name */
    public final int f3085a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final double f3086c;
    public final boolean d;

    public zzn(int i, int i2, double d, boolean z) {
        this.f3085a = i;
        this.b = i2;
        this.f3086c = d;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzx) {
            zzx zzxVar = (zzx) obj;
            if (this.f3085a == zzxVar.zza() && this.b == zzxVar.zzb() && Double.doubleToLongBits(this.f3086c) == Double.doubleToLongBits(zzxVar.zzc()) && this.d == zzxVar.zzd()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        double d = this.f3086c;
        long doubleToLongBits = Double.doubleToLongBits(d) ^ (Double.doubleToLongBits(d) >>> 32);
        if (true != this.d) {
            i = 1237;
        } else {
            i = 1231;
        }
        return ((((int) doubleToLongBits) ^ ((((this.f3085a ^ 1000003) * 1000003) ^ this.b) * 1000003)) * 1000003) ^ i;
    }

    public final String toString() {
        int i = this.f3085a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        int length2 = String.valueOf(i2).length();
        double d = this.f3086c;
        int length3 = String.valueOf(d).length();
        boolean z = this.d;
        StringBuilder sb = new StringBuilder(length + 44 + length2 + 20 + length3 + 25 + String.valueOf(z).length() + 1);
        a.A(sb, "PingStrategy{maxAttempts=", i, ", initialBackoffMs=", i2);
        sb.append(", backoffMultiplier=");
        sb.append(d);
        sb.append(", bufferAfterMaxAttempts=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final int zza() {
        return this.f3085a;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final int zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final double zzc() {
        return this.f3086c;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzx
    public final boolean zzd() {
        return this.d;
    }
}
