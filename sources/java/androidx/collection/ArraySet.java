package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001f\n\u0002\u0010#\n\u0002\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Landroidx/collection/ArraySet;", "E", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "ElementIterator", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nArraySet.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n+ 2 ArraySet.kt\nandroidx/collection/ArraySetKt\n*L\n1#1,300:1\n304#2,10:301\n317#2,14:311\n334#2:325\n339#2:326\n345#2:327\n350#2:328\n355#2,61:329\n420#2,17:390\n440#2,6:407\n450#2,60:413\n518#2,9:473\n531#2,22:482\n557#2,7:504\n568#2,19:511\n591#2,6:530\n601#2,6:536\n611#2,5:542\n620#2,8:547\n*S KotlinDebug\n*F\n+ 1 ArraySet.jvm.kt\nandroidx/collection/ArraySet\n*L\n98#1:301,10\n108#1:311,14\n118#1:325\n128#1:326\n138#1:327\n145#1:328\n157#1:329,61\n167#1:390,17\n177#1:407,6\n188#1:413,60\n197#1:473,9\n224#1:482,22\n231#1:504,7\n240#1:511,19\n267#1:530,6\n276#1:536,6\n286#1:542,5\n297#1:547,8\n*E\n"})
/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E>, KMutableCollection, KMutableSet {

    /* renamed from: c, reason: collision with root package name */
    public int[] f436c = ContainerHelpersKt.f476a;
    public Object[] f = ContainerHelpersKt.f477c;
    public int g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"Landroidx/collection/ArraySet$ElementIterator;", "Landroidx/collection/IndexBasedArrayIterator;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.g);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i) {
            return ArraySet.this.f[i];
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void b(int i) {
            ArraySet.this.a(i);
        }
    }

    public ArraySet(int i) {
        if (i > 0) {
            ArraySetKt.a(this, i);
        }
    }

    public final Object a(int i) {
        int i2 = this.g;
        Object[] objArr = this.f;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i3 = i2 - 1;
        int[] iArr = this.f436c;
        int i4 = 8;
        if (iArr.length > 8 && i2 < iArr.length / 3) {
            if (i2 > 8) {
                i4 = i2 + (i2 >> 1);
            }
            ArraySetKt.a(this, i4);
            if (i > 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(iArr, this.f436c, 0, 0, i, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(objArr, this.f, 0, 0, i, 6, (Object) null);
            }
            if (i < i3) {
                int i5 = i + 1;
                ArraysKt___ArraysJvmKt.copyInto(iArr, this.f436c, i, i5, i2);
                ArraysKt___ArraysJvmKt.copyInto(objArr, this.f, i, i5, i2);
            }
        } else {
            if (i < i3) {
                int i6 = i + 1;
                ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, i, i6, i2);
                Object[] objArr2 = this.f;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i, i6, i2);
            }
            this.f[i3] = null;
        }
        if (i2 == this.g) {
            this.g = i3;
            return obj;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int b;
        int i2 = this.g;
        if (obj == null) {
            Intrinsics.checkNotNullParameter(this, "<this>");
            b = ArraySetKt.b(this, null, 0);
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            b = ArraySetKt.b(this, obj, hashCode);
        }
        if (b >= 0) {
            return false;
        }
        int i3 = ~b;
        int[] iArr = this.f436c;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.f;
            ArraySetKt.a(this, i4);
            if (i2 == this.g) {
                int[] iArr2 = this.f436c;
                if (iArr2.length != 0) {
                    ArraysKt___ArraysJvmKt.copyInto$default(iArr, iArr2, 0, 0, iArr.length, 6, (Object) null);
                    ArraysKt___ArraysJvmKt.copyInto$default(objArr, this.f, 0, 0, objArr.length, 6, (Object) null);
                }
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.f436c;
            int i5 = i3 + 1;
            ArraysKt___ArraysJvmKt.copyInto(iArr3, iArr3, i5, i3, i2);
            Object[] objArr2 = this.f;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i5, i3, i2);
        }
        int i6 = this.g;
        if (i2 == i6) {
            int[] iArr4 = this.f436c;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.f[i3] = obj;
                this.g = i6 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int size = elements.size() + this.g;
        int i = this.g;
        int[] iArr = this.f436c;
        if (iArr.length < size) {
            Object[] objArr = this.f;
            ArraySetKt.a(this, size);
            int i2 = this.g;
            if (i2 > 0) {
                ArraysKt___ArraysJvmKt.copyInto$default(iArr, this.f436c, 0, 0, i2, 6, (Object) null);
                ArraysKt___ArraysJvmKt.copyInto$default(objArr, this.f, 0, 0, this.g, 6, (Object) null);
            }
        }
        if (this.g == i) {
            Iterator<E> it = elements.iterator();
            boolean z = false;
            while (it.hasNext()) {
                z |= add(it.next());
            }
            return z;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.g != 0) {
            int[] iArr = ContainerHelpersKt.f476a;
            Intrinsics.checkNotNullParameter(iArr, "<set-?>");
            this.f436c = iArr;
            Object[] objArr = ContainerHelpersKt.f477c;
            Intrinsics.checkNotNullParameter(objArr, "<set-?>");
            this.f = objArr;
            this.g = 0;
        }
        if (this.g == 0) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int b;
        if (obj == null) {
            Intrinsics.checkNotNullParameter(this, "<this>");
            b = ArraySetKt.b(this, null, 0);
        } else {
            b = ArraySetKt.b(this, obj, obj.hashCode());
        }
        if (b < 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<E> it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.g != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = this.g;
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(this.f[i2])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f436c;
        int i = this.g;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        if (this.g <= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new ElementIterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int b;
        if (obj == null) {
            Intrinsics.checkNotNullParameter(this, "<this>");
            b = ArraySetKt.b(this, null, 0);
        } else {
            b = ArraySetKt.b(this, obj, obj.hashCode());
        }
        if (b < 0) {
            return false;
        }
        a(b);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<E> it = elements.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        for (int i = this.g - 1; -1 < i; i--) {
            if (!CollectionsKt.contains(elements, this.f[i])) {
                a(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.g;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.copyOfRange(this.f, 0, this.g);
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.g * 14);
        sb.append('{');
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.f[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] result) {
        Intrinsics.checkNotNullParameter(result, "array");
        int i = this.g;
        if (result.length < i) {
            result = (Object[]) Array.newInstance(result.getClass().getComponentType(), i);
        } else if (result.length > i) {
            result[i] = null;
        }
        ArraysKt___ArraysJvmKt.copyInto(this.f, result, 0, 0, this.g);
        Intrinsics.checkNotNullExpressionValue(result, "result");
        return result;
    }
}
