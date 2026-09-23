package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingMapEntry<K, V> extends ForwardingObject implements Map.Entry<K, V> {
    @Override // java.util.Map.Entry
    public boolean equals(Object obj) {
        return e0().equals(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return e0().getKey();
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return e0().getValue();
    }

    @Override // com.google.common.collect.ForwardingObject
    /* renamed from: h0, reason: merged with bridge method [inline-methods] */
    public abstract Map.Entry e0();

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return e0().hashCode();
    }

    public Object setValue(Object obj) {
        return e0().setValue(obj);
    }
}
