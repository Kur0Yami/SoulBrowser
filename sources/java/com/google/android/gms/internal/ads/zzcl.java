package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzcl {
    public static final zzcl e = new zzcl(-1, -1, -1);

    /* renamed from: a, reason: collision with root package name */
    public final int f5231a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5232c;
    public final int d;

    public zzcl(int i, int i2, int i3) {
        int i4;
        this.f5231a = i;
        this.b = i2;
        this.f5232c = i3;
        if (zzfj.a(i3)) {
            i4 = zzfj.d(i3) * i2;
        } else {
            i4 = -1;
        }
        this.d = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzcl)) {
            return false;
        }
        zzcl zzclVar = (zzcl) obj;
        if (this.f5231a == zzclVar.f5231a && this.b == zzclVar.b && this.f5232c == zzclVar.f5232c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f5231a), Integer.valueOf(this.b), Integer.valueOf(this.f5232c));
    }

    public final String toString() {
        int i = this.f5231a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        int length2 = String.valueOf(i2).length();
        int i3 = this.f5232c;
        StringBuilder sb = new StringBuilder(length + 38 + length2 + 11 + String.valueOf(i3).length() + 1);
        androidx.work.impl.workers.a.A(sb, "AudioFormat[sampleRate=", i, ", channelCount=", i2);
        return androidx.work.impl.workers.a.t(sb, ", encoding=", i3, "]");
    }
}
