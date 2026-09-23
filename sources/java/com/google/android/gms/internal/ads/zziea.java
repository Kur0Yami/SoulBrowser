package com.google.android.gms.internal.ads;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* loaded from: classes.dex */
public final class zziea implements Map.Entry, KMappedMarker {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f8964c;

    public zziea(Map.Entry delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f8964c = delegate;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8964c.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8964c.getValue();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
