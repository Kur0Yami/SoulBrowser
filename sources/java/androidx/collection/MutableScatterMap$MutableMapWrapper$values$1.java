package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableCollection;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u001f\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/collection/MutableScatterMap$MutableMapWrapper$values$1", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$values$1\n+ 2 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 3 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1850:1\n363#2,6:1851\n373#2,3:1858\n376#2,9:1862\n363#2,6:1871\n373#2,3:1878\n376#2,9:1882\n363#2,6:1891\n373#2,3:1898\n376#2,9:1902\n1826#3:1857\n1688#3:1861\n1826#3:1877\n1688#3:1881\n1826#3:1897\n1688#3:1901\n1726#4,3:1911\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/MutableScatterMap$MutableMapWrapper$values$1\n*L\n1546#1:1851,6\n1546#1:1858,3\n1546#1:1862,9\n1557#1:1871,6\n1557#1:1878,3\n1557#1:1882,9\n1567#1:1891,6\n1567#1:1898,3\n1567#1:1902,9\n1546#1:1857\n1546#1:1861\n1557#1:1877\n1557#1:1881\n1567#1:1897\n1567#1:1901\n1577#1:1911,3\n*E\n"})
/* loaded from: classes.dex */
public final class MutableScatterMap$MutableMapWrapper$values$1 implements Collection<Object>, KMutableCollection {
    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        throw null;
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        throw null;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (!elements.isEmpty()) {
            Iterator it = elements.iterator();
            if (!it.hasNext()) {
                return true;
            }
            it.next();
            throw null;
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        throw null;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new MutableScatterMap$MutableMapWrapper$values$1$iterator$1();
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw null;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw null;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        throw null;
    }

    @Override // java.util.Collection
    public final int size() {
        throw null;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return CollectionToArray.toArray(this, array);
    }
}
