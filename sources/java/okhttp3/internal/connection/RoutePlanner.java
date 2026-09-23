package okhttp3.internal.connection;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.HttpUrl;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lokhttp3/internal/connection/RoutePlanner;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Plan", "ConnectResult", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public interface RoutePlanner {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RoutePlanner$ConnectResult;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final /* data */ class ConnectResult {

        /* renamed from: a, reason: collision with root package name */
        public final Plan f22107a;
        public final Plan b;

        /* renamed from: c, reason: collision with root package name */
        public final Throwable f22108c;

        public /* synthetic */ ConnectResult(Plan plan, ConnectPlan connectPlan, Throwable th, int i) {
            this(plan, (i & 2) != 0 ? null : connectPlan, (i & 4) != 0 ? null : th);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConnectResult)) {
                return false;
            }
            ConnectResult connectResult = (ConnectResult) obj;
            return Intrinsics.areEqual(this.f22107a, connectResult.f22107a) && Intrinsics.areEqual(this.b, connectResult.b) && Intrinsics.areEqual(this.f22108c, connectResult.f22108c);
        }

        public final int hashCode() {
            int hashCode = this.f22107a.hashCode() * 31;
            Plan plan = this.b;
            int hashCode2 = (hashCode + (plan == null ? 0 : plan.hashCode())) * 31;
            Throwable th = this.f22108c;
            return hashCode2 + (th != null ? th.hashCode() : 0);
        }

        public final String toString() {
            return "ConnectResult(plan=" + this.f22107a + ", nextPlan=" + this.b + ", throwable=" + this.f22108c + ')';
        }

        public ConnectResult(Plan plan, Plan plan2, Throwable th) {
            Intrinsics.checkNotNullParameter(plan, "plan");
            this.f22107a = plan;
            this.b = plan2;
            this.f22108c = th;
        }
    }

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lokhttp3/internal/connection/RoutePlanner$Plan;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public interface Plan {
        Plan a();

        RealConnection c();

        void cancel();

        ConnectResult d();

        ConnectResult f();

        boolean isReady();
    }

    boolean a(RealConnection realConnection);

    Address b();

    boolean c(HttpUrl httpUrl);
}
