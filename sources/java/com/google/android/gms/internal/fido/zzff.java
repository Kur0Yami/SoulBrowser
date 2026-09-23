package com.google.android.gms.internal.fido;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzff extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final int f10303c = -1;
    public final /* synthetic */ zzfg f;

    public zzff(zzfg zzfgVar) {
        this.f = zzfgVar;
    }

    public final int a() {
        if (this.f10303c == -1) {
            return 0;
        }
        return this.f.f[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Comparator comparator;
        zzfg zzfgVar = this.f;
        Object[] objArr = zzfgVar.f10304c;
        int a2 = a();
        int[] iArr = zzfgVar.f;
        int i = this.f10303c;
        int i2 = iArr[i + 1];
        if (i == -1) {
            comparator = zzfg.j;
        } else {
            comparator = zzfi.f10306a;
        }
        if (Arrays.binarySearch(objArr, a2, i2, obj, comparator) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzfe(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f.f[this.f10303c + 1] - a();
    }
}
