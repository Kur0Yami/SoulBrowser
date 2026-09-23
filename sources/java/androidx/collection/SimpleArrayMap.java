package androidx.collection;

import android.support.v4.media.a;
import androidx.collection.internal.ContainerHelpersKt;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Landroidx/collection/SimpleArrayMap;", "K", "V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSimpleArrayMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleArrayMap.kt\nandroidx/collection/SimpleArrayMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,769:1\n297#1,5:770\n297#1,5:775\n1#2:780\n*S KotlinDebug\n*F\n+ 1 SimpleArrayMap.kt\nandroidx/collection/SimpleArrayMap\n*L\n276#1:770,5\n291#1:775,5\n*E\n"})
/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {

    /* renamed from: c, reason: collision with root package name */
    public int[] f473c;
    public Object[] f;
    public int g;

    public SimpleArrayMap(int i) {
        int[] iArr;
        Object[] objArr;
        if (i == 0) {
            iArr = ContainerHelpersKt.f476a;
        } else {
            iArr = new int[i];
        }
        this.f473c = iArr;
        if (i == 0) {
            objArr = ContainerHelpersKt.f477c;
        } else {
            objArr = new Object[i << 1];
        }
        this.f = objArr;
    }

    public final int a(Object obj) {
        int i = this.g * 2;
        Object[] objArr = this.f;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (Intrinsics.areEqual(obj, objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final void b(int i) {
        int i2 = this.g;
        int[] iArr = this.f473c;
        if (iArr.length < i) {
            int[] copyOf = Arrays.copyOf(iArr, i);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f473c = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f, i * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f = copyOf2;
        }
        if (this.g == i2) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    public final int c(int i, Object obj) {
        int i2 = this.g;
        if (i2 == 0) {
            return -1;
        }
        int a2 = ContainerHelpersKt.a(this.f473c, i2, i);
        if (a2 < 0 || Intrinsics.areEqual(obj, this.f[a2 << 1])) {
            return a2;
        }
        int i3 = a2 + 1;
        while (i3 < i2 && this.f473c[i3] == i) {
            if (Intrinsics.areEqual(obj, this.f[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = a2 - 1; i4 >= 0 && this.f473c[i4] == i; i4--) {
            if (Intrinsics.areEqual(obj, this.f[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public void clear() {
        if (this.g > 0) {
            this.f473c = ContainerHelpersKt.f476a;
            this.f = ContainerHelpersKt.f477c;
            this.g = 0;
        }
        if (this.g <= 0) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        if (d(obj) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        if (a(obj) >= 0) {
            return true;
        }
        return false;
    }

    public final int d(Object obj) {
        if (obj == null) {
            return e();
        }
        return c(obj.hashCode(), obj);
    }

    public final int e() {
        int i = this.g;
        if (i == 0) {
            return -1;
        }
        int a2 = ContainerHelpersKt.a(this.f473c, i, 0);
        if (a2 < 0 || this.f[a2 << 1] == null) {
            return a2;
        }
        int i2 = a2 + 1;
        while (i2 < i && this.f473c[i2] == 0) {
            if (this.f[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = a2 - 1; i3 >= 0 && this.f473c[i3] == 0; i3--) {
            if (this.f[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof SimpleArrayMap) {
                int i = this.g;
                if (i != ((SimpleArrayMap) obj).g) {
                    return false;
                }
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                for (int i2 = 0; i2 < i; i2++) {
                    Object f = f(i2);
                    Object j = j(i2);
                    Object obj2 = simpleArrayMap.get(f);
                    if (j == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(f)) {
                            return false;
                        }
                    } else if (!Intrinsics.areEqual(j, obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.g != ((Map) obj).size()) {
                return false;
            }
            int i3 = this.g;
            for (int i4 = 0; i4 < i3; i4++) {
                Object f2 = f(i4);
                Object j2 = j(i4);
                Object obj3 = ((Map) obj).get(f2);
                if (j2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(f2)) {
                        return false;
                    }
                } else if (!Intrinsics.areEqual(j2, obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object f(int i) {
        if (i >= 0 && i < this.g) {
            return this.f[i << 1];
        }
        throw new IllegalArgumentException(a.e(i, "Expected index to be within 0..size()-1, but was ").toString());
    }

    public void g(SimpleArrayMap map) {
        Intrinsics.checkNotNullParameter(map, "map");
        int i = map.g;
        b(this.g + i);
        if (this.g == 0) {
            if (i > 0) {
                ArraysKt___ArraysJvmKt.copyInto(map.f473c, this.f473c, 0, 0, i);
                ArraysKt___ArraysJvmKt.copyInto(map.f, this.f, 0, 0, i << 1);
                this.g = i;
                return;
            }
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            put(map.f(i2), map.j(i2));
        }
    }

    public Object get(Object obj) {
        int d = d(obj);
        if (d >= 0) {
            return this.f[(d << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int d = d(obj);
        if (d >= 0) {
            return this.f[(d << 1) + 1];
        }
        return obj2;
    }

    public Object h(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.g)) {
            Object[] objArr = this.f;
            int i3 = i << 1;
            Object obj = objArr[i3 + 1];
            if (i2 <= 1) {
                clear();
                return obj;
            }
            int i4 = i2 - 1;
            int[] iArr = this.f473c;
            int i5 = 8;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                if (i2 > 8) {
                    i5 = i2 + (i2 >> 1);
                }
                int[] copyOf = Arrays.copyOf(iArr, i5);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
                this.f473c = copyOf;
                Object[] copyOf2 = Arrays.copyOf(this.f, i5 << 1);
                Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
                this.f = copyOf2;
                if (i2 == this.g) {
                    if (i > 0) {
                        ArraysKt___ArraysJvmKt.copyInto(iArr, this.f473c, 0, 0, i);
                        ArraysKt___ArraysJvmKt.copyInto(objArr, this.f, 0, 0, i3);
                    }
                    if (i < i4) {
                        int i6 = i + 1;
                        ArraysKt___ArraysJvmKt.copyInto(iArr, this.f473c, i, i6, i2);
                        ArraysKt___ArraysJvmKt.copyInto(objArr, this.f, i3, i6 << 1, i2 << 1);
                    }
                } else {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (i < i4) {
                    int i7 = i + 1;
                    ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, i, i7, i2);
                    Object[] objArr2 = this.f;
                    ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i3, i7 << 1, i2 << 1);
                }
                Object[] objArr3 = this.f;
                int i8 = i4 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            }
            if (i2 == this.g) {
                this.g = i4;
                return obj;
            }
            throw new ConcurrentModificationException();
        }
        throw new IllegalArgumentException(a.e(i, "Expected index to be within 0..size()-1, but was ").toString());
    }

    public int hashCode() {
        int i;
        int[] iArr = this.f473c;
        Object[] objArr = this.f;
        int i2 = this.g;
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            int i6 = iArr[i4];
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i5 += i ^ i6;
            i4++;
            i3 += 2;
        }
        return i5;
    }

    public Object i(int i, Object obj) {
        if (i >= 0 && i < this.g) {
            int i2 = (i << 1) + 1;
            Object[] objArr = this.f;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }
        throw new IllegalArgumentException(a.e(i, "Expected index to be within 0..size()-1, but was ").toString());
    }

    public final boolean isEmpty() {
        if (this.g <= 0) {
            return true;
        }
        return false;
    }

    public final Object j(int i) {
        if (i >= 0 && i < this.g) {
            return this.f[(i << 1) + 1];
        }
        throw new IllegalArgumentException(a.e(i, "Expected index to be within 0..size()-1, but was ").toString());
    }

    public Object put(Object obj, Object obj2) {
        int i;
        int e;
        int i2 = this.g;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        if (obj != null) {
            e = c(i, obj);
        } else {
            e = e();
        }
        if (e >= 0) {
            int i3 = (e << 1) + 1;
            Object[] objArr = this.f;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~e;
        int[] iArr = this.f473c;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            int[] copyOf = Arrays.copyOf(iArr, i5);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f473c = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f, i5 << 1);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f = copyOf2;
            if (i2 != this.g) {
                throw new ConcurrentModificationException();
            }
        }
        if (i4 < i2) {
            int[] iArr2 = this.f473c;
            int i6 = i4 + 1;
            ArraysKt___ArraysJvmKt.copyInto(iArr2, iArr2, i6, i4, i2);
            Object[] objArr2 = this.f;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i6 << 1, i4 << 1, this.g << 1);
        }
        int i7 = this.g;
        if (i2 == i7) {
            int[] iArr3 = this.f473c;
            if (i4 < iArr3.length) {
                iArr3[i4] = i;
                Object[] objArr3 = this.f;
                int i8 = i4 << 1;
                objArr3[i8] = obj;
                objArr3[i8 + 1] = obj2;
                this.g = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 == null) {
            return put(obj, obj2);
        }
        return obj3;
    }

    public Object remove(Object obj) {
        int d = d(obj);
        if (d >= 0) {
            return h(d);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int d = d(obj);
        if (d >= 0) {
            return i(d, obj2);
        }
        return null;
    }

    /* renamed from: size, reason: from getter */
    public final int getG() {
        return this.g;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.g * 28);
        sb.append('{');
        int i = this.g;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object f = f(i2);
            if (f != sb) {
                sb.append(f);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object j = j(i2);
            if (j != sb) {
                sb.append(j);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    public final boolean remove(Object obj, Object obj2) {
        int d = d(obj);
        if (d < 0 || !Intrinsics.areEqual(obj2, j(d))) {
            return false;
        }
        h(d);
        return true;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int d = d(obj);
        if (d < 0 || !Intrinsics.areEqual(obj2, j(d))) {
            return false;
        }
        i(d, obj3);
        return true;
    }

    public SimpleArrayMap(SimpleArrayMap simpleArrayMap) {
        this(0);
        g(simpleArrayMap);
    }
}
