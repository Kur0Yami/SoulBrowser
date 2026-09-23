package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzgrp implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8224c;
    public final Collection f;
    public final /* synthetic */ zzgrq g;

    public zzgrp(zzgrq zzgrqVar) {
        Iterator it;
        this.g = zzgrqVar;
        Collection collection = zzgrqVar.f;
        this.f = collection;
        if (collection instanceof List) {
            it = ((List) collection).listIterator();
        } else {
            it = collection.iterator();
        }
        this.f8224c = it;
    }

    public final void a() {
        zzgrq zzgrqVar = this.g;
        zzgrqVar.a();
        if (zzgrqVar.f == this.f) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.f8224c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.f8224c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f8224c.remove();
        zzgrq zzgrqVar = this.g;
        zzgrt zzgrtVar = zzgrqVar.i;
        zzgrtVar.i--;
        zzgrqVar.zzb();
    }

    public zzgrp(zzgrs zzgrsVar, ListIterator listIterator) {
        this.g = zzgrsVar;
        this.f = zzgrsVar.f;
        this.f8224c = listIterator;
    }
}
