package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
final class zzhw {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9722a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9723c;

    public zzhw(Object obj, Object obj2, Object obj3) {
        this.f9722a = obj;
        this.b = obj2;
        this.f9723c = obj3;
    }

    public final IllegalArgumentException a() {
        Object obj = this.f9722a;
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(this.b);
        String valueOf3 = String.valueOf(obj);
        String valueOf4 = String.valueOf(this.f9723c);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        StringBuilder sb = new StringBuilder(length + 33 + length2 + 5 + valueOf3.length() + 1 + valueOf4.length());
        android.support.v4.media.a.z(sb, "Multiple entries with same key: ", valueOf, "=", valueOf2);
        return new IllegalArgumentException(android.support.v4.media.a.r(sb, " and ", valueOf3, "=", valueOf4));
    }
}
