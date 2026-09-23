package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import java.util.Map;
import java.util.Set;

@DoNotMock
@GwtCompatible
/* loaded from: classes3.dex */
public interface Table<R, C, V> {

    /* loaded from: classes3.dex */
    public interface Cell<R, C, V> {
        Object a();

        Object b();

        Object getValue();
    }

    Map B();

    boolean equals(Object obj);

    int hashCode();

    int size();

    Set u();
}
