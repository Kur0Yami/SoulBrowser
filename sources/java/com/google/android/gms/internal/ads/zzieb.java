package com.google.android.gms.internal.ads;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Set;
import java.util.Spliterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* loaded from: classes.dex */
public final class zzieb extends zzidw implements Set, KMappedMarker, j$.util.Set {
    @Override // com.google.android.gms.internal.ads.zzidw, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    @Override // com.google.android.gms.internal.ads.zzidw, java.util.Collection, java.lang.Iterable, j$.util.Collection, j$.lang.Iterable
    public /* synthetic */ j$.util.Spliterator spliterator() {
        j$.util.Spliterator spliterator;
        spliterator = Spliterators.spliterator(this, 1);
        return spliterator;
    }
}
