package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
final class EmptyImmutableListMultimap extends ImmutableListMultimap<Object, Object> {
    public static final EmptyImmutableListMultimap k = new ImmutableMultimap(RegularImmutableMap.k, 0);

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.AbstractMultimap, com.google.common.collect.Multimap
    public final Map G() {
        return this.i;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* renamed from: f */
    public final ImmutableMap G() {
        return this.i;
    }
}
