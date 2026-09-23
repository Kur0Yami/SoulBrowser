package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzea {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6298a;
    public zzr b = new zzr();

    /* renamed from: c, reason: collision with root package name */
    public boolean f6299c;
    public boolean d;

    public zzea(Object obj) {
        this.f6298a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzea.class == obj.getClass()) {
            return this.f6298a.equals(((zzea) obj).f6298a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f6298a.hashCode();
    }
}
