package kotlinx.coroutines.debug.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.debug.internal.ConcurrentWeakMap;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010'\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0004\"\b\b\u0001\u0010\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u0002H\u00022\u0006\u0010\u0006\u001a\u0002H\u0003H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "k", "v", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class ConcurrentWeakMap$entries$1 extends Lambda implements Function2<Object, Object, Map.Entry<Object, Object>> {

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentWeakMap$entries$1 f21685c = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final Map.Entry<Object, Object> invoke(Object obj, Object obj2) {
        return new ConcurrentWeakMap.Entry(obj, obj2);
    }
}
