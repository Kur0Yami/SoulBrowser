package androidx.graphics.shapes;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/graphics/shapes/CornerRounding;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CornerRounding {

    /* renamed from: c, reason: collision with root package name */
    public static final CornerRounding f1167c = new CornerRounding(3);

    /* renamed from: a, reason: collision with root package name */
    public final float f1168a;
    public final float b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/graphics/shapes/CornerRounding$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/graphics/shapes/CornerRounding;", "Unrounded", "Landroidx/graphics/shapes/CornerRounding;", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public CornerRounding(float f, float f2) {
        this.f1168a = f;
        this.b = f2;
    }

    public /* synthetic */ CornerRounding(int i) {
        this((i & 1) != 0 ? 0.0f : 1.0f, 0.0f);
    }
}
