package com.google.android.gms.internal.drive;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public class zzjx {
    public static final /* synthetic */ int b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Map f10211a = Collections.EMPTY_MAP;

    /* loaded from: classes.dex */
    public static final class zza {
        public final boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return System.identityHashCode(null) * 65535;
        }
    }

    static {
        try {
            Class.forName("com.google.protobuf.Extension");
        } catch (ClassNotFoundException unused) {
        }
        new zzjx();
    }
}
