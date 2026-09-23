package androidx.graphics.shapes;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "it", "Lkotlin/Pair;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class FeatureMappingKt$featureMapper$1$1 extends Lambda implements Function1<Pair<? extends Float, ? extends Float>, CharSequence> {
    static {
        new Lambda(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final CharSequence invoke(Pair<? extends Float, ? extends Float> pair) {
        Pair<? extends Float, ? extends Float> it = pair;
        Intrinsics.checkNotNullParameter(it, "it");
        return it.getFirst().floatValue() + " -> " + it.getSecond().floatValue();
    }
}
