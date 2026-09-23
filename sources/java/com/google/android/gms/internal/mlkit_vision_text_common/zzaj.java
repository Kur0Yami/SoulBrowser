package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.List;
import java.util.ListIterator;

/* loaded from: classes3.dex */
final class zzaj extends zzah implements ListIterator {
    public final /* synthetic */ zzak h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(zzak zzakVar) {
        super(zzakVar);
        this.h = zzakVar;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        zzak zzakVar = this.h;
        boolean isEmpty = zzakVar.isEmpty();
        a();
        ((ListIterator) this.f11124c).add(obj);
        if (isEmpty) {
            zzakVar.a();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        a();
        return ((ListIterator) this.f11124c).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        a();
        return ((ListIterator) this.f11124c).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        return ((ListIterator) this.f11124c).previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        a();
        return ((ListIterator) this.f11124c).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        ((ListIterator) this.f11124c).set(obj);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaj(zzak zzakVar, int i) {
        super(zzakVar, ((List) zzakVar.f).listIterator(i));
        this.h = zzakVar;
    }
}
