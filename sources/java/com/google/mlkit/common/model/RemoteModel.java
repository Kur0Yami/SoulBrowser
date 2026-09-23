package com.google.mlkit.common.model;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_common.zzq;
import com.google.mlkit.common.sdkinternal.model.BaseModel;
import java.util.EnumMap;

/* loaded from: classes3.dex */
public abstract class RemoteModel {
    static {
        new EnumMap(BaseModel.class);
        new EnumMap(BaseModel.class);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof RemoteModel) && Objects.equal(null, null) && Objects.equal(null, null) && Objects.equal(null, null)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(null, null, null);
    }

    public final String toString() {
        zzq zzqVar = new zzq("RemoteModel");
        zzqVar.a("modelName");
        zzqVar.a("baseModel");
        zzqVar.a("modelType");
        return zzqVar.toString();
    }
}
