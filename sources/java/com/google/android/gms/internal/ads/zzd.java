package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.os.Build;

/* loaded from: classes.dex */
public final class zzd {
    public static final zzd b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributes f5644a;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzd, java.lang.Object] */
    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public final AudioAttributes a() {
        if (this.f5644a == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(0).setFlags(0).setUsage(1);
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                usage.setAllowedCapturePolicy(1);
            }
            if (i >= 32) {
                usage.setSpatializationBehavior(0);
                usage.setIsContentSpatialized(false);
            }
            this.f5644a = usage.build();
        }
        return this.f5644a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzd.class == obj.getClass()) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return -2092275855;
    }
}
