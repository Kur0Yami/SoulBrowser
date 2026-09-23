package com.google.android.gms.cast.framework.media.widget;

/* loaded from: classes.dex */
public final class zza {

    /* renamed from: a, reason: collision with root package name */
    public final int f3544a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3545c;

    public zza(int i, int i2, boolean z) {
        this.f3544a = i;
        this.b = i2;
        this.f3545c = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof zza) && this.f3544a == ((zza) obj).f3544a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.valueOf(this.f3544a).hashCode();
    }
}
