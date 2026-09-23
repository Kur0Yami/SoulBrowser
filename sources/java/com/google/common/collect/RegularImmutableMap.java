package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import kotlin.UByte;
import kotlin.UShort;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible
/* loaded from: classes3.dex */
public final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    public static final ImmutableMap k = new RegularImmutableMap(null, new Object[0], 0);
    public final transient Object h;
    public final transient Object[] i;
    public final transient int j;

    /* loaded from: classes3.dex */
    public static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableMap h;
        public final transient Object[] i;
        public final transient int j;
        public final transient int k;

        public EntrySet(ImmutableMap immutableMap, Object[] objArr, int i, int i2) {
            this.h = immutableMap;
            this.i = objArr;
            this.j = i;
            this.k = i2;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int c(int i, Object[] objArr) {
            return a().c(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value != null && value.equals(this.h.get(key))) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            return a().listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.k;
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList u() {
            return new ImmutableList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // java.util.List
                public final Object get(int i) {
                    EntrySet entrySet = EntrySet.this;
                    Preconditions.g(i, entrySet.k);
                    Object[] objArr = entrySet.i;
                    int i2 = i * 2;
                    int i3 = entrySet.j;
                    Object obj = objArr[i2 + i3];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArr[i2 + (i3 ^ 1)];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }

                @Override // com.google.common.collect.ImmutableCollection
                public final boolean m() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    return EntrySet.this.k;
                }
            };
        }
    }

    /* loaded from: classes3.dex */
    public static final class KeySet<K> extends ImmutableSet<K> {
        public final transient ImmutableMap h;
        public final transient ImmutableList i;

        public KeySet(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.h = immutableMap;
            this.i = immutableList;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public final ImmutableList a() {
            return this.i;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int c(int i, Object[] objArr) {
            return this.i.c(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (this.h.get(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* renamed from: p */
        public final UnmodifiableIterator iterator() {
            return this.i.listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.h.size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class KeysOrValuesAsList extends ImmutableList<Object> {
        public final transient Object[] g;
        public final transient int h;
        public final transient int i;

        public KeysOrValuesAsList(Object[] objArr, int i, int i2) {
            this.g = objArr;
            this.h = i;
            this.i = i2;
        }

        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.g(i, this.i);
            Object obj = this.g[(i * 2) + this.h];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean m() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.i;
        }
    }

    public RegularImmutableMap(Object obj, Object[] objArr, int i) {
        this.h = obj;
        this.i = objArr;
        this.j = i;
    }

    public static RegularImmutableMap o(int i, Object[] objArr, ImmutableMap.Builder builder) {
        if (i == 0) {
            return (RegularImmutableMap) k;
        }
        if (i == 1) {
            Objects.requireNonNull(objArr[0]);
            Objects.requireNonNull(objArr[1]);
            return new RegularImmutableMap(null, objArr, 1);
        }
        Preconditions.i(i, objArr.length >> 1);
        Object p = p(objArr, i, ImmutableSet.r(i), 0);
        if (p instanceof Object[]) {
            Object[] objArr2 = (Object[]) p;
            ImmutableMap.Builder.DuplicateKey duplicateKey = (ImmutableMap.Builder.DuplicateKey) objArr2[2];
            if (builder != null) {
                builder.f12293c = duplicateKey;
                Object obj = objArr2[0];
                int intValue = ((Integer) objArr2[1]).intValue();
                objArr = Arrays.copyOf(objArr, intValue * 2);
                p = obj;
                i = intValue;
            } else {
                throw duplicateKey.a();
            }
        }
        return new RegularImmutableMap(p, objArr, i);
    }

    public static Object p(Object[] objArr, int i, int i2, int i3) {
        int i4;
        ImmutableMap.Builder.DuplicateKey duplicateKey = null;
        int i5 = 1;
        if (i == 1) {
            Objects.requireNonNull(objArr[i3]);
            Objects.requireNonNull(objArr[i3 ^ 1]);
            return null;
        }
        int i6 = i2 - 1;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            int i7 = 0;
            for (int i8 = 0; i8 < i; i8++) {
                int i9 = (i8 * 2) + i3;
                int i10 = (i7 * 2) + i3;
                Object obj = objArr[i9];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i9 ^ 1];
                Objects.requireNonNull(obj2);
                int b = Hashing.b(obj.hashCode());
                while (true) {
                    int i11 = b & i6;
                    int i12 = bArr[i11] & UByte.MAX_VALUE;
                    if (i12 == 255) {
                        bArr[i11] = (byte) i10;
                        if (i7 < i8) {
                            objArr[i10] = obj;
                            objArr[i10 ^ 1] = obj2;
                        }
                        i7++;
                    } else {
                        if (obj.equals(objArr[i12])) {
                            int i13 = i12 ^ 1;
                            Object obj3 = objArr[i13];
                            Objects.requireNonNull(obj3);
                            duplicateKey = new ImmutableMap.Builder.DuplicateKey(obj, obj2, obj3);
                            objArr[i13] = obj2;
                            break;
                        }
                        b = i11 + 1;
                    }
                }
            }
            if (i7 == i) {
                return bArr;
            }
            return new Object[]{bArr, Integer.valueOf(i7), duplicateKey};
        }
        if (i2 <= 32768) {
            short[] sArr = new short[i2];
            Arrays.fill(sArr, (short) -1);
            int i14 = 0;
            for (int i15 = 0; i15 < i; i15++) {
                int i16 = (i15 * 2) + i3;
                int i17 = (i14 * 2) + i3;
                Object obj4 = objArr[i16];
                Objects.requireNonNull(obj4);
                Object obj5 = objArr[i16 ^ 1];
                Objects.requireNonNull(obj5);
                int b2 = Hashing.b(obj4.hashCode());
                while (true) {
                    int i18 = b2 & i6;
                    int i19 = sArr[i18] & UShort.MAX_VALUE;
                    if (i19 == 65535) {
                        sArr[i18] = (short) i17;
                        if (i14 < i15) {
                            objArr[i17] = obj4;
                            objArr[i17 ^ 1] = obj5;
                        }
                        i14++;
                    } else {
                        if (obj4.equals(objArr[i19])) {
                            int i20 = i19 ^ 1;
                            Object obj6 = objArr[i20];
                            Objects.requireNonNull(obj6);
                            duplicateKey = new ImmutableMap.Builder.DuplicateKey(obj4, obj5, obj6);
                            objArr[i20] = obj5;
                            break;
                        }
                        b2 = i18 + 1;
                    }
                }
            }
            if (i14 == i) {
                return sArr;
            }
            return new Object[]{sArr, Integer.valueOf(i14), duplicateKey};
        }
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        int i21 = 0;
        int i22 = 0;
        while (i21 < i) {
            int i23 = (i21 * 2) + i3;
            int i24 = (i22 * 2) + i3;
            Object obj7 = objArr[i23];
            Objects.requireNonNull(obj7);
            Object obj8 = objArr[i23 ^ i5];
            Objects.requireNonNull(obj8);
            int b3 = Hashing.b(obj7.hashCode());
            while (true) {
                int i25 = b3 & i6;
                int i26 = iArr[i25];
                if (i26 == -1) {
                    iArr[i25] = i24;
                    if (i22 < i21) {
                        objArr[i24] = obj7;
                        objArr[i24 ^ 1] = obj8;
                    }
                    i22++;
                    i4 = i5;
                } else {
                    i4 = i5;
                    if (obj7.equals(objArr[i26])) {
                        int i27 = i26 ^ 1;
                        Object obj9 = objArr[i27];
                        Objects.requireNonNull(obj9);
                        duplicateKey = new ImmutableMap.Builder.DuplicateKey(obj7, obj8, obj9);
                        objArr[i27] = obj8;
                        break;
                    }
                    b3 = i25 + 1;
                    i5 = i4;
                }
            }
            i21++;
            i5 = i4;
        }
        int i28 = i5;
        if (i22 == i) {
            return iArr;
        }
        Integer valueOf = Integer.valueOf(i22);
        Object[] objArr2 = new Object[3];
        objArr2[0] = iArr;
        objArr2[i28] = valueOf;
        objArr2[2] = duplicateKey;
        return objArr2;
    }

    public static Object q(Object obj, Object[] objArr, int i, int i2, Object obj2) {
        if (obj2 != null) {
            if (i == 1) {
                Object obj3 = objArr[i2];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj2)) {
                    Object obj4 = objArr[i2 ^ 1];
                    Objects.requireNonNull(obj4);
                    return obj4;
                }
                return null;
            }
            if (obj != null) {
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    int length = bArr.length - 1;
                    int b = Hashing.b(obj2.hashCode());
                    while (true) {
                        int i3 = b & length;
                        int i4 = bArr[i3] & UByte.MAX_VALUE;
                        if (i4 != 255) {
                            if (obj2.equals(objArr[i4])) {
                                return objArr[i4 ^ 1];
                            }
                            b = i3 + 1;
                        } else {
                            return null;
                        }
                    }
                } else if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    int length2 = sArr.length - 1;
                    int b2 = Hashing.b(obj2.hashCode());
                    while (true) {
                        int i5 = b2 & length2;
                        int i6 = sArr[i5] & UShort.MAX_VALUE;
                        if (i6 != 65535) {
                            if (obj2.equals(objArr[i6])) {
                                return objArr[i6 ^ 1];
                            }
                            b2 = i5 + 1;
                        } else {
                            return null;
                        }
                    }
                } else {
                    int[] iArr = (int[]) obj;
                    int length3 = iArr.length - 1;
                    int b3 = Hashing.b(obj2.hashCode());
                    while (true) {
                        int i7 = b3 & length3;
                        int i8 = iArr[i7];
                        if (i8 == -1) {
                            return null;
                        }
                        if (obj2.equals(objArr[i8])) {
                            return objArr[i8 ^ 1];
                        }
                        b3 = i7 + 1;
                    }
                }
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet c() {
        return new EntrySet(this, this.i, 0, this.j);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet d() {
        return new KeySet(this, new KeysOrValuesAsList(this.i, 0, this.j));
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection e() {
        return new KeysOrValuesAsList(this.i, 1, this.j);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public final Object get(Object obj) {
        Object q = q(this.h, this.i, this.j, 0, obj);
        if (q == null) {
            return null;
        }
        return q;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final boolean h() {
        return false;
    }

    @Override // java.util.Map
    public final int size() {
        return this.j;
    }
}
