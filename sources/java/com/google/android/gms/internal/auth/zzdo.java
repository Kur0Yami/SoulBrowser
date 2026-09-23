package com.google.android.gms.internal.auth;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class zzdo {
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.auth.zzdj, com.google.android.gms.internal.auth.zzdm, java.lang.Object] */
    public static zzdj a(zzdj zzdjVar) {
        if (!(zzdjVar instanceof zzdm)) {
            if (zzdjVar instanceof zzdk) {
                return zzdjVar;
            }
            if (zzdjVar instanceof Serializable) {
                return new zzdk(zzdjVar);
            }
            ?? obj = new Object();
            obj.f9526c = zzdjVar;
            return obj;
        }
        return zzdjVar;
    }
}
