package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
final class zzgrr extends zzgrp implements ListIterator {
    public final /* synthetic */ zzgrs h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrr(zzgrs zzgrsVar) {
        super(zzgrsVar);
        this.h = zzgrsVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        zzgrs zzgrsVar = this.h;
        boolean isEmpty = zzgrsVar.isEmpty();
        a();
        ((ListIterator) this.f8224c).add(obj);
        zzgrsVar.j.i++;
        if (isEmpty) {
            zzgrsVar.c();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.f8224c).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        a();
        return ((ListIterator) this.f8224c).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        return ((ListIterator) this.f8224c).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        a();
        return ((ListIterator) this.f8224c).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        ((ListIterator) this.f8224c).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgrr(zzgrs zzgrsVar, int i) {
        super(zzgrsVar, ((List) zzgrsVar.f).listIterator(i));
        this.h = zzgrsVar;
    }
}
