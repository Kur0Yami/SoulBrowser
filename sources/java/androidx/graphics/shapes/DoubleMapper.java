package androidx.graphics.shapes;

import androidx.collection.MutableFloatList;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/graphics/shapes/DoubleMapper;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DoubleMapper {

    /* renamed from: a, reason: collision with root package name */
    public final MutableFloatList f1170a;
    public final MutableFloatList b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/graphics/shapes/DoubleMapper$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/graphics/shapes/DoubleMapper;", "Identity", "Landroidx/graphics/shapes/DoubleMapper;", "graphics-shapes_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    static {
        Float valueOf = Float.valueOf(0.0f);
        Pair pair = TuplesKt.to(valueOf, valueOf);
        Float valueOf2 = Float.valueOf(0.5f);
        new DoubleMapper(pair, TuplesKt.to(valueOf2, valueOf2));
    }

    public DoubleMapper(Pair... mappings) {
        Intrinsics.checkNotNullParameter(mappings, "mappings");
        this.f1170a = new MutableFloatList(mappings.length);
        this.b = new MutableFloatList(mappings.length);
        int length = mappings.length;
        for (int i = 0; i < length; i++) {
            this.f1170a.c(((Number) mappings[i].getFirst()).floatValue());
            this.b.c(((Number) mappings[i].getSecond()).floatValue());
        }
        FloatMappingKt.b(this.f1170a);
        FloatMappingKt.b(this.b);
    }
}
