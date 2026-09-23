package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzafs {

    /* renamed from: c, reason: collision with root package name */
    public static final zzafs f3986c = new zzafs(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long f3987a;
    public final long b;

    public zzafs(long j, long j2) {
        this.f3987a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafs.class == obj.getClass()) {
            zzafs zzafsVar = (zzafs) obj;
            if (this.f3987a == zzafsVar.f3987a && this.b == zzafsVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f3987a) * 31) + ((int) this.b);
    }

    public final String toString() {
        long j = this.f3987a;
        int length = String.valueOf(j).length();
        long j2 = this.b;
        StringBuilder sb = new StringBuilder(length + 19 + String.valueOf(j2).length() + 1);
        a.j(sb, "[timeUs=", j, ", position=");
        return android.support.v4.media.a.o(sb, j2, "]");
    }
}
