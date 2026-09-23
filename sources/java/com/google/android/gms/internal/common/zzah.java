package com.google.android.gms.internal.common;

import j$.util.List;
import j$.util.Objects;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* loaded from: classes.dex */
public abstract class zzah extends zzac implements List, RandomAccess, j$.util.List {
    public static final zzal f = new zzae(zzaj.i, 0);

    public static zzah s() {
        return zzaj.i;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.common.zzad, com.google.android.gms.internal.common.zzaa] */
    public static zzah t(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return u((Collection) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return zzaj.i;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            Object[] objArr = {next};
            zzai.a(1, objArr);
            return v(1, objArr);
        }
        ?? zzaaVar = new zzaa();
        zzaaVar.a(next);
        while (it.hasNext()) {
            zzaaVar.a(it.next());
        }
        return zzaaVar.c();
    }

    public static zzah u(Collection collection) {
        if (collection instanceof zzac) {
            zzah k = ((zzac) collection).k();
            if (k.m()) {
                Object[] array = k.toArray(zzac.f9910c);
                return v(array.length, array);
            }
            return k;
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        zzai.a(length, array2);
        return v(length, array2);
    }

    public static zzah v(int i, Object[] objArr) {
        if (i == 0) {
            return zzaj.i;
        }
        return new zzaj(objArr, i);
    }

    @Override // com.google.android.gms.internal.common.zzac
    /* renamed from: a */
    public final zzak iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i = 0; i < size; i++) {
                if (!Objects.equals(get(i), list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        Iterator it = iterator();
        Iterator it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !Objects.equals(it.next(), it2.next())) {
                return false;
            }
        }
        if (!it2.hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    public int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzac, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.common.zzac
    public final zzah k() {
        return this;
    }

    public int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.common.zzac
    public void p(Object[] objArr) {
        int size = size();
        for (int i = 0; i < size; i++) {
            objArr[i] = get(i);
        }
    }

    public zzah q() {
        if (size() <= 1) {
            return this;
        }
        return new zzaf(this);
    }

    @Override // java.util.List
    /* renamed from: r */
    public zzah subList(int i, int i2) {
        zzr.c(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return zzaj.i;
        }
        return new zzag(this, i, i3);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.CC.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public /* synthetic */ void sort(Comparator comparator) {
        List.CC.$default$sort(this, comparator);
    }

    @Override // java.util.List
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final zzal listIterator(int i) {
        zzr.b(i, size());
        if (isEmpty()) {
            return f;
        }
        return new zzae(this, i);
    }
}
