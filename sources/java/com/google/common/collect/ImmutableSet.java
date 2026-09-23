package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import j$.util.Objects;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E>, j$.util.Set {
    public static final /* synthetic */ int g = 0;
    public transient ImmutableList f;

    /* loaded from: classes3.dex */
    public static class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        public Object[] d;
        public int e;

        @Override // com.google.common.collect.ImmutableCollection.ArrayBasedBuilder
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Builder a(Object obj) {
            obj.getClass();
            if (this.d != null) {
                int r = ImmutableSet.r(this.b);
                Object[] objArr = this.d;
                if (r <= objArr.length) {
                    Objects.requireNonNull(objArr);
                    int length = this.d.length - 1;
                    int hashCode = obj.hashCode();
                    int b = Hashing.b(hashCode);
                    while (true) {
                        int i = b & length;
                        Object[] objArr2 = this.d;
                        Object obj2 = objArr2[i];
                        if (obj2 == null) {
                            objArr2[i] = obj;
                            this.e += hashCode;
                            super.a(obj);
                            return this;
                        }
                        if (obj2.equals(obj)) {
                            return this;
                        }
                        b = i + 1;
                    }
                }
            }
            this.d = null;
            super.a(obj);
            return this;
        }

        public ImmutableSet f() {
            ImmutableSet s;
            int i = this.b;
            if (i != 0) {
                if (i != 1) {
                    if (this.d != null && ImmutableSet.r(i) == this.d.length) {
                        int i2 = this.b;
                        Object[] objArr = this.f12288a;
                        int length = objArr.length;
                        if (i2 < (length >> 1) + (length >> 2)) {
                            objArr = Arrays.copyOf(objArr, i2);
                        }
                        int i3 = this.e;
                        s = new RegularImmutableSet(objArr, this.d, i3, r5.length - 1, this.b);
                    } else {
                        s = ImmutableSet.s(this.b, this.f12288a);
                        this.b = s.size();
                    }
                    this.f12289c = true;
                    this.d = null;
                    return s;
                }
                Object obj = this.f12288a[0];
                Objects.requireNonNull(obj);
                int i4 = ImmutableSet.g;
                return new SingletonImmutableSet(obj);
            }
            int i5 = ImmutableSet.g;
            return RegularImmutableSet.n;
        }

        public Builder g(Builder builder) {
            if (this.d != null) {
                for (int i = 0; i < builder.b; i++) {
                    Object obj = builder.f12288a[i];
                    Objects.requireNonNull(obj);
                    a(obj);
                }
                return this;
            }
            Object[] objArr = builder.f12288a;
            int i2 = builder.b;
            ObjectArrays.a(i2, objArr);
            d(i2);
            System.arraycopy(objArr, 0, this.f12288a, this.b, i2);
            this.b += i2;
            return this;
        }
    }

    @J2ktIncompatible
    /* loaded from: classes3.dex */
    public static final class SerializedForm implements Serializable {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.ImmutableSet$Builder, com.google.common.collect.ImmutableCollection$ArrayBasedBuilder] */
    public static Builder q() {
        return new ImmutableCollection.ArrayBasedBuilder(4);
    }

    public static int r(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * 0.7d < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        if (max >= 1073741824) {
            z = false;
        }
        Preconditions.e(z, "collection too large");
        return 1073741824;
    }

    public static ImmutableSet s(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int r = r(i);
                Object[] objArr2 = new Object[r];
                int i2 = r - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    if (obj != null) {
                        int hashCode = obj.hashCode();
                        int b = Hashing.b(hashCode);
                        while (true) {
                            int i6 = b & i2;
                            Object obj2 = objArr2[i6];
                            if (obj2 == null) {
                                objArr[i4] = obj;
                                objArr2[i6] = obj;
                                i3 += hashCode;
                                i4++;
                                break;
                            }
                            if (obj2.equals(obj)) {
                                break;
                            }
                            b++;
                        }
                    } else {
                        throw new NullPointerException(android.support.v4.media.a.e(i5, "at index "));
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new SingletonImmutableSet(obj3);
                }
                if (r(i4) < r / 2) {
                    return s(i4, objArr);
                }
                int length = objArr.length;
                if (i4 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new RegularImmutableSet(objArr, objArr2, i3, i2, i4);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new SingletonImmutableSet(obj4);
        }
        return RegularImmutableSet.n;
    }

    public static ImmutableSet t(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet immutableSet = (ImmutableSet) collection;
            if (!immutableSet.m()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return s(array.length, array);
    }

    public static ImmutableSet w() {
        return RegularImmutableSet.n;
    }

    public static ImmutableSet x() {
        return new SingletonImmutableSet(null);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList a() {
        ImmutableList immutableList = this.f;
        if (immutableList == null) {
            ImmutableList u = u();
            this.f = u;
            return u;
        }
        return immutableList;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && v() && ((ImmutableSet) obj).v() && hashCode() != obj.hashCode()) {
            return false;
        }
        return Sets.b(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.e(this);
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public ImmutableList u() {
        Object[] array = toArray(ImmutableCollection.f12287c);
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
        return ImmutableList.q(array.length, array);
    }

    public boolean v() {
        return this instanceof EmptyContiguousSet;
    }
}
