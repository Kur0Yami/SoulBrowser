package okhttp3.internal.http2.flowcontrol;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/flowcontrol/WindowCounter;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class WindowCounter {

    /* renamed from: a, reason: collision with root package name */
    public final int f22164a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f22165c;

    public WindowCounter(int i) {
        this.f22164a = i;
    }

    public static void b(WindowCounter windowCounter, long j, long j2, int i) {
        if ((i & 1) != 0) {
            j = 0;
        }
        if ((i & 2) != 0) {
            j2 = 0;
        }
        synchronized (windowCounter) {
            try {
                if (j >= 0) {
                    if (j2 >= 0) {
                        long j3 = windowCounter.b + j;
                        windowCounter.b = j3;
                        long j4 = windowCounter.f22165c + j2;
                        windowCounter.f22165c = j4;
                        if (j4 > j3) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized long a() {
        return this.b - this.f22165c;
    }

    public final String toString() {
        return "WindowCounter(streamId=" + this.f22164a + ", total=" + this.b + ", acknowledged=" + this.f22165c + ", unacknowledged=" + a() + ')';
    }
}
