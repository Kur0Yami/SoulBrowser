package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzajo implements zzafv {

    /* renamed from: a, reason: collision with root package name */
    public final int f4097a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4098c;

    public zzajo(long j, int i, int i2) {
        this.f4097a = i;
        this.b = j;
        this.f4098c = i2;
    }

    public final String toString() {
        String x = zzfj.x(this.f4097a);
        int length = x.length();
        long j = this.b;
        int length2 = String.valueOf(j).length();
        int i = this.f4098c;
        StringBuilder sb = new StringBuilder(length + 29 + length2 + 16 + String.valueOf(i).length() + 1);
        android.support.v4.media.a.y(sb, "AtomSizeTooSmall{type=", x, ", size=");
        sb.append(j);
        sb.append(", minHeaderSize=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }
}
