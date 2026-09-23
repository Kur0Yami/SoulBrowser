package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zziaa {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8904a;
    public final int b;

    public zziaa(int i, zzicc zziccVar) {
        this.f8904a = zziccVar;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zziaa)) {
            return false;
        }
        zziaa zziaaVar = (zziaa) obj;
        if (this.f8904a != zziaaVar.f8904a || this.b != zziaaVar.b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f8904a) * 65535) + this.b;
    }
}
