package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0003\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableObjectList;", "E", "Landroidx/collection/ObjectList;", "MutableObjectListIterator", "ObjectListMutableList", "SubList", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 ObjectList.kt\nandroidx/collection/ObjectList\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1618:1\n948#1,2:1641\n948#1,2:1652\n948#1,2:1656\n652#1:1659\n955#1,2:1662\n955#1,2:1669\n955#1,2:1691\n955#1,2:1701\n955#1,2:1704\n955#1,2:1708\n1864#2,3:1619\n1855#2:1651\n1856#2:1654\n1855#2:1703\n1856#2:1706\n267#3,4:1622\n237#3,7:1626\n248#3,3:1634\n251#3,2:1638\n272#3:1640\n273#3:1643\n254#3,6:1644\n274#3:1650\n267#3,4:1672\n237#3,7:1676\n248#3,3:1684\n251#3,2:1688\n272#3:1690\n273#3:1693\n254#3,6:1694\n274#3:1700\n1826#4:1633\n1688#4:1637\n1826#4:1683\n1688#4:1687\n1295#5:1655\n1296#5:1658\n1295#5:1707\n1296#5:1710\n80#6:1660\n305#6,4:1665\n310#6:1671\n75#6:1711\n75#6:1712\n75#6:1713\n75#6:1714\n75#6:1715\n75#6:1716\n75#6:1717\n75#6:1718\n13579#7:1661\n13580#7:1664\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList\n*L\n864#1:1641,2\n898#1:1652,2\n907#1:1656,2\n927#1:1659\n1050#1:1662,2\n1059#1:1669,2\n1068#1:1691,2\n1077#1:1701,2\n1086#1:1704,2\n1095#1:1708,2\n740#1:1619,3\n897#1:1651\n897#1:1654\n1085#1:1703\n1085#1:1706\n863#1:1622,4\n863#1:1626,7\n863#1:1634,3\n863#1:1638,2\n863#1:1640\n863#1:1643\n863#1:1644,6\n863#1:1650\n1067#1:1672,4\n1067#1:1676,7\n1067#1:1684,3\n1067#1:1688,2\n1067#1:1690\n1067#1:1693\n1067#1:1694,6\n1067#1:1700\n863#1:1633\n863#1:1637\n1067#1:1683\n1067#1:1687\n906#1:1655\n906#1:1658\n1094#1:1707\n1094#1:1710\n979#1:1660\n1058#1:1665,4\n1058#1:1671\n1105#1:1711\n1109#1:1712\n1159#1:1713\n1175#1:1714\n1191#1:1715\n1207#1:1716\n1223#1:1717\n1242#1:1718\n1049#1:1661\n1049#1:1664\n*E\n"})
/* loaded from: classes.dex */
public final class MutableObjectList<E> extends ObjectList<E> {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/MutableObjectList$MutableObjectListIterator;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class MutableObjectListIterator<T> implements ListIterator<T>, KMutableListIterator {

        /* renamed from: c, reason: collision with root package name */
        public final Object f451c;
        public int f;

