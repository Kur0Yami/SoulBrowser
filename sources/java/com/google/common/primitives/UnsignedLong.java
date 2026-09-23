package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public final class UnsignedLong extends Number implements Comparable<UnsignedLong> {

    /* renamed from: c, reason: collision with root package name */
    public final long f12527c;

    static {
        new UnsignedLong(0L);
        new UnsignedLong(1L);
        new UnsignedLong(-1L);
    }

    public UnsignedLong(long j) {
        this.f12527c = j;
    }

    @Override // java.lang.Comparable
    public final int compareTo(UnsignedLong unsignedLong) {
        UnsignedLong unsignedLong2 = unsignedLong;
        unsignedLong2.getClass();
        return UnsignedLongs.a(this.f12527c, unsignedLong2.f12527c);
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        long j = this.f12527c;
        if (j >= 0) {
            return j;
        }
        return ((j >>> 1) | (j & 1)) * 2.0d;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UnsignedLong) || this.f12527c != ((UnsignedLong) obj).f12527c) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        long j = this.f12527c;
        if (j >= 0) {
            return (float) j;
        }
        return ((float) ((j >>> 1) | (j & 1))) * 2.0f;
    }

    public final int hashCode() {
        long j = this.f12527c;
        return (int) (j ^ (j >>> 32));
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) this.f12527c;
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.f12527c;
    }

    public final String toString() {
        return UnsignedLongs.b(this.f12527c);
    }
}
