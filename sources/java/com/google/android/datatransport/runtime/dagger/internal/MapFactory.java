package com.google.android.datatransport.runtime.dagger.internal;

import com.google.android.datatransport.runtime.dagger.internal.AbstractMapFactory;
import java.util.Collections;

/* loaded from: classes.dex */
public final class MapFactory<K, V> extends AbstractMapFactory<K, V, V> {

    /* loaded from: classes.dex */
    public static final class Builder<K, V> extends AbstractMapFactory.Builder<K, V, V> {
    }

    static {
        if (Collections.EMPTY_MAP != null) {
        } else {
            throw new NullPointerException("instance cannot be null");
        }
    }

    @Override // javax.inject.Provider
    public final Object get() {
        throw null;
    }
}
