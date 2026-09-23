package com.google.android.gms.internal.ads;

import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* loaded from: classes.dex */
public final class zzidx implements Iterator, KMappedMarker {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Iterator f8960c;

    public zzidx(Iterator delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f8960c = delegate;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8960c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f8960c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
