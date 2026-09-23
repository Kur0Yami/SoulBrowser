package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
final class EmptyImmutableSetMultimap extends ImmutableSetMultimap<Object, Object> {
    static {
        new ImmutableSetMultimap();
    }

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
