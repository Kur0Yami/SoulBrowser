package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/Dispatchers;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Dispatchers {

    /* renamed from: a, reason: collision with root package name */
    public static final DefaultScheduler f21584a = DefaultScheduler.g;
    public static final DefaultIoScheduler b;

    static {
        int i = Unconfined.f;
        b = DefaultIoScheduler.f;
    }
}
