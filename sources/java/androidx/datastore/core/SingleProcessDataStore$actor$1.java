package androidx.datastore.core;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\n"}, d2 = {"<anonymous>", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_T, "it", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED}, k = 3, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
final class SingleProcessDataStore$actor$1 extends Lambda implements Function1<Throwable, Unit> {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SingleProcessDataStore f961c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessDataStore$actor$1(SingleProcessDataStore singleProcessDataStore) {
        super(1);
        this.f961c = singleProcessDataStore;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(Throwable th) {
        Throwable th2 = th;
        if (th2 != null) {
            this.f961c.f.setValue(new Final(th2));
        }
        Object obj = SingleProcessDataStore.j;
        SingleProcessDataStore singleProcessDataStore = this.f961c;
        synchronized (obj) {
            SingleProcessDataStore.i.remove(singleProcessDataStore.c().getAbsolutePath());
        }
        return Unit.INSTANCE;
    }
}
