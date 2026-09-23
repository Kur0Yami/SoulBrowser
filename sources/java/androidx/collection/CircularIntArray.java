package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/collection/CircularIntArray;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCircularIntArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularIntArray.kt\nandroidx/collection/CircularIntArray\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,213:1\n1#2:214\n26#3:215\n26#3:216\n26#3:217\n26#3:218\n26#3:219\n26#3:220\n26#3:221\n*S KotlinDebug\n*F\n+ 1 CircularIntArray.kt\nandroidx/collection/CircularIntArray\n*L\n100#1:215\n113#1:216\n139#1:217\n156#1:218\n169#1:219\n181#1:220\n193#1:221\n*E\n"})
/* loaded from: classes.dex */
public final class CircularIntArray {

    /* renamed from: a, reason: collision with root package name */
    public int[] f437a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f438c;
    public int d;

    public CircularIntArray() {
        int highestOneBit = Integer.bitCount(8) != 1 ? Integer.highestOneBit(7) << 1 : 8;
        this.d = highestOneBit - 1;
        this.f437a = new int[highestOneBit];
    }

    public final void a(int i) {
        int[] iArr = this.f437a;
        int i2 = this.f438c;
        iArr[i2] = i;
        int i3 = this.d & (i2 + 1);
        this.f438c = i3;
        int i4 = this.b;
        if (i3 == i4) {
            int length = iArr.length;
            int i5 = length - i4;
            int i6 = length << 1;
            if (i6 >= 0) {
                int[] iArr2 = new int[i6];
                ArraysKt___ArraysJvmKt.copyInto(iArr, iArr2, 0, i4, length);
                ArraysKt___ArraysJvmKt.copyInto(this.f437a, iArr2, i5, 0, this.b);
                this.f437a = iArr2;
                this.b = 0;
                this.f438c = length;
                this.d = i6 - 1;
                return;
            }
            throw new RuntimeException("Max array capacity exceeded");
        }
    }
}
