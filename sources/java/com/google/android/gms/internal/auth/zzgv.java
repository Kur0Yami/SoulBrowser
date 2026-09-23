package com.google.android.gms.internal.auth;

import j$.util.DesugarCollections;
import java.util.AbstractMap;
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
public class zzgv extends AbstractMap {
    public static final /* synthetic */ int k = 0;

    /* renamed from: c, reason: collision with root package name */
    public final int f9563c;
    public List f = Collections.EMPTY_LIST;
    public Map g;
    public boolean h;
    public volatile zzgt i;
    public Map j;

    public /* synthetic */ zzgv(int i) {
        this.f9563c = i;
        Map map = Collections.EMPTY_MAP;
        this.g = map;
        this.j = map;
    }

    public void a() {
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
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        f();
        int c2 = c(comparable);
        if (c2 >= 0) {
            return ((zzgp) this.f.get(c2)).setValue(obj);
        }
        f();
        boolean isEmpty = this.f.isEmpty();
        int i = this.f9563c;
        if (isEmpty && !(this.f instanceof ArrayList)) {
            this.f = new ArrayList(i);
        }
        int i2 = -(c2 + 1);
        if (i2 >= i) {
            return e().put(comparable, obj);
        }
        if (this.f.size() == i) {
            zzgp zzgpVar = (zzgp) this.f.remove(i - 1);
            e().put(zzgpVar.f9560c, zzgpVar.f);
        }
        this.f.add(i2, new zzgp(this, comparable, obj));
        return null;
    }

    public final int c(Comparable comparable) {
        int size = this.f.size();
        int i = size - 1;
        int i2 = 0;
        if (i >= 0) {
            int compareTo = comparable.compareTo(((zzgp) this.f.get(i)).f9560c);
            if (compareTo > 0) {
                return -(size + 1);
            }
            if (compareTo == 0) {
                return i;
            }
        }
        while (i2 <= i) {
            int i3 = (i2 + i) / 2;
            int compareTo2 = comparable.compareTo(((zzgp) this.f.get(i3)).f9560c);
            if (compareTo2 < 0) {
                i = i3 - 1;
            } else if (compareTo2 > 0) {
                i2 = i3 + 1;
            } else {
                return i3;
            }
        }
        return -(i2 + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        f();
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
        if (c(comparable) < 0 && !this.g.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    public final Object d(int i) {
        f();
        Object obj = ((zzgp) this.f.remove(i)).f;
        if (!this.g.isEmpty()) {
            Iterator it = e().entrySet().iterator();
            List list = this.f;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new zzgp(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    public final SortedMap e() {
        f();
        if (this.g.isEmpty() && !(this.g instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.g = treeMap;
            this.j = treeMap.descendingMap();
        }
        return (SortedMap) this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.i == null) {
            this.i = new zzgt(this);
        }
        return this.i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof zzgv)) {
                return super.equals(obj);
            }
            zzgv zzgvVar = (zzgv) obj;
            int size = size();
            if (size == zzgvVar.size()) {
                int size2 = this.f.size();
                if (size2 == zzgvVar.f.size()) {
                    for (int i = 0; i < size2; i++) {
                        if (((Map.Entry) this.f.get(i)).equals((Map.Entry) zzgvVar.f.get(i))) {
                        }
                    }
                    if (size2 != size) {
                        return this.g.equals(zzgvVar.g);
                    }
                    return true;
                }
                return entrySet().equals(zzgvVar.entrySet());
            }
            return false;
        }
        return true;
    }

    public final void f() {
        if (!this.h) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int c2 = c(comparable);
        if (c2 >= 0) {
            return ((zzgp) this.f.get(c2)).f;
        }
        return this.g.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((zzgp) this.f.get(i2)).hashCode();
        }
        if (this.g.size() > 0) {
            return this.g.hashCode() + i;
        }
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int c2 = c(comparable);
        if (c2 >= 0) {
            return d(c2);
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
