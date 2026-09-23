package androidx.graphics.shapes;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/graphics/shapes/RoundedPolygon;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRoundedPolygon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n+ 2 Utils.kt\nandroidx/graphics/shapes/Utils\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,686:1\n108#2,4:687\n108#2,4:691\n108#2,4:695\n1#3:699\n*S KotlinDebug\n*F\n+ 1 RoundedPolygon.kt\nandroidx/graphics/shapes/RoundedPolygon\n*L\n93#1:687,4\n96#1:691,4\n101#1:695,4\n*E\n"})
/* loaded from: classes.dex */
public final class RoundedPolygon {
    public static final Companion e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final List f1179a;
    public final float b;

    /* renamed from: c, reason: collision with root package name */
    public final float f1180c;
    public final List d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/RoundedPolygon$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RoundedPolygon(List features, float f, float f2) {
        List list;
        List list2;
        char c2;
        Cubic cubic;
        List list3;
        Intrinsics.checkNotNullParameter(features, "features");
        this.f1179a = features;
        this.b = f;
        this.f1180c = f2;
        List createListBuilder = CollectionsKt.createListBuilder();
        char c3 = 3;
        Cubic cubic2 = null;
        if (features.size() > 0 && ((Feature) features.get(0)).f1171a.size() == 3) {
            Pair d = ((Cubic) ((Feature) features.get(0)).f1171a.get(1)).d(0.5f);
            Cubic cubic3 = (Cubic) d.component1();
            Cubic cubic4 = (Cubic) d.component2();
            list2 = CollectionsKt.mutableListOf(((Feature) features.get(0)).f1171a.get(0), cubic3);
            list = CollectionsKt.mutableListOf(cubic4, ((Feature) features.get(0)).f1171a.get(2));
        } else {
            list = null;
            list2 = null;
        }
        int size = features.size();
        if (size >= 0) {
            int i = 0;
            Cubic cubic5 = null;
            while (true) {
                if (i == 0 && list != null) {
                    list3 = list;
                } else if (i == this.f1179a.size()) {
                    if (list2 == null) {
                        c2 = c3;
                        break;
                    }
                    list3 = list2;
                } else {
                    list3 = ((Feature) this.f1179a.get(i)).f1171a;
                }
                int size2 = list3.size();
                int i2 = 0;
                while (i2 < size2) {
                    Cubic cubic6 = (Cubic) list3.get(i2);
                    char c4 = c3;
                    float[] fArr = cubic6.f1169a;
                    boolean z = false;
                    if (Math.abs(fArr[0] - cubic6.a()) < 1.0E-4f && Math.abs(fArr[1] - cubic6.b()) < 1.0E-4f) {
                        z = true;
                    }
                    if (!z) {
                        if (cubic5 != null) {
                            createListBuilder.add(cubic5);
                        }
                        if (cubic2 == null) {
                            cubic2 = cubic6;
                            cubic5 = cubic2;
                        } else {
                            cubic5 = cubic6;
                        }
                    } else if (cubic5 != null) {
                        float[] fArr2 = cubic5.f1169a;
                        fArr2[6] = cubic6.a();
                        fArr2[7] = cubic6.b();
                    }
                    i2++;
                    c3 = c4;
                }
                c2 = c3;
                if (i == size) {
                    break;
                }
                i++;
                c3 = c2;
            }
            cubic = cubic2;
            cubic2 = cubic5;
        } else {
            c2 = 3;
            cubic = null;
        }
        if (cubic2 != null && cubic != null) {
            float[] fArr3 = cubic2.f1169a;
            float f3 = fArr3[0];
            float f4 = fArr3[1];
            float f5 = fArr3[2];
            float f6 = fArr3[c2];
            float f7 = fArr3[4];
            float f8 = fArr3[5];
            float[] fArr4 = cubic.f1169a;
            createListBuilder.add(CubicKt.a(f3, f4, f5, f6, f7, f8, fArr4[0], fArr4[1]));
        }
        List build = CollectionsKt.build(createListBuilder);
        this.d = build;
        Object obj = build.get(build.size() - 1);
        int size3 = build.size();
        int i3 = 0;
        while (i3 < size3) {
            Cubic cubic7 = (Cubic) this.d.get(i3);
            Cubic cubic8 = (Cubic) obj;
            if (Math.abs(cubic7.f1169a[0] - cubic8.a()) <= 1.0E-4f && Math.abs(cubic7.f1169a[1] - cubic8.b()) <= 1.0E-4f) {
                i3++;
                obj = cubic7;
            } else {
                throw new IllegalArgumentException("RoundedPolygon must be contiguous, with the anchor points of all curves matching the anchor points of the preceding and succeeding cubics");
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedPolygon)) {
            return false;
        }
        return Intrinsics.areEqual(this.f1179a, ((RoundedPolygon) obj).f1179a);
    }

    public final int hashCode() {
        return this.f1179a.hashCode();
    }

    public final String toString() {
        String joinToString$default;
        String joinToString$default2;
        StringBuilder sb = new StringBuilder("[RoundedPolygon. Cubics = ");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(this.d, null, null, null, 0, null, null, 63, null);
        sb.append(joinToString$default);
        sb.append(" || Features = ");
        joinToString$default2 = CollectionsKt___CollectionsKt.joinToString$default(this.f1179a, null, null, null, 0, null, null, 63, null);
        sb.append(joinToString$default2);
        sb.append(" || Center = (");
        sb.append(this.b);
        sb.append(", ");
        sb.append(this.f1180c);
        sb.append(")]");
        return sb.toString();
    }
}
