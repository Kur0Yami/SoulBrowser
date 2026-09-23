package okhttp3.internal.platform;

import android.content.Context;
import androidx.startup.Initializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/internal/platform/PlatformInitializer;", "Landroidx/startup/Initializer;", "Lokhttp3/internal/platform/Platform;", "<init>", "()V", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class PlatformInitializer implements Initializer<Platform> {
    @Override // androidx.startup.Initializer
    public final List a() {
        return CollectionsKt.emptyList();
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        ContextAwarePlatform contextAwarePlatform;
        Intrinsics.checkNotNullParameter(context, "context");
        Platform platform = Platform.f22173a;
        Object obj = Platform.f22173a;
        if (obj != null) {
            contextAwarePlatform = (ContextAwarePlatform) obj;
        } else {
            contextAwarePlatform = null;
        }
        if (contextAwarePlatform != null) {
            contextAwarePlatform.a(context);
        }
        return Platform.f22173a;
    }
}
