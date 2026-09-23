package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0000\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/SparseArrayCompat;", "E", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSparseArrayCompat.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n+ 2 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n*L\n1#1,273:1\n275#2,9:274\n288#2,5:283\n296#2,5:288\n304#2,8:293\n320#2,9:301\n353#2,40:310\n396#2,2:350\n353#2,47:352\n403#2,3:399\n353#2,40:402\n407#2:442\n412#2,4:443\n419#2:447\n423#2,4:448\n431#2,8:452\n443#2,5:460\n451#2,4:465\n459#2,9:469\n472#2:478\n477#2:479\n459#2,9:480\n482#2,8:489\n493#2,17:497\n513#2,21:514\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n*L\n130#1:274,9\n135#1:283,5\n144#1:288,5\n152#1:293,8\n163#1:301,9\n169#1:310,40\n176#1:350,2\n176#1:352,47\n186#1:399,3\n186#1:402,40\n186#1:442\n191#1:443,4\n205#1:447\n212#1:448,4\n218#1:452,8\n224#1:460,5\n234#1:465,4\n246#1:469,9\n249#1:478\n252#1:479\n252#1:480,9\n257#1:489,8\n263#1:497,17\n271#1:514,21\n*E\n"})
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public /* synthetic */ int[] f474c;
    public /* synthetic */ Object[] f;
    public /* synthetic */ int g;

    public SparseArrayCompat() {
        int i;
        int i2 = 4;
        while (true) {
            i = 40;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (40 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 4;
        this.f474c = new int[i4];
        this.f = new Object[i4];
    }

    public final void a(int i, Object obj) {
        int i2 = this.g;
        if (i2 != 0 && i <= this.f474c[i2 - 1]) {
            d(i, obj);
            return;
        }
        if (i2 >= this.f474c.length) {
            int i3 = (i2 + 1) * 4;
            int i4 = 4;
            while (true) {
                if (i4 >= 32) {
                    break;
                }
                int i5 = (1 << i4) - 12;
                if (i3 <= i5) {
                    i3 = i5;
                    break;
                }
                i4++;
            }
            int i6 = i3 / 4;
            int[] copyOf = Arrays.copyOf(this.f474c, i6);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f474c = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f, i6);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f = copyOf2;
        }
        this.f474c[i2] = i;
        this.f[i2] = obj;
        this.g = i2 + 1;
    }

    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final SparseArrayCompat clone() {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) clone;
        sparseArrayCompat.f474c = (int[]) this.f474c.clone();
        sparseArrayCompat.f = (Object[]) this.f.clone();
        return sparseArrayCompat;
    }

    public final Object c(int i) {
        Object obj;
        Intrinsics.checkNotNullParameter(this, "<this>");
        int a2 = ContainerHelpersKt.a(this.f474c, this.g, i);
        if (a2 >= 0 && (obj = this.f[a2]) != SparseArrayCompatKt.f475a) {
            return obj;
        }
        return null;
    }

    public final void d(int i, Object obj) {
        int a2 = ContainerHelpersKt.a(this.f474c, this.g, i);
        if (a2 >= 0) {
            this.f[a2] = obj;
            return;
        }
        int i2 = ~a2;
        int i3 = this.g;
        if (i2 < i3) {
            Object[] objArr = this.f;
            if (objArr[i2] == SparseArrayCompatKt.f475a) {
                this.f474c[i2] = i;
                objArr[i2] = obj;
                return;
            }
        }
        if (i3 >= this.f474c.length) {
            int i4 = (i3 + 1) * 4;
            int i5 = 4;
            while (true) {
                if (i5 >= 32) {
                    break;
                }
                int i6 = (1 << i5) - 12;
                if (i4 <= i6) {
                    i4 = i6;
                    break;
                }
                i5++;
            }
            int i7 = i4 / 4;
            int[] copyOf = Arrays.copyOf(this.f474c, i7);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.f474c = copyOf;
            Object[] copyOf2 = Arrays.copyOf(this.f, i7);
            Intrinsics.checkNotNullExpressionValue(copyOf2, "copyOf(this, newSize)");
            this.f = copyOf2;
        }
        int i8 = this.g;
        if (i8 - i2 != 0) {
            int[] iArr = this.f474c;
            int i9 = i2 + 1;
            ArraysKt___ArraysJvmKt.copyInto(iArr, iArr, i9, i2, i8);
            Object[] objArr2 = this.f;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i9, i2, this.g);
        }
        this.f474c[i2] = i;
        this.f[i2] = obj;
        this.g++;
    }

    public final String toString() {
        int i = this.g;
        if (i <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i * 28);
        sb.append('{');
        int i2 = this.g;
        for (int i3 = 0; i3 < i2; i3++) {
            if (i3 > 0) {
                sb.append(", ");
            }
            sb.append(this.f474c[i3]);
            sb.append('=');
            Object obj = this.f[i3];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "buffer.toString()");
        return sb2;
    }
}
