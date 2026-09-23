package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfuk extends zzfuh {

    /* renamed from: a, reason: collision with root package name */
    public final String f7664a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7665c;
    public final long d;
    public final long e;

    public zzfuk(String str, boolean z, boolean z2, long j, long j2) {
        this.f7664a = str;
        this.b = z;
        this.f7665c = z2;
        this.d = j;
        this.e = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzfuh
    public final String a() {
        return this.f7664a;
    }

    @Override // com.google.android.gms.internal.ads.zzfuh
    public final boolean b() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzfuh
    public final boolean c() {
        return this.f7665c;
    }

    @Override // com.google.android.gms.internal.ads.zzfuh
    public final long d() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.ads.zzfuh
    public final long e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzfuh) {
                zzfuh zzfuhVar = (zzfuh) obj;
                if (this.f7664a.equals(zzfuhVar.a()) && this.b == zzfuhVar.b() && this.f7665c == zzfuhVar.c() && this.d == zzfuhVar.d() && this.e == zzfuhVar.e()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f7664a.hashCode() ^ 1000003;
        int i2 = 1231;
        if (true != this.b) {
            i = 1237;
        } else {
            i = 1231;
        }
        int i3 = ((hashCode * 1000003) ^ i) * 1000003;
        if (true != this.f7665c) {
            i2 = 1237;
        }
        return ((((((((i3 ^ i2) * 1000003) ^ 1237) * 1000003) ^ ((int) this.d)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.e);
    }

    public final String toString() {
        boolean z = this.b;
        int length = String.valueOf(z).length();
        boolean z2 = this.f7665c;
        int length2 = String.valueOf(z2).length();
        long j = this.d;
        int length3 = String.valueOf(j).length();
        long j2 = this.e;
        int length4 = String.valueOf(j2).length();
        String str = this.f7664a;
        StringBuilder sb = new StringBuilder(str.length() + 56 + length + 32 + length2 + 57 + length3 + 61 + length4 + 1);
        sb.append("AdShield2Options{clientVersion=");
        sb.append(str);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(z);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(z2);
        sb.append(", enableQuerySignalsTimeout=false, querySignalsTimeoutMs=");
        sb.append(j);
        sb.append(", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds=");
        sb.append(j2);
        sb.append("}");
        return sb.toString();
    }
}
