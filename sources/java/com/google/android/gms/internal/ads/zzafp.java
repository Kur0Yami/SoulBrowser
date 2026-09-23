package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzafp {

    /* renamed from: a, reason: collision with root package name */
    public final zzafs f3984a;
    public final zzafs b;

    public zzafp(zzafs zzafsVar, zzafs zzafsVar2) {
        this.f3984a = zzafsVar;
        this.b = zzafsVar2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzafp.class == obj.getClass()) {
            zzafp zzafpVar = (zzafp) obj;
            if (this.f3984a.equals(zzafpVar.f3984a) && this.b.equals(zzafpVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.f3984a.hashCode() * 31);
    }

    public final String toString() {
        String concat;
        zzafs zzafsVar = this.f3984a;
        String zzafsVar2 = zzafsVar.toString();
        zzafs zzafsVar3 = this.b;
        if (zzafsVar.equals(zzafsVar3)) {
            concat = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            concat = ", ".concat(zzafsVar3.toString());
        }
        return android.support.v4.media.a.r(new StringBuilder(androidx.work.impl.workers.a.d(zzafsVar2.length() + 1, 1, concat)), "[", zzafsVar2, concat, "]");
    }
}
