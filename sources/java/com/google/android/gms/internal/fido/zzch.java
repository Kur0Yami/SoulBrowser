package com.google.android.gms.internal.fido;

import java.util.AbstractMap;

/* loaded from: classes3.dex */
final class zzch extends zzcc {
    public final /* synthetic */ zzci g;

    public zzch(zzci zzciVar) {
        this.g = zzciVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzci zzciVar = this.g;
        return new AbstractMap.SimpleImmutableEntry(zzciVar.h.g.j.get(i), zzciVar.h.h.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.h.h.size();
    }
}
