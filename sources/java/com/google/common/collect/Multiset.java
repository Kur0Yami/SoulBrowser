package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public interface Multiset<E> extends Collection<E> {

    /* loaded from: classes3.dex */
    public interface Entry<E> {
        Object a();

        int getCount();
    }

    boolean A(int i, Object obj);

    int G0(Object obj);

    int Q(Object obj);

    int T(int i, Object obj);

    int add(int i, Object obj);

    Set entrySet();

    boolean equals(Object obj);

    int hashCode();

    Set j();
}
