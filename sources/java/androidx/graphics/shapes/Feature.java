package androidx.graphics.shapes;

import androidx.collection.FloatFloatPair;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b \u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/graphics/shapes/Feature;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Corner", "Edge", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class Feature {

    /* renamed from: a, reason: collision with root package name */
    public final List f1171a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/Feature$Corner;", "Landroidx/graphics/shapes/Feature;", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Corner extends Feature {
        public final long b;

        /* renamed from: c, reason: collision with root package name */
        public final long f1172c;
        public final boolean d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Corner(List cubics, long j, long j2, boolean z) {
            super(cubics);
            Intrinsics.checkNotNullParameter(cubics, "cubics");
            this.b = j;
            this.f1172c = j2;
            this.d = z;
        }

        @Override // androidx.graphics.shapes.Feature
        public final Feature a(PointTransformer f) {
            Intrinsics.checkNotNullParameter(f, "f");
            List createListBuilder = CollectionsKt.createListBuilder();
            List list = this.f1171a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                createListBuilder.add(((Cubic) list.get(i)).e(f));
            }
            return new Corner(CollectionsKt.build(createListBuilder), PointKt.i(this.b, f), PointKt.i(this.f1172c, f), this.d);
        }

        public final String toString() {
            return "Corner: vertex=" + ((Object) FloatFloatPair.b(this.b)) + ", center=" + ((Object) FloatFloatPair.b(this.f1172c)) + ", convex=" + this.d;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/Feature$Edge;", "Landroidx/graphics/shapes/Feature;", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Edge extends Feature {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Edge(List cubics) {
            super(cubics);
            Intrinsics.checkNotNullParameter(cubics, "cubics");
        }

        @Override // androidx.graphics.shapes.Feature
        public final Feature a(PointTransformer f) {
            Intrinsics.checkNotNullParameter(f, "f");
            List createListBuilder = CollectionsKt.createListBuilder();
            List list = this.f1171a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                createListBuilder.add(((Cubic) list.get(i)).e(f));
            }
            return new Edge(CollectionsKt.build(createListBuilder));
        }

        public final String toString() {
            return "Edge";
        }
    }

    public Feature(List cubics) {
        Intrinsics.checkNotNullParameter(cubics, "cubics");
        this.f1171a = cubics;
    }

    public abstract Feature a(PointTransformer pointTransformer);
}
