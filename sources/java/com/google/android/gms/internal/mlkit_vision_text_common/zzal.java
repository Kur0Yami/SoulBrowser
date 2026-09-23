package com.google.android.gms.internal.mlkit_vision_text_common;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class zzal extends zzan implements Serializable {
    public transient Map g;

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcc
    public final boolean b(zzes zzesVar, Long l) {
        zzba zzbaVar = (zzba) this.g;
        Collection collection = (Collection) zzbaVar.get(zzesVar);
        if (collection == null) {
            Collection e = e();
            if (e.add(l)) {
                zzbaVar.put(zzesVar, e);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        }
        if (collection.add(l)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzan
    public final Map c() {
        return new zzad(this, this.g);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzan
    public final Set d() {
        return new zzby(this.g);
    }

    public abstract Collection e();

    public Collection f(Collection collection, Object obj) {
        throw null;
    }
}
