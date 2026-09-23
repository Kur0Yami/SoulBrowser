package androidx.datastore.core;

import androidx.datastore.core.SingleProcessDataStore;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CompletableDeferred;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\n"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_T, "msg", "Landroidx/datastore/core/SingleProcessDataStore$Message;", "ex", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
final class SingleProcessDataStore$actor$2 extends Lambda implements Function2<SingleProcessDataStore.Message<Object>, Throwable, Unit> {

    /* renamed from: c, reason: collision with root package name */
    public static final SingleProcessDataStore$actor$2 f962c = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final Unit invoke(SingleProcessDataStore.Message<Object> message, Throwable th) {
        SingleProcessDataStore.Message<Object> msg = message;
        Throwable th2 = th;
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (msg instanceof SingleProcessDataStore.Message.Update) {
            CompletableDeferred completableDeferred = ((SingleProcessDataStore.Message.Update) msg).b;
            if (th2 == null) {
                th2 = new CancellationException("DataStore scope was cancelled before updateData could complete");
            }
            completableDeferred.v(th2);
        }
        return Unit.INSTANCE;
    }
}
