package com.google.android.gms.internal.common;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaf extends zzah {
    public final transient zzah g;

    public zzaf(zzah zzahVar) {
        this.g = zzahVar;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.g.contains(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzah zzahVar = this.g;
        zzr.a(i, zzahVar.size());
        return zzahVar.get((zzahVar.size() - 1) - i);
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    public final int indexOf(Object obj) {
        int lastIndexOf = this.g.lastIndexOf(obj);
        if (lastIndexOf < 0) {
            return -1;
        }
        return (r0.size() - 1) - lastIndexOf;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    public final int lastIndexOf(Object obj) {
        int indexOf = this.g.indexOf(obj);
        if (indexOf < 0) {
            return -1;
        }
        return (r0.size() - 1) - indexOf;
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final boolean m() {
        return this.g.m();
    }

    @Override // com.google.android.gms.internal.common.zzah
    public final zzah q() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.common.zzah, java.util.List
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public final zzah subList(int i, int i2) {
        zzah zzahVar = this.g;
        zzr.c(i, i2, zzahVar.size());
        return zzahVar.subList(zzahVar.size() - i2, zzahVar.size() - i).q();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.size();
    }
}
