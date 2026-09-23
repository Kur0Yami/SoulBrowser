package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzijh implements zzijg, zzija {
    public static final zzijh b = new zzijh(null);

    /* renamed from: a, reason: collision with root package name */
    public final Object f9006a;

    public zzijh(Object obj) {
        this.f9006a = obj;
    }

    public static zzijh a(Object obj) {
        if (obj != null) {
            return new zzijh(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    public static zzijh b(Object obj) {
        if (obj == null) {
            return b;
        }
        return new zzijh(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        return this.f9006a;
    }
}
