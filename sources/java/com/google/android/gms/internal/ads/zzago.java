package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzago implements zzagj {

    /* renamed from: a, reason: collision with root package name */
    public final int f4012a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4013c;
    public final int d;
    public final int e;
    public final int f;

    public zzago(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f4012a = i;
        this.b = i2;
        this.f4013c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public final int a() {
        int i = this.f4012a;
        if (i != 1935960438) {
            if (i != 1935963489) {
                if (i != 1937012852) {
                    zzee.c("AviStreamHeaderChunk", "Found unsupported streamType fourCC: ".concat(String.valueOf(Integer.toHexString(i))));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzagj
    public final int zza() {
        return 1752331379;
    }
}
