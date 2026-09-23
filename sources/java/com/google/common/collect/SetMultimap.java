package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public interface SetMultimap<K, V> extends Multimap<K, V> {
    @Override // com.google.common.collect.Multimap
    Set a(Object obj);

    @Override // com.google.common.collect.Multimap
    Set get(Object obj);

    @Override // com.google.common.collect.Multimap
    Set i();
}
