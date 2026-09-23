package j$.util;

import j$.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* loaded from: classes2.dex */
public class h extends g implements java.util.List, List {
    private static final long serialVersionUID = -7754090372962971524L;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.List f21349c;

    public h(java.util.List list) {
        super(list);
        this.f21349c = list;
    }

    public h(java.util.List list, Object obj) {
        super(list, obj);
        this.f21349c = list;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        boolean equals;
        if (this == obj) {
            return true;
        }
        synchronized (this.b) {
            equals = this.f21349c.equals(obj);
        }
        return equals;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int hashCode;
        synchronized (this.b) {
            hashCode = this.f21349c.hashCode();
        }
        return hashCode;
    }

    @Override // java.util.List
    public final Object get(int i) {
        Object obj;
        synchronized (this.b) {
            obj = this.f21349c.get(i);
        }
        return obj;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        Object obj2;
        synchronized (this.b) {
            obj2 = this.f21349c.set(i, obj);
        }
        return obj2;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        synchronized (this.b) {
            this.f21349c.add(i, obj);
        }
    }

    @Override // java.util.List
    public final Object remove(int i) {
        Object remove;
        synchronized (this.b) {
            remove = this.f21349c.remove(i);
        }
        return remove;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        int indexOf;
        synchronized (this.b) {
            indexOf = this.f21349c.indexOf(obj);
        }
        return indexOf;
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        int lastIndexOf;
        synchronized (this.b) {
            lastIndexOf = this.f21349c.lastIndexOf(obj);
        }
        return lastIndexOf;
    }

    @Override // java.util.List
    public final boolean addAll(int i, java.util.Collection collection) {
        boolean addAll;
        synchronized (this.b) {
            addAll = this.f21349c.addAll(i, collection);
        }
        return addAll;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return this.f21349c.listIterator();
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return this.f21349c.listIterator(i);
    }

    @Override // java.util.List
    public java.util.List subList(int i, int i2) {
        h hVar;
        synchronized (this.b) {
            hVar = new h(this.f21349c.subList(i, i2), this.b);
        }
        return hVar;
    }

    @Override // java.util.List, j$.util.List
    public final void replaceAll(UnaryOperator unaryOperator) {
        synchronized (this.b) {
            java.util.List list = this.f21349c;
            if (list instanceof List) {
                ((List) list).replaceAll(unaryOperator);
            } else {
                List.CC.$default$replaceAll(list, unaryOperator);
            }
        }
    }

    @Override // java.util.List, j$.util.List
    public final void sort(java.util.Comparator comparator) {
        synchronized (this.b) {
            List.EL.sort(this.f21349c, comparator);
        }
    }

    private Object readResolve() {
        java.util.List list = this.f21349c;
        return list instanceof RandomAccess ? new h(list) : this;
    }
}
