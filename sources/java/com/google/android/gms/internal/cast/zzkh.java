package com.google.android.gms.internal.cast;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzkh extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final int f9745c = -1;
    public final /* synthetic */ zzki f;

    public zzkh(zzki zzkiVar) {
        this.f = zzkiVar;
    }

    public final int a() {
        if (this.f9745c == -1) {
            return 0;
        }
        return this.f.f[0];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Comparator comparator;
        int a2 = a();
        zzki zzkiVar = this.f;
        int[] iArr = zzkiVar.f;
        int i = this.f9745c;
        int i2 = iArr[i + 1];
        if (i == -1) {
            comparator = zzki.j;
        } else {
            comparator = zzkk.f9748a;
        }
        if (Arrays.binarySearch(zzkiVar.f9746c, a2, i2, obj, comparator) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new zzkg(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f.f[this.f9745c + 1] - a();
    }
}
