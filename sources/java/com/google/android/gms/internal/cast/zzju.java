package com.google.android.gms.internal.cast;

import android.os.Build;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class zzju extends zzjn {
    static {
        String str = Build.FINGERPRINT;
        if (str != null) {
            "robolectric".equals(str);
        }
        String str2 = Build.HARDWARE;
        if (!"goldfish".equals(str2)) {
            "ranchu".equals(str2);
        }
        String str3 = Build.TYPE;
        if (!"eng".equals(str3)) {
            "userdebug".equals(str3);
        }
        new AtomicReference();
        new AtomicLong();
        new ConcurrentLinkedQueue();
    }
}
