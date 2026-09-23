package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.connection.RoutePlanner;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/SequentialExchangeFinder;", "Lokhttp3/internal/connection/ExchangeFinder;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SequentialExchangeFinder implements ExchangeFinder {

    /* renamed from: a, reason: collision with root package name */
    public final RealRoutePlanner f22112a;

    public SequentialExchangeFinder(RealRoutePlanner routePlanner) {
        Intrinsics.checkNotNullParameter(routePlanner, "routePlanner");
        this.f22112a = routePlanner;
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RealConnection a() {
        RoutePlanner.Plan d;
        boolean z;
        RealRoutePlanner realRoutePlanner = this.f22112a;
        IOException iOException = null;
        while (!realRoutePlanner.k.u) {
            try {
                d = realRoutePlanner.d();
            } catch (IOException e) {
                if (iOException == null) {
                    iOException = e;
                } else {
                    ExceptionsKt.addSuppressed(iOException, e);
                }
                if (!realRoutePlanner.a(null)) {
                    throw iOException;
                }
            }
            if (!d.isReady()) {
                RoutePlanner.ConnectResult f22096c = d.getF22096c();
                if (f22096c.b == null && f22096c.f22108c == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    f22096c = d.f();
                }
                RoutePlanner.Plan plan = f22096c.b;
                Throwable th = f22096c.f22108c;
                if (th == null) {
                    if (plan != null) {
                        realRoutePlanner.p.addFirst(plan);
                    }
                } else {
                    throw th;
                }
            }
            return d.getF22105c();
        }
        throw new IOException("Canceled");
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RoutePlanner b() {
        return this.f22112a;
    }
}
