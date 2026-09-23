package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@DoNotMock
@GwtCompatible
/* loaded from: classes3.dex */
public interface Multimap<K, V> {
    Map G();

    boolean Z(Object obj, Object obj2);

    Collection a(Object obj);

    void clear();

    boolean containsKey(Object obj);

    boolean containsValue(Object obj);

    boolean equals(Object obj);

    Collection get(Object obj);

    int hashCode();

    Collection i();

    boolean isEmpty();

    Set keySet();

    boolean remove(Object obj, Object obj2);

    int size();
}
