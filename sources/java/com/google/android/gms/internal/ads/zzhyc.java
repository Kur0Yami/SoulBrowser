package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzhyc implements CharSequence {

    /* renamed from: c, reason: collision with root package name */
    public char[] f8881c;
    public String f;

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f8881c[i];
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f8881c.length;
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return new String(this.f8881c, i, i2 - i);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        if (this.f == null) {
            this.f = new String(this.f8881c);
        }
        return this.f;
    }
}
