package okio;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokio/Timeout;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeout.kt\nokio/Timeout\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,358:1\n1#2:359\n*E\n"})
/* loaded from: classes4.dex */
public class Timeout {
    public static final Timeout$Companion$NONE$1 d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f22221a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public long f22222c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokio/Timeout$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokio/Timeout;", "NONE", "Lokio/Timeout;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public Timeout a() {
        this.f22221a = false;
        return this;
    }

    public Timeout b() {
        this.f22222c = 0L;
        return this;
    }

    public long c() {
        if (this.f22221a) {
            return this.b;
        }
        throw new IllegalStateException("No deadline");
    }

    public Timeout d(long j) {
        this.f22221a = true;
        this.b = j;
        return this;
    }

    /* renamed from: e, reason: from getter */
    public boolean getF22221a() {
        return this.f22221a;
    }

    public void f() {
        if (!Thread.currentThread().isInterrupted()) {
            if (this.f22221a && this.b - System.nanoTime() <= 0) {
                throw new InterruptedIOException("deadline reached");
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    public Timeout g(long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        if (j >= 0) {
            this.f22222c = unit.toNanos(j);
            return this;
        }
        throw new IllegalArgumentException(a.h(j, "timeout < 0: ").toString());
    }
}
