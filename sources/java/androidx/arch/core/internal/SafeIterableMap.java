package androidx.arch.core.internal;

import androidx.annotation.RestrictTo;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@RestrictTo
/* loaded from: classes.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: c, reason: collision with root package name */
    public Entry f362c;
    public Entry f;
    public final WeakHashMap g = new WeakHashMap();
    public int h = 0;

    /* loaded from: classes.dex */
    public static class AscendingIterator<K, V> extends ListIterator<K, V> {
        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        public final Entry b(Entry entry) {
            return entry.h;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        public final Entry c(Entry entry) {
            return entry.g;
        }
    }

    /* loaded from: classes.dex */
    public static class DescendingIterator<K, V> extends ListIterator<K, V> {
        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        public final Entry b(Entry entry) {
            return entry.g;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.ListIterator
        public final Entry c(Entry entry) {
            return entry.h;
        }
    }

    /* loaded from: classes.dex */
    public static class Entry<K, V> implements Map.Entry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f363c;
        public final Object f;
        public Entry g;
        public Entry h;

        public Entry(Object obj, Object obj2) {
            this.f363c = obj;
            this.f = obj2;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            if (this.f363c.equals(entry.f363c) && this.f.equals(entry.f)) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f363c;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f363c.hashCode() ^ this.f.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            return this.f363c + "=" + this.f;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public class IteratorWithAdditions extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        public Entry f364c;
        public boolean f = true;

        public IteratorWithAdditions() {
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void a(Entry entry) {
            boolean z;
            Entry entry2 = this.f364c;
            if (entry == entry2) {
                Entry entry3 = entry2.h;
                this.f364c = entry3;
                if (entry3 == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.f = z;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f) {
                if (SafeIterableMap.this.f362c == null) {
                    return false;
                }
                return true;
            }
            Entry entry = this.f364c;
            if (entry == null || entry.g == null) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Entry entry;
            if (this.f) {
                this.f = false;
                this.f364c = SafeIterableMap.this.f362c;
            } else {
                Entry entry2 = this.f364c;
                if (entry2 != null) {
                    entry = entry2.g;
                } else {
                    entry = null;
                }
                this.f364c = entry;
            }
            return this.f364c;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ListIterator<K, V> extends SupportRemove<K, V> implements Iterator<Map.Entry<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        public Entry f365c;
        public Entry f;

        public ListIterator(Entry entry, Entry entry2) {
            this.f365c = entry2;
            this.f = entry;
        }

        @Override // androidx.arch.core.internal.SafeIterableMap.SupportRemove
        public final void a(Entry entry) {
            Entry entry2 = null;
            if (this.f365c == entry && entry == this.f) {
                this.f = null;
                this.f365c = null;
            }
            Entry entry3 = this.f365c;
            if (entry3 == entry) {
                this.f365c = b(entry3);
            }
            Entry entry4 = this.f;
            if (entry4 == entry) {
                Entry entry5 = this.f365c;
                if (entry4 != entry5 && entry5 != null) {
                    entry2 = c(entry4);
                }
                this.f = entry2;
            }
        }

        public abstract Entry b(Entry entry);

        public abstract Entry c(Entry entry);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Entry entry;
            Entry entry2 = this.f;
            Entry entry3 = this.f365c;
            if (entry2 != entry3 && entry3 != null) {
                entry = c(entry2);
            } else {
                entry = null;
            }
            this.f = entry;
            return entry2;
        }
    }

    @RestrictTo
    /* loaded from: classes.dex */
    public static abstract class SupportRemove<K, V> {
        public abstract void a(Entry entry);
    }

    public Entry a(Object obj) {
        Entry entry = this.f362c;
        while (entry != null && !entry.f363c.equals(obj)) {
            entry = entry.g;
        }
        return entry;
    }

    public Object c(Object obj, Object obj2) {
        Entry a2 = a(obj);
        if (a2 != null) {
            return a2.f;
        }
        Entry entry = new Entry(obj, obj2);
        this.h++;
        Entry entry2 = this.f;
        if (entry2 == null) {
            this.f362c = entry;
            this.f = entry;
            return null;
        }
        entry2.g = entry;
        entry.h = entry2;
        this.f = entry;
        return null;
    }

    public final Iterator descendingIterator() {
        ListIterator listIterator = new ListIterator(this.f, this.f362c);
        this.g.put(listIterator, Boolean.FALSE);
        return listIterator;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((androidx.arch.core.internal.SafeIterableMap.ListIterator) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0052, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof androidx.arch.core.internal.SafeIterableMap
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            androidx.arch.core.internal.SafeIterableMap r7 = (androidx.arch.core.internal.SafeIterableMap) r7
            int r1 = r6.h
            int r3 = r7.h
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            androidx.arch.core.internal.SafeIterableMap$ListIterator r3 = (androidx.arch.core.internal.SafeIterableMap.ListIterator) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            androidx.arch.core.internal.SafeIterableMap$ListIterator r4 = (androidx.arch.core.internal.SafeIterableMap.ListIterator) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            androidx.arch.core.internal.SafeIterableMap$ListIterator r7 = (androidx.arch.core.internal.SafeIterableMap.ListIterator) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            return r0
        L53:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.arch.core.internal.SafeIterableMap.equals(java.lang.Object):boolean");
    }

    public Object g(Object obj) {
        Entry a2 = a(obj);
        if (a2 == null) {
            return null;
        }
        this.h--;
        WeakHashMap weakHashMap = this.g;
        if (!weakHashMap.isEmpty()) {
            Iterator<K> it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((SupportRemove) it.next()).a(a2);
            }
        }
        Entry entry = a2.h;
        if (entry != null) {
            entry.g = a2.g;
        } else {
            this.f362c = a2.g;
        }
        Entry entry2 = a2.g;
        if (entry2 != null) {
            entry2.h = entry;
        } else {
            this.f = entry;
        }
        a2.g = null;
        a2.h = null;
        return a2.f;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            ListIterator listIterator = (ListIterator) it;
            if (listIterator.hasNext()) {
                i += ((Map.Entry) listIterator.next()).hashCode();
            } else {
                return i;
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        ListIterator listIterator = new ListIterator(this.f362c, this.f);
        this.g.put(listIterator, Boolean.FALSE);
        return listIterator;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            ListIterator listIterator = (ListIterator) it;
            if (listIterator.hasNext()) {
                sb.append(((Map.Entry) listIterator.next()).toString());
                if (listIterator.hasNext()) {
                    sb.append(", ");
                }
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
