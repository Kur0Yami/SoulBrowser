package com.google.android.gms.internal.fido;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcv extends zzck {
    public static final zzcv k;
    public final transient zzcc j;

    static {
        zzdd zzddVar = zzcc.f;
        k = new zzcv(zzct.i, zzcq.f10288c);
    }

    public zzcv(zzcc zzccVar, Comparator comparator) {
        super(comparator);
        this.j = zzccVar;
    }

    public final int B(Object obj, boolean z) {
        obj.getClass();
        int binarySearch = Collections.binarySearch(this.j, obj, this.h);
        if (binarySearch >= 0) {
            if (z) {
                return binarySearch + 1;
            }
            return binarySearch;
        }
        return ~binarySearch;
    }

    public final int C(Object obj, boolean z) {
        obj.getClass();
        int binarySearch = Collections.binarySearch(this.j, obj, this.h);
        if (binarySearch >= 0) {
            if (z) {
                return binarySearch;
            }
            return binarySearch + 1;
        }
        return ~binarySearch;
    }

    public final zzcv D(int i, int i2) {
        zzcc zzccVar = this.j;
        if (i == 0) {
            if (i2 != zzccVar.size()) {
                i = 0;
            } else {
                return this;
            }
        }
        Comparator comparator = this.h;
        if (i < i2) {
            return new zzcv(zzccVar.subList(i, i2), comparator);
        }
        return zzck.x(comparator);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int a(Object[] objArr) {
        return this.j.a(objArr);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int c() {
        return this.j.c();
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.NavigableSet
    public final Object ceiling(Object obj) {
        int C = C(obj, true);
        zzcc zzccVar = this.j;
        if (C == zzccVar.size()) {
            return null;
        }
        return zzccVar.get(C);
    }

    @Override // com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.j, obj, this.h) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        if (collection instanceof zzcp) {
            collection = ((zzcp) collection).zza();
        }
        Comparator comparator = this.h;
        if (zzdb.a(comparator, collection) && collection.size() > 1) {
            zzdd listIterator = this.j.listIterator(0);
            Iterator it = collection.iterator();
            zzbu zzbuVar = (zzbu) listIterator;
            if (zzbuVar.hasNext()) {
                Object next = it.next();
                Object next2 = zzbuVar.next();
                while (true) {
                    try {
                        int compare = comparator.compare(next2, next);
                        if (compare < 0) {
                            if (!zzbuVar.hasNext()) {
                                break;
                            }
                            next2 = zzbuVar.next();
                        } else {
                            if (compare != 0) {
                                break;
                            }
                            if (!it.hasNext()) {
                                return true;
                            }
                            next = it.next();
                        }
                    } catch (ClassCastException | NullPointerException unused) {
                    }
                }
            }
            return false;
        }
        return super.containsAll(collection);
    }

    @Override // com.google.android.gms.internal.fido.zzcf, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        Object next;
        Object next2;
        if (obj != this) {
            if (obj instanceof Set) {
                Set set = (Set) obj;
                zzcc zzccVar = this.j;
                if (zzccVar.size() == set.size()) {
                    if (!isEmpty()) {
                        Comparator comparator = this.h;
                        if (zzdb.a(comparator, set)) {
                            Iterator it = set.iterator();
                            try {
                                zzdd listIterator = zzccVar.listIterator(0);
                                do {
                                    zzbu zzbuVar = (zzbu) listIterator;
                                    if (zzbuVar.hasNext()) {
                                        next = zzbuVar.next();
                                        next2 = it.next();
                                        if (next2 == null) {
                                            break;
                                        }
                                    } else {
                                        return true;
                                    }
                                } while (comparator.compare(next, next2) == 0);
                            } catch (ClassCastException | NoSuchElementException unused) {
                            }
                        } else {
                            return containsAll(set);
                        }
                    } else {
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.SortedSet
    public final Object first() {
        if (!isEmpty()) {
            return this.j.get(0);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.NavigableSet
    public final Object floor(Object obj) {
        int B = B(obj, true) - 1;
        if (B == -1) {
            return null;
        }
        return this.j.get(B);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final int g() {
        return this.j.g();
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.NavigableSet
    public final Object higher(Object obj) {
        int C = C(obj, false);
        zzcc zzccVar = this.j;
        if (C == zzccVar.size()) {
            return null;
        }
        return zzccVar.get(C);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    /* renamed from: i */
    public final zzdc iterator() {
        return this.j.listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzck, com.google.android.gms.internal.fido.zzcf, com.google.android.gms.internal.fido.zzby, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return this.j.listIterator(0);
    }

    @Override // com.google.android.gms.internal.fido.zzby
    public final Object[] k() {
        return this.j.k();
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.SortedSet
    public final Object last() {
        if (!isEmpty()) {
            return this.j.get(r0.size() - 1);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.NavigableSet
    public final Object lower(Object obj) {
        int B = B(obj, false) - 1;
        if (B == -1) {
            return null;
        }
        return this.j.get(B);
    }

    @Override // com.google.android.gms.internal.fido.zzcf
    public final zzcc r() {
        return this.j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.j.size();
    }

    @Override // com.google.android.gms.internal.fido.zzck
    public final zzck t() {
        Comparator reverseOrder = Collections.reverseOrder(this.h);
        if (isEmpty()) {
            return zzck.x(reverseOrder);
        }
        return new zzcv(this.j.m(), reverseOrder);
    }

    @Override // com.google.android.gms.internal.fido.zzck
    public final zzck u(Object obj, boolean z) {
        return D(0, B(obj, z));
    }

    @Override // com.google.android.gms.internal.fido.zzck
    public final zzck v(Object obj, boolean z, Object obj2, boolean z2) {
        return w(obj, z).u(obj2, z2);
    }

    @Override // com.google.android.gms.internal.fido.zzck
    public final zzck w(Object obj, boolean z) {
        return D(C(obj, z), this.j.size());
    }

    @Override // com.google.android.gms.internal.fido.zzck, java.util.NavigableSet
    /* renamed from: y */
    public final zzdc descendingIterator() {
        return this.j.m().listIterator(0);
    }
}
