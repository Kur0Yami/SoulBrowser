package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgte {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8244a;
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f8245c;

    public zzgte(Object obj, Object obj2, Object obj3) {
        this.f8244a = obj;
        this.b = obj2;
        this.f8245c = obj3;
    }

    public final IllegalArgumentException a() {
        Object obj = this.f8244a;
        String valueOf = String.valueOf(obj);
        String valueOf2 = String.valueOf(this.b);
        String valueOf3 = String.valueOf(obj);
        String valueOf4 = String.valueOf(this.f8245c);
        int length = valueOf.length();
        int length2 = valueOf2.length();
        StringBuilder sb = new StringBuilder(length + 33 + length2 + 5 + valueOf3.length() + 1 + valueOf4.length());
        android.support.v4.media.a.z(sb, "Multiple entries with same key: ", valueOf, "=", valueOf2);
        return new IllegalArgumentException(android.support.v4.media.a.r(sb, " and ", valueOf3, "=", valueOf4));
    }
}
