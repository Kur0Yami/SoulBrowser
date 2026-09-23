package com.google.common.base;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public interface Predicate<T> {
    boolean apply(Object obj);

    boolean equals(Object obj);
}
