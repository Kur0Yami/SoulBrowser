package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionProvider;

/* loaded from: classes.dex */
public final class zzba extends SessionProvider {
    public final CastOptions d;
    public final zzbx e;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzba(android.content.Context r3, com.google.android.gms.cast.framework.CastOptions r4, com.google.android.gms.internal.cast.zzbx r5) {
        /*
            r2 = this;
            java.util.ArrayList r0 = r4.f
            java.lang.String r1 = r4.f3467c
            java.util.List r0 = j$.util.DesugarCollections.unmodifiableList(r0)
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L13
            java.lang.String r0 = com.google.android.gms.cast.CastMediaControlIntent.a(r1)
            goto L1d
        L13:
            java.util.ArrayList r0 = r4.f
            java.util.List r0 = j$.util.DesugarCollections.unmodifiableList(r0)
            java.lang.String r0 = com.google.android.gms.cast.CastMediaControlIntent.b(r1, r0)
        L1d:
            r2.<init>(r3, r0)
            r2.d = r4
            r2.e = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzba.<init>(android.content.Context, com.google.android.gms.cast.framework.CastOptions, com.google.android.gms.internal.cast.zzbx):void");
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public final CastSession a(String str) {
        Context context = this.f3478a;
        CastOptions castOptions = this.d;
        zzbx zzbxVar = this.e;
        return new CastSession(this.f3478a, this.b, str, castOptions, zzbxVar, new com.google.android.gms.cast.framework.media.internal.zzs(context, castOptions, zzbxVar));
    }

    @Override // com.google.android.gms.cast.framework.SessionProvider
    public final boolean b() {
        return this.d.i;
    }
}
