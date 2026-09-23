package com.google.android.gms.internal.mlkit_vision_text_common;

/* loaded from: classes3.dex */
final class zzbc {
    public static int a(Object obj) {
        int hashCode;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return (int) (Integer.rotateLeft((int) (hashCode * (-862048943)), 15) * 461845907);
    }
}
