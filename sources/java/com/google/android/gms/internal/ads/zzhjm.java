package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class zzhjm implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f8595c;
    public final /* synthetic */ List f;

    public zzhjm(zzhjp zzhjpVar, List list, List list2) {
        this.f8595c = list;
        this.f = list2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new zzhjo(this.f8595c.iterator(), this.f.iterator());
    }
}
