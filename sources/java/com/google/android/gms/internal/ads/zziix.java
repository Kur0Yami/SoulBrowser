package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class zziix extends AbstractList {
    public static final zziiy g = zziiy.b(zziix.class);

    /* renamed from: c, reason: collision with root package name */
    public final List f8997c;
    public final zziir f;

    public zziix(ArrayList arrayList, zziir zziirVar) {
        this.f8997c = arrayList;
        this.f = zziirVar;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        List list = this.f8997c;
        if (list.size() > i) {
            return list.get(i);
        }
        zziir zziirVar = this.f;
        if (zziirVar.hasNext()) {
            list.add(zziirVar.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zziiw(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zziiy zziiyVar = g;
        zziiyVar.a("potentially expensive size() call");
        zziiyVar.a("blowup running");
        while (true) {
            zziir zziirVar = this.f;
            boolean hasNext = zziirVar.hasNext();
            List list = this.f8997c;
            if (hasNext) {
                list.add(zziirVar.next());
            } else {
                return list.size();
            }
        }
    }
}
