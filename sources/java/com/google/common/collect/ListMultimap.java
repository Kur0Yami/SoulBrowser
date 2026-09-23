package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.List;

@GwtCompatible
/* loaded from: classes3.dex */
public interface ListMultimap<K, V> extends Multimap<K, V> {
    @Override // com.google.common.collect.Multimap
    List a(Object obj);

    @Override // com.google.common.collect.Multimap
    List get(Object obj);
}
