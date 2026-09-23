package com.google.android.gms.internal.mlkit_vision_common;

import java.util.AbstractMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzv extends zzp {
    public final /* synthetic */ zzw g;

    public zzv(zzw zzwVar) {
        this.g = zzwVar;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        zzw zzwVar = this.g;
        zzf.a(i, zzwVar.i);
        Object[] objArr = zzwVar.h;
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
