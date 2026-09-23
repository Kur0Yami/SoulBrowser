package com.google.android.gms.cast;

import java.util.List;

/* loaded from: classes.dex */
public final class CastMediaControlIntent {
    public static String a(String str) {
        if (str != null) {
            return new zzt(null, str).a();
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }

    public static String b(String str, List list) {
        if (str != null) {
            if (list != null) {
                return new zzt(list, str).a();
            }
            throw new IllegalArgumentException("namespaces cannot be null");
        }
        throw new IllegalArgumentException("applicationId cannot be null");
    }
}
