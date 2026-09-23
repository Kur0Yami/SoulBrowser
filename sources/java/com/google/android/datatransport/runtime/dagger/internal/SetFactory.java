package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class SetFactory<T> implements Factory<Set<T>> {

    /* loaded from: classes.dex */
    public static final class Builder<T> {
    }

    static {
        if (Collections.EMPTY_SET != null) {
        } else {
            throw new NullPointerException("instance cannot be null");
        }
    }

    @Override // javax.inject.Provider
    public final Object get() {
        throw null;
    }
}
