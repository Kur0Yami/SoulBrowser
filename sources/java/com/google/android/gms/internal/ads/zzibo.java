package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzibo {
    public static final zzibd a(long j, Object obj) {
        int i;
        zzibd zzibdVar = (zzibd) zzidm.k(j, obj);
        if (!zzibdVar.zza()) {
            int size = zzibdVar.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size + size;
            }
            zzibd e = zzibdVar.e(i);
            zzidm.l(j, obj, e);
            return e;
        }
        return zzibdVar;
    }
}
