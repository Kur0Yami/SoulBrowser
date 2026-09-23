package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
class zzaa extends zzal implements zzbp {
    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzbp
    public final List a(Object obj) {
        Collection collection = (Collection) this.g.get(obj);
        if (collection == null) {
            collection = e();
        }
        return (List) f(collection, obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzal
    public /* bridge */ /* synthetic */ Collection e() {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzal
    public final Collection f(Collection collection, Object obj) {
        List list = (List) collection;
        if (list instanceof RandomAccess) {
            return new zzak(this, obj, list, null);
        }
        return new zzak(this, obj, list, null);
    }
}
