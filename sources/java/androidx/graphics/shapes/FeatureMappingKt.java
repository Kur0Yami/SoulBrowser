package androidx.graphics.shapes;

import androidx.graphics.shapes.Feature;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;

@Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002*\u0018\b\u0000\u0010\u0002\"\b\u0012\u0004\u0012\u00020\u00010\u00002\b\u0012\u0004\u0012\u00020\u00010\u0000¨\u0006\u0003"}, d2 = {RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/graphics/shapes/ProgressableFeature;", "MeasuredFeatures", "graphics-shapes_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFeatureMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/FeatureMappingKt\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,131:1\n108#2,4:132\n108#2,4:138\n108#2,4:142\n37#3,2:136\n2310#4,14:146\n2310#4,14:161\n1#5:160\n*S KotlinDebug\n*F\n+ 1 FeatureMapping.kt\nandroidx/graphics/shapes/FeatureMappingKt\n*L\n65#1:132,4\n67#1:138,4\n90#1:142,4\n66#1:136,2\n111#1:146,14\n123#1:161,14\n*E\n"})
/* loaded from: classes.dex */
public final class FeatureMappingKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final List a(List f1, List f2) {
        Intrinsics.checkNotNullParameter(f1, "f1");
        Intrinsics.checkNotNullParameter(f2, "f2");
        Iterator<Integer> it = CollectionsKt.getIndices(f2).iterator();
        if (it.hasNext()) {
            IntIterator intIterator = (IntIterator) it;
            int nextInt = intIterator.nextInt();
            if (it.hasNext()) {
                float b = b(((ProgressableFeature) f1.get(0)).b, ((ProgressableFeature) f2.get(nextInt)).b);
                do {
                    int nextInt2 = intIterator.nextInt();
                    float b2 = b(((ProgressableFeature) f1.get(0)).b, ((ProgressableFeature) f2.get(nextInt2)).b);
                    if (Float.compare(b, b2) > 0) {
                        nextInt = nextInt2;
                        b = b2;
                    }
                } while (it.hasNext());
            }
            int size = f1.size();
            int size2 = f2.size();
            List mutableListOf = CollectionsKt.mutableListOf(f2.get(nextInt));
            int i = nextInt;
            for (int i2 = 1; i2 < size; i2++) {
                int i3 = nextInt - (size - i2);
                if (i3 <= i) {
                    i3 += size2;
                }
                Iterator<Integer> it2 = new IntRange(i + 1, i3).iterator();
                if (it2.hasNext()) {
                    IntIterator intIterator2 = (IntIterator) it2;
                    int nextInt3 = intIterator2.nextInt();
                    if (it2.hasNext()) {
                        float b3 = b(((ProgressableFeature) f1.get(i2)).b, ((ProgressableFeature) f2.get(nextInt3 % size2)).b);
                        do {
                            int nextInt4 = intIterator2.nextInt();
                            float b4 = b(((ProgressableFeature) f1.get(i2)).b, ((ProgressableFeature) f2.get(nextInt4 % size2)).b);
                            if (Float.compare(b3, b4) > 0) {
                                nextInt3 = nextInt4;
                                b3 = b4;
                            }
                        } while (it2.hasNext());
                    }
                    i = nextInt3;
                    mutableListOf.add(f2.get(i % size2));
                } else {
                    throw new NoSuchElementException();
                }
            }
            return mutableListOf;
        }
        throw new NoSuchElementException();
    }

    public static final float b(Feature f1, Feature f2) {
        Intrinsics.checkNotNullParameter(f1, "f1");
        Intrinsics.checkNotNullParameter(f2, "f2");
        if ((f1 instanceof Feature.Corner) && (f2 instanceof Feature.Corner) && ((Feature.Corner) f1).d != ((Feature.Corner) f2).d) {
            return Float.MAX_VALUE;
        }
        List list = f1.f1171a;
        List list2 = f1.f1171a;
        float a2 = (((Cubic) CollectionsKt.last(list2)).a() + ((Cubic) CollectionsKt.first(list)).f1169a[0]) / 2.0f;
        float b = (((Cubic) CollectionsKt.last(list2)).b() + ((Cubic) CollectionsKt.first(list2)).f1169a[1]) / 2.0f;
        List list3 = f2.f1171a;
        List list4 = f2.f1171a;
        float a3 = (((Cubic) CollectionsKt.last(list4)).a() + ((Cubic) CollectionsKt.first(list3)).f1169a[0]) / 2.0f;
        float f = a2 - a3;
        float b2 = b - ((((Cubic) CollectionsKt.last(list4)).b() + ((Cubic) CollectionsKt.first(list4)).f1169a[1]) / 2.0f);
        return (b2 * b2) + (f * f);
    }
}
