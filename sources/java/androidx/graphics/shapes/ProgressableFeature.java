package androidx.graphics.shapes;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/shapes/ProgressableFeature;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class ProgressableFeature {

    /* renamed from: a, reason: collision with root package name */
    public final float f1176a;
    public final Feature b;

    public ProgressableFeature(float f, Feature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        this.f1176a = f;
        this.b = feature;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressableFeature)) {
            return false;
        }
        ProgressableFeature progressableFeature = (ProgressableFeature) obj;
        return Float.compare(this.f1176a, progressableFeature.f1176a) == 0 && Intrinsics.areEqual(this.b, progressableFeature.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Float.floatToIntBits(this.f1176a) * 31);
    }

    public final String toString() {
        return "ProgressableFeature(progress=" + this.f1176a + ", feature=" + this.b + ')';
    }
}
