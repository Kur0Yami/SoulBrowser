package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgxf;
import java.util.Set;
import java.util.logging.Level;

/* loaded from: classes.dex */
abstract class zzgxs extends zzgxf.zzf {
    public static final zzgxp n;
    public static final zzgyu o = new zzgyu(zzgxs.class);
    public volatile Set l;
    public volatile int m;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.ads.zzgxp] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    static {
        Throwable th;
        ?? r0;
        try {
            th = null;
            r0 = new Object();
        } catch (Throwable th2) {
            th = th2;
            r0 = new Object();
        }
        Throwable th3 = th;
        n = r0;
        if (th3 != null) {
            o.a().logp(Level.SEVERE, "com.google.common.util.concurrent.AggregateFutureState", "<clinit>", "SafeAtomicHelper is broken!", th3);
        }
    }
}
