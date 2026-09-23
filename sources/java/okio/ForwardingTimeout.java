package okio;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public class ForwardingTimeout extends Timeout {
    public Timeout e;

    public ForwardingTimeout(Timeout delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.e = delegate;
    }

    @Override // okio.Timeout
    public final Timeout a() {
        return this.e.a();
    }

    @Override // okio.Timeout
    public final Timeout b() {
        return this.e.b();
    }

    @Override // okio.Timeout
    public final long c() {
        return this.e.c();
    }

    @Override // okio.Timeout
    public final Timeout d(long j) {
        return this.e.d(j);
    }

    @Override // okio.Timeout
    /* renamed from: e */
    public final boolean getF22221a() {
        return this.e.getF22221a();
    }

    @Override // okio.Timeout
    public final void f() {
        this.e.f();
    }

    @Override // okio.Timeout
    public final Timeout g(long j, TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return this.e.g(j, unit);
    }
}
