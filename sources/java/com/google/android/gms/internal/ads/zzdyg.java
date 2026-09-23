package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdyg extends zzdyk {

    /* renamed from: a, reason: collision with root package name */
    public final long f6259a;
    public final int b;

    public zzdyg(long j, int i) {
        this.f6259a = j;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final long a() {
        return this.f6259a;
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final int b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzdyk) {
                zzdyk zzdykVar = (zzdyk) obj;
                if (this.f6259a == zzdykVar.a() && this.b == zzdykVar.b()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        long j = this.f6259a;
        return ((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b;
    }

    public final String toString() {
        long j = this.f6259a;
        int length = String.valueOf(j).length();
        int i = this.b;
        StringBuilder sb = new StringBuilder(length + 34 + String.valueOf(i).length() + 1);
        a.j(sb, "OnDeviceStorageKey{id=", j, ", eventType=");
        return android.support.v4.media.a.g(i, "}", sb);
    }
}