        public MutableObjectListIterator(int i, List list) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.f451c = list;
            this.f = i - 1;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.ListIterator
        public final void add(Object obj) {
            int i = this.f + 1;
            this.f = i;
            this.f451c.add(i, obj);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            if (this.f < this.f451c.size() - 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            if (this.f >= 0) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            int i = this.f + 1;
            this.f = i;
            return this.f451c.get(i);
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f + 1;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.ListIterator
        public final Object previous() {
            int i = this.f;
            this.f = i - 1;
            return this.f451c.get(i);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            this.f451c.remove(this.f);
            this.f--;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.ListIterator
        public final void set(Object obj) {
            this.f451c.set(this.f, obj);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/MutableObjectList$ObjectListMutableList;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ObjectListMutableList<T> implements List<T>, KMutableList {
        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            throw null;
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            throw null;
        }

        @Override // java.util.List
        public final Object get(int i) {
            ObjectListKt.a(i, this);
            throw null;
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            throw null;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new MutableObjectListIterator(0, this);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            throw null;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new MutableObjectListIterator(0, this);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            throw null;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            ObjectListKt.a(i, this);
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            throw null;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            ObjectListKt.b(i, i2, this);
            return new SubList(i, i2, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            throw null;
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            return new MutableObjectListIterator(i, this);
        }

        @Override // java.util.List
        public final Object remove(int i) {
            ObjectListKt.a(i, this);
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return CollectionToArray.toArray(this, array);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u00028\u00010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/MutableObjectList$SubList;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nObjectList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList$SubList\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1618:1\n1855#2,2:1619\n1855#2,2:1621\n*S KotlinDebug\n*F\n+ 1 ObjectList.kt\nandroidx/collection/MutableObjectList$SubList\n*L\n1395#1:1619,2\n1477#1:1621,2\n*E\n"})
    /* loaded from: classes.dex */
    public static final class SubList<T> implements List<T>, KMutableList {

        /* renamed from: c, reason: collision with root package name */
        public final Object f452c;
        public final int f;
        public int g;

        public SubList(int i, int i2, List list) {
            Intrinsics.checkNotNullParameter(list, "list");
            this.f452c = list;
            this.f = i;
            this.g = i2;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            int i = this.g;
            this.g = i + 1;
            this.f452c.add(i, obj);
            return true;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final boolean addAll(int i, Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            this.f452c.addAll(i + this.f, elements);
            this.g = elements.size() + this.g;
            return elements.size() > 0;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List, java.util.Collection
        public final void clear() {
            int i = this.g - 1;
            int i2 = this.f;
            if (i2 <= i) {
                while (true) {
                    this.f452c.remove(i);
                    if (i == i2) {
                        break;
                    } else {
                        i--;
                    }
                }
            }
            this.g = i2;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            int i = this.g;
            for (int i2 = this.f; i2 < i; i2++) {
                if (Intrinsics.areEqual(this.f452c.get(i2), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final Object get(int i) {
            ObjectListKt.a(i, this);
            return this.f452c.get(i + this.f);
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final int indexOf(Object obj) {
            int i = this.g;
            int i2 = this.f;
            for (int i3 = i2; i3 < i; i3++) {
                if (Intrinsics.areEqual(this.f452c.get(i3), obj)) {
                    return i3 - i2;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            if (this.g == this.f) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new MutableObjectListIterator(0, this);
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int i = this.g - 1;
            int i2 = this.f;
            if (i2 <= i) {
                while (!Intrinsics.areEqual(this.f452c.get(i), obj)) {
                    if (i != i2) {
                        i--;
                    } else {
                        return -1;
                    }
                }
                return i - i2;
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new MutableObjectListIterator(0, this);
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            int i = this.g;
            for (int i2 = this.f; i2 < i; i2++) {
                ?? r2 = this.f452c;
                if (Intrinsics.areEqual(r2.get(i2), obj)) {
                    r2.remove(i2);
                    this.g--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            int i = this.g;
            Iterator<T> it = elements.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            if (i != this.g) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            int i = this.g;
            int i2 = i - 1;
            int i3 = this.f;
            if (i3 <= i2) {
                while (true) {
                    ?? r3 = this.f452c;
                    if (!elements.contains(r3.get(i2))) {
                        r3.remove(i2);
                        this.g--;
                    }
                    if (i2 == i3) {
                        break;
                    }
                    i2--;
                }
            }
            if (i != this.g) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final Object set(int i, Object obj) {
            ObjectListKt.a(i, this);
            return this.f452c.set(i + this.f, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.g - this.f;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            ObjectListKt.b(i, i2, this);
            return new SubList(i, i2, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.toArray(this);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final void add(int i, Object obj) {
            this.f452c.add(i + this.f, obj);
            this.g++;
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            return new MutableObjectListIterator(i, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            return CollectionToArray.toArray(this, array);
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            this.f452c.addAll(this.g, elements);
            this.g = elements.size() + this.g;
            return elements.size() > 0;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [java.util.List, java.lang.Object] */
        @Override // java.util.List
        public final Object remove(int i) {
            ObjectListKt.a(i, this);
            this.g--;
            return this.f452c.remove(i + this.f);
        }
    }
}
