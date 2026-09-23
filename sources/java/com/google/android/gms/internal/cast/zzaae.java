package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzaae {
    public static final zzaae e = new zzaae(new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f9605a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f9606c = -1;
    public boolean d;

    public zzaae(int[] iArr, Object[] objArr, boolean z) {
        this.f9605a = iArr;
        this.b = objArr;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzaae)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return 506991;
    }
}
