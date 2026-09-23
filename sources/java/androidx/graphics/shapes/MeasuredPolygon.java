package androidx.graphics.shapes;

import androidx.collection.MutableFloatList;
import androidx.graphics.shapes.Feature;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.AbstractList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/graphics/shapes/MeasuredPolygon;", "Lkotlin/collections/AbstractList;", "Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;", "Companion", "MeasuredCubic", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n350#3,7:355\n108#4,4:362\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon\n*L\n169#1:355,7\n182#1:362,4\n*E\n"})
/* loaded from: classes.dex */
public final class MeasuredPolygon extends AbstractList<MeasuredCubic> {
    public static final /* synthetic */ int h = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Measurer f1173c;
    public final ArrayList f;
    public final List g;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/MeasuredPolygon$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n2949#2:354\n2847#2,3:355\n2850#2,6:359\n1#3:358\n108#4,4:365\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$Companion\n*L\n259#1:354\n259#1:355,3\n259#1:359,6\n259#1:358\n275#1:365,4\n*E\n"})
    /* loaded from: classes.dex */
    public static final class Companion {
        public static MeasuredPolygon a(AngleMeasurer measurer, RoundedPolygon polygon) {
            List list;
            Intrinsics.checkNotNullParameter(measurer, "measurer");
            Intrinsics.checkNotNullParameter(polygon, "polygon");
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = polygon.f1179a.size();
            for (int i = 0; i < size; i++) {
                Feature feature = (Feature) polygon.f1179a.get(i);
                List list2 = feature.f1171a;
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    if ((feature instanceof Feature.Corner) && i2 == list2.size() / 2) {
                        arrayList2.add(TuplesKt.to(feature, Integer.valueOf(arrayList.size())));
                    }
                    arrayList.add(list2.get(i2));
                }
            }
            Float valueOf = Float.valueOf(0.0f);
            int collectionSizeOrDefault = CollectionsKt.collectionSizeOrDefault(arrayList, 9);
            if (collectionSizeOrDefault == 0) {
                list = CollectionsKt.listOf(valueOf);
            } else {
                ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault + 1);
                arrayList3.add(valueOf);
                int size3 = arrayList.size();
                int i3 = 0;
                while (i3 < size3) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    float floatValue = valueOf.floatValue();
                    float a2 = measurer.a((Cubic) obj);
                    if (a2 >= 0.0f) {
                        Unit unit = Unit.INSTANCE;
                        valueOf = Float.valueOf(floatValue + a2);
                        arrayList3.add(valueOf);
                    } else {
                        throw new IllegalArgumentException("Measured cubic is expected to be greater or equal to zero");
                    }
                }
                list = arrayList3;
            }
            float floatValue2 = ((Number) CollectionsKt.last(list)).floatValue();
            MutableFloatList mutableFloatList = new MutableFloatList(list.size());
            int size4 = list.size();
            for (int i4 = 0; i4 < size4; i4++) {
                mutableFloatList.c(((Number) list.get(i4)).floatValue() / floatValue2);
            }
            List createListBuilder = CollectionsKt.createListBuilder();
            int size5 = arrayList2.size();
            for (int i5 = 0; i5 < size5; i5++) {
                int intValue = ((Number) ((Pair) arrayList2.get(i5)).getSecond()).intValue();
                createListBuilder.add(new ProgressableFeature((mutableFloatList.a(intValue + 1) + mutableFloatList.a(intValue)) / 2, (Feature) ((Pair) arrayList2.get(i5)).getFirst()));
            }
            return new MeasuredPolygon(measurer, CollectionsKt.build(createListBuilder), arrayList, mutableFloatList);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nPolygonMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Utils.kt\nandroidx/graphics/shapes/Utils\n*L\n1#1,353:1\n1#2:354\n108#3,4:355\n*S KotlinDebug\n*F\n+ 1 PolygonMeasure.kt\nandroidx/graphics/shapes/MeasuredPolygon$MeasuredCubic\n*L\n128#1:355,4\n*E\n"})
    /* loaded from: classes.dex */
    public final class MeasuredCubic {

        /* renamed from: a, reason: collision with root package name */
        public final Cubic f1174a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public float f1175c;
        public float d;
        public final /* synthetic */ MeasuredPolygon e;

        public MeasuredCubic(MeasuredPolygon measuredPolygon, Cubic cubic, float f, float f2) {
            Intrinsics.checkNotNullParameter(cubic, "cubic");
            this.e = measuredPolygon;
            this.f1174a = cubic;
            if (f2 >= f) {
                this.b = measuredPolygon.f1173c.a(cubic);
                this.f1175c = f;
                this.d = f2;
                return;
            }
            throw new IllegalArgumentException("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
        }

        public final Pair a(float f) {
            float coerceIn = RangesKt.coerceIn(f, this.f1175c, this.d);
            float f2 = this.d;
            float f3 = this.f1175c;
            float f4 = (coerceIn - f3) / (f2 - f3);
            MeasuredPolygon measuredPolygon = this.e;
            Measurer measurer = measuredPolygon.f1173c;
            float f5 = f4 * this.b;
            Cubic cubic = this.f1174a;
            float b = measurer.b(cubic, f5);
            if (0.0f <= b && b <= 1.0f) {
                Pair d = cubic.d(b);
                return TuplesKt.to(new MeasuredCubic(measuredPolygon, (Cubic) d.component1(), this.f1175c, coerceIn), new MeasuredCubic(measuredPolygon, (Cubic) d.component2(), coerceIn, this.d));
            }
            throw new IllegalArgumentException("Cubic cut point is expected to be between 0 and 1");
        }

        public final String toString() {
            return "MeasuredCubic(outlineProgress=[" + this.f1175c + " .. " + this.d + "], size=" + this.b + ", cubic=" + this.f1174a + ')';
        }
    }

    public MeasuredPolygon(Measurer measurer, List list, List list2, MutableFloatList mutableFloatList) {
        if (mutableFloatList.b == list2.size() + 1) {
            int i = mutableFloatList.b;
            if (i != 0) {
                float[] fArr = mutableFloatList.f440a;
                int i2 = 0;
                float f = 0.0f;
                if (fArr[0] == 0.0f) {
                    if (i != 0) {
                        if (fArr[i - 1] == 1.0f) {
                            this.f1173c = measurer;
                            this.g = list;
                            ArrayList arrayList = new ArrayList();
                            int size = list2.size();
                            while (i2 < size) {
                                int i3 = i2 + 1;
                                if (mutableFloatList.a(i3) - mutableFloatList.a(i2) > 1.0E-4f) {
                                    arrayList.add(new MeasuredCubic(this, (Cubic) list2.get(i2), f, mutableFloatList.a(i3)));
                                    f = mutableFloatList.a(i3);
                                }
                                i2 = i3;
                            }
                            MeasuredCubic measuredCubic = (MeasuredCubic) arrayList.get(CollectionsKt.getLastIndex(arrayList));
                            float f2 = measuredCubic.f1175c;
                            if (1.0f >= f2) {
                                measuredCubic.f1175c = f2;
                                measuredCubic.d = 1.0f;
                                this.f = arrayList;
                                return;
                            }
                            throw new IllegalArgumentException("endOutlineProgress is expected to be equal or greater than startOutlineProgress");
                        }
                        throw new IllegalArgumentException("Last outline progress value is expected to be one");
                    }
                    throw new NoSuchElementException("FloatList is empty.");
                }
                throw new IllegalArgumentException("First outline progress value is expected to be zero");
            }
            throw new NoSuchElementException("FloatList is empty.");
        }
        throw new IllegalArgumentException("Outline progress size is expected to be the cubics size + 1");
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof MeasuredCubic)) {
            return false;
        }
        return super.contains((MeasuredCubic) obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        return (MeasuredCubic) this.f.get(i);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public final int get_size() {
        return this.f.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof MeasuredCubic)) {
            return -1;
        }
        return super.indexOf((MeasuredCubic) obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof MeasuredCubic)) {
            return -1;
        }
        return super.lastIndexOf((MeasuredCubic) obj);
    }
}
