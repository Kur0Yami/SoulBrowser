package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class zzah implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f11124c;
    public final Collection f;
    public final /* synthetic */ zzai g;

    public zzah(zzak zzakVar, ListIterator listIterator) {
        this.g = zzakVar;
        this.f = zzakVar.f;
        this.f11124c = listIterator;
    }

    public final void a() {
        zzai zzaiVar = this.g;
        zzaiVar.zzb();
        if (zzaiVar.f == this.f) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.f11124c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.f11124c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f11124c.remove();
        this.g.c();
    }

    public zzah(zzai zzaiVar) {
        Iterator it;
        this.g = zzaiVar;
        Collection collection = zzaiVar.f;
        this.f = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.f11124c = it;
    }
}
