package com.google.android.gms.internal.mlkit_code_scanner;

import java.util.AbstractMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzu extends zzp {
    public final /* synthetic */ zzv g;

    public zzu(zzv zzvVar) {
        this.g = zzvVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzv zzvVar = this.g;
        zzf.a(i, zzvVar.i);
        Object[] objArr = zzvVar.h;
        int i2 = i + i;
        Object obj = objArr[i2];
        obj.getClass();
        Object obj2 = objArr[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.g.i;
    }
}
