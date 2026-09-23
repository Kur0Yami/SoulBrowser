package com.google.mlkit.common.model;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_common.zzq;

/* loaded from: classes3.dex */
public abstract class RemoteModelSource {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null) {
            if (obj.getClass().equals(getClass())) {
                return Objects.equal(null, null);
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(null);
    }

    public final String toString() {
        zzq zzqVar = new zzq("RemoteModelSource");
        zzqVar.a("firebaseModelName");
        return zzqVar.toString();
    }
}
