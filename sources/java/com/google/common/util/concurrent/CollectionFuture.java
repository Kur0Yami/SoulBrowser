package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import java.util.List;

@GwtCompatible
/* loaded from: classes3.dex */
abstract class CollectionFuture<V, C> extends AggregateFuture<V, C> {

    /* loaded from: classes3.dex */
    public static final class ListFuture<V> extends CollectionFuture<V, List<V>> {
    }

    /* loaded from: classes3.dex */
    public static final class Present<V> {
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    public final void q() {
    }
}
