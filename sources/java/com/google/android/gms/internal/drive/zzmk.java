package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class zzmk implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f10249c;
    public Iterator f;
    public final /* synthetic */ zzmi g;

    public zzmk(zzmi zzmiVar) {
        this.g = zzmiVar;
        this.f10249c = zzmiVar.f.size();
    }

    public final Iterator a() {
        if (this.f == null) {
            this.f = this.g.j.entrySet().iterator();
        }
        return this.f;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.f10249c;
        if ((i > 0 && i <= this.g.f.size()) || a().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (a().hasNext()) {
            return (Map.Entry) a().next();
        }
        List list = this.g.f;
        int i = this.f10249c - 1;
        this.f10249c = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
