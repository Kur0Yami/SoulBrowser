package com.google.api.core;

import com.google.common.base.MoreObjects;
import com.google.common.util.concurrent.ForwardingListenableFuture;

@InternalApi
/* loaded from: classes3.dex */
public class ListenableFutureToApiFuture<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ApiFuture<V> {
    @Override // com.google.common.collect.ForwardingObject
    public final String toString() {
        new MoreObjects.ToStringHelper("ListenableFutureToApiFuture");
        throw null;
    }
}
