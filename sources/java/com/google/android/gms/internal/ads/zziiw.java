package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class zziiw implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f8996c = 0;
    public final /* synthetic */ zziix f;

    public zziiw(zziix zziixVar) {
        this.f = zziixVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f8996c;
        zziix zziixVar = this.f;
        if (i >= zziixVar.f8997c.size() && !zziixVar.f.hasNext()) {
            return false;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f8996c;
        zziix zziixVar = this.f;
        List list = zziixVar.f8997c;
        if (i < list.size()) {
            int i2 = this.f8996c;
            this.f8996c = i2 + 1;
            return list.get(i2);
        }
        list.add(zziixVar.f.next());
        return next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
