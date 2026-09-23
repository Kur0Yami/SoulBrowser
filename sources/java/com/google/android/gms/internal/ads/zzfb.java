package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfb extends IllegalStateException {

    /* renamed from: c, reason: collision with root package name */
    public final int f7181c;
    public final int f;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzfb(int r4, int r5) {
        /*
            r3 = this;
            java.lang.String r0 = " ms"
            if (r4 == 0) goto L65
            r1 = 1
            if (r4 == r1) goto L4f
            r1 = 2
            if (r4 == r1) goto L39
            r1 = 3
            if (r4 == r1) goto L23
            java.lang.String r1 = java.lang.String.valueOf(r5)
            int r1 = r1.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = r1 + 31
            r2.<init>(r1)
            java.lang.String r1 = "Player stuck suppressed for "
            java.lang.String r0 = androidx.work.impl.workers.a.t(r2, r1, r5, r0)
            goto L7a
        L23:
            java.lang.String r1 = java.lang.String.valueOf(r5)
            int r1 = r1.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = r1 + 43
            r2.<init>(r1)
            java.lang.String r1 = "Player stuck playing without ending for "
            java.lang.String r0 = androidx.work.impl.workers.a.t(r2, r1, r5, r0)
            goto L7a
        L39:
            java.lang.String r1 = java.lang.String.valueOf(r5)
            int r1 = r1.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = r1 + 45
            r2.<init>(r1)
            java.lang.String r1 = "Player stuck playing with no progress for "
            java.lang.String r0 = androidx.work.impl.workers.a.t(r2, r1, r5, r0)
            goto L7a
        L4f:
            java.lang.String r1 = java.lang.String.valueOf(r5)
            int r1 = r1.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = r1 + 47
            r2.<init>(r1)
            java.lang.String r1 = "Player stuck buffering with no progress for "
            java.lang.String r0 = androidx.work.impl.workers.a.t(r2, r1, r5, r0)
            goto L7a
        L65:
            java.lang.String r1 = java.lang.String.valueOf(r5)
            int r1 = r1.length()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = r1 + 46
            r2.<init>(r1)
            java.lang.String r1 = "Player stuck buffering and not loading for "
            java.lang.String r0 = androidx.work.impl.workers.a.t(r2, r1, r5, r0)
        L7a:
            r3.<init>(r0)
            r3.f7181c = r4
            r3.f = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfb.<init>(int, int):void");
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && zzfb.class == obj.getClass()) {
                zzfb zzfbVar = (zzfb) obj;
                if (this.f7181c == zzfbVar.f7181c && this.f == zzfbVar.f) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.f7181c + 527) * 31) + this.f;
    }
}
