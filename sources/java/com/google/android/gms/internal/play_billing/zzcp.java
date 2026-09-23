package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.ads.c;
import sun.misc.Unsafe;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzcp {
    public static /* synthetic */ boolean a(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!c.a(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
