package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.List;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ForwardingListMultimap<K, V> extends ForwardingMultimap<K, V> implements ListMultimap<K, V> {
    @Override // com.google.common.collect.ForwardingMultimap
    /* renamed from: n0, reason: merged with bridge method [inline-methods] */
    public abstract ListMultimap e0();

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public final List a(Object obj) {
        return e0().a(obj);
    }

    @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
    public final List get(Object obj) {
        return e0().get(obj);
    }
}
