package com.google.mlkit.common.model;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_common.zzq;

/* loaded from: classes3.dex */
public class LocalModel {

    /* loaded from: classes3.dex */
    public static class Builder {
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LocalModel)) {
            return false;
        }
        if (!Objects.equal(null, null) || !Objects.equal(null, null) || !Objects.equal(null, null)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(null, null, null, Boolean.FALSE);
    }

    public final String toString() {
        zzq zzqVar = new zzq(getClass().getSimpleName());
        zzqVar.a("absoluteFilePath");
        zzqVar.a("assetFilePath");
        zzqVar.a("uri");
        zzqVar.b();
        return zzqVar.toString();
    }
}
