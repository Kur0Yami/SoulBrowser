package com.google.android.gms.internal.ads;

import sun.misc.Unsafe;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ boolean a(Unsafe unsafe, zzgxf zzgxfVar, long j, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(zzgxfVar, j, obj, obj2)) {
            if (unsafe.getObject(zzgxfVar, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
