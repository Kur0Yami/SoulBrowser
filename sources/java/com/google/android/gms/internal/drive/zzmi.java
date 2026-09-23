package com.google.android.gms.internal.drive;

import j$.util.DesugarCollections;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class zzmi<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int k = 0;

    /* renamed from: c, reason: collision with root package name */
    public final int f10248c;
    public List f = Collections.EMPTY_LIST;
    public Map g;
    public boolean h;
    public volatile zzmr i;
    public Map j;

    public zzmi(int i) {
        this.f10248c = i;
        Map map = Collections.EMPTY_MAP;
        this.g = map;
        this.j = map;
    }

    public final int a(Comparable comparable) {
        int i;
        int size = this.f.size();
        int i2 = size - 1;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((zzmp) this.f.get(i2)).f10251c);
            if (compareTo > 0) {
                i = size + 1;
                return -i;
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((zzmp) this.f.get(i4)).f10251c);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else if (compareTo2 > 0) {
                i3 = i4 + 1;
            } else {
                return i4;
            }
        }
        i = i3 + 1;
        return -i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        g();
        int a2 = a(comparable);
        if (a2 >= 0) {
            return ((zzmp) this.f.get(a2)).setValue(obj);
        }
        g();
        boolean isEmpty = this.f.isEmpty();
        int i = this.f10248c;
        if (isEmpty && !(this.f instanceof ArrayList)) {
            this.f = new ArrayList(i);
        }
        int i2 = -(a2 + 1);
        if (i2 >= i) {
            return h().put(comparable, obj);
        }
        if (this.f.size() == i) {
            zzmp zzmpVar = (zzmp) this.f.remove(i - 1);
            h().put(zzmpVar.f10251c, zzmpVar.f);
        }
        this.f.add(i2, new zzmp(this, comparable, obj));
        return null;
    }

    public final Map.Entry c(int i) {
        return (Map.Entry) this.f.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (!this.f.isEmpty()) {
            this.f.clear();
        }
        if (!this.g.isEmpty()) {
            this.g.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (a(comparable) < 0 && !this.g.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    public final Object d(int i) {
        g();
        Object obj = ((zzmp) this.f.remove(i)).f;
        if (!this.g.isEmpty()) {
            Iterator it = h().entrySet().iterator();
            List list = this.f;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzmp(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    public void e() {
        Map unmodifiableMap;
        Map unmodifiableMap2;
        if (!this.h) {
            if (this.g.isEmpty()) {
                unmodifiableMap = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap = DesugarCollections.unmodifiableMap(this.g);
            }
            this.g = unmodifiableMap;
            if (this.j.isEmpty()) {
                unmodifiableMap2 = Collections.EMPTY_MAP;
            } else {
                unmodifiableMap2 = DesugarCollections.unmodifiableMap(this.j);
            }
            this.j = unmodifiableMap2;
            this.h = true;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.i == null) {
            this.i = new zzmr(this);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof zzmi)) {
                return super.equals(obj);
            }
            zzmi zzmiVar = (zzmi) obj;
            int size = size();
            if (size == zzmiVar.size()) {
                int size2 = this.f.size();
                if (size2 != zzmiVar.f.size()) {
                    return ((AbstractSet) entrySet()).equals(zzmiVar.entrySet());
                }
                for (int i = 0; i < size2; i++) {
                    if (c(i).equals(zzmiVar.c(i))) {
                    }
                }
                if (size2 != size) {
                    return this.g.equals(zzmiVar.g);
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final Iterable f() {
        if (this.g.isEmpty()) {
            return zzmm.b;
        }
        return this.g.entrySet();
    }

    public final void g() {
        if (!this.h) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a2 = a(comparable);
        if (a2 >= 0) {
            return ((zzmp) this.f.get(a2)).f;
        }
        return this.g.get(comparable);
    }

    public final SortedMap h() {
        g();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((zzmp) this.f.get(i2)).hashCode();
        }
        if (this.g.size() > 0) {
            return this.g.hashCode() + i;
        }
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int a2 = a(comparable);
        if (a2 >= 0) {
            return d(a2);
        }
        if (this.g.isEmpty()) {
            return null;
        }
        return this.g.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.g.size() + this.f.size();
    }
}
