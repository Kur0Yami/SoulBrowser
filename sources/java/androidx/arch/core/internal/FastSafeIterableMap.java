package androidx.arch.core.internal;

import androidx.annotation.RestrictTo;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LifecycleObserver;
import java.util.HashMap;
import java.util.Map;

@RestrictTo
/* loaded from: classes.dex */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {
    public final HashMap i = new HashMap();

    @Override // androidx.arch.core.internal.SafeIterableMap
    public final SafeIterableMap.Entry a(Object obj) {
        return (SafeIterableMap.Entry) this.i.get(obj);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public final Object c(Object obj, Object obj2) {
        SafeIterableMap.Entry a2 = a(obj);
        if (a2 != null) {
            return a2.f;
        }
        SafeIterableMap.Entry entry = new SafeIterableMap.Entry(obj, obj2);
        this.h++;
        SafeIterableMap.Entry entry2 = this.f;
        if (entry2 == null) {
            this.f362c = entry;
            this.f = entry;
        } else {
            entry2.g = entry;
            entry.h = entry2;
            this.f = entry;
        }
        this.i.put(obj, entry);
        return null;
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public final Object g(Object obj) {
        Object g = super.g(obj);
        this.i.remove(obj);
        return g;
    }

    public final Map.Entry i(LifecycleObserver lifecycleObserver) {
        HashMap hashMap = this.i;
        if (hashMap.containsKey(lifecycleObserver)) {
            return ((SafeIterableMap.Entry) hashMap.get(lifecycleObserver)).h;
        }
        return null;
    }
}
