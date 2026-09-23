package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgve extends zzgtn {
    public static final Object[] m;
    public static final zzgve n;
    public final transient Object[] h;
    public final transient int i;
    public final transient Object[] j;
    public final transient int k;
    public final transient int l;

    static {
        Object[] objArr = new Object[0];
        m = objArr;
        n = new zzgve(objArr, objArr, 0, 0, 0);
    }

    public zzgve(Object[] objArr, Object[] objArr2, int i, int i2, int i3) {
        this.h = objArr;
        this.i = i;
        this.j = objArr2;
        this.k = i2;
        this.l = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    /* renamed from: a */
    public final zzgvr iterator() {
        return k().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final Object[] c() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.j;
            if (objArr.length != 0) {
                int b = zzgsw.b(obj);
                while (true) {
                    int i = b & this.k;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    b = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int g() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int i() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzgtn, com.google.android.gms.internal.ads.zzgsz, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return k().listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final boolean m() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgsz
    public final int p(int i, Object[] objArr) {
        Object[] objArr2 = this.h;
        int i2 = this.l;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.ads.zzgtn
    public final zzgtd v() {
        return zzgtd.x(this.l, this.h);
    }
}
