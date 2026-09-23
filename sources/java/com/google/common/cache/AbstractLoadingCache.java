package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import java.util.concurrent.ExecutionException;

@GwtIncompatible
/* loaded from: classes3.dex */
public abstract class AbstractLoadingCache<K, V> extends AbstractCache<K, V> implements LoadingCache<K, V> {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        try {
            return get(obj);
        } catch (ExecutionException e) {
            throw new RuntimeException(e.getCause());
        }
    }
}
