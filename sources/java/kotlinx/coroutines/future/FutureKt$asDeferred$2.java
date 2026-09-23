package kotlinx.coroutines.future;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CompletionException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.path.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;

@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u0003\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\b\u0000\u0010\u00032\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u0001H\u0003H\u00032\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0004\b\u0007\u0010\b"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlin.jvm.PlatformType", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "value", "exception", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "invoke", "(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
final class FutureKt$asDeferred$2 extends Lambda implements Function2<Object, Throwable, Object> {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Throwable th) {
        CompletionException completionException;
        Throwable th2 = th;
        try {
            if (th2 != null) {
                if (f.d(th2)) {
                    completionException = f.c(th2);
                } else {
                    completionException = null;
                }
                if (completionException != null) {
                    completionException.getCause();
                    throw null;
                }
                throw null;
            }
            throw null;
        } catch (Throwable th3) {
            CoroutineExceptionHandlerKt.a(EmptyCoroutineContext.INSTANCE, th3);
            return Unit.INSTANCE;
        }
    }
}
