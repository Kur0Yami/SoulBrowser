package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.LongConsumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class v7 implements m5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21502a;
    public final /* synthetic */ LongConsumer b;

    public /* synthetic */ v7(LongConsumer longConsumer, int i) {
        this.f21502a = i;
        this.b = longConsumer;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void f() {
    }

    private final /* synthetic */ void g() {
    }

    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d) {
        switch (this.f21502a) {
            case 0:
                v3.C();
                throw null;
            default:
                v3.C();
                throw null;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void accept(int i) {
        switch (this.f21502a) {
            case 0:
                v3.J();
                throw null;
            default:
                v3.J();
                throw null;
        }
    }

    @Override // j$.util.stream.m5, j$.util.stream.n5, java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f21502a) {
            case 0:
                this.b.accept(j);
                return;
            default:
                ((v6) this.b).accept(j);
                return;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.f21502a) {
            case 0:
                l((Long) obj);
                return;
            default:
                l((Long) obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21502a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f21502a) {
            case 0:
                return LongConsumer$CC.$default$andThen(this, longConsumer);
            default:
                return LongConsumer$CC.$default$andThen(this, longConsumer);
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void c(long j) {
        int i = this.f21502a;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        switch (this.f21502a) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
        int i = this.f21502a;
    }

    @Override // j$.util.stream.m5
    public final /* synthetic */ void l(Long l) {
        switch (this.f21502a) {
            case 0:
                v3.H(this, l);
                return;
            default:
                v3.H(this, l);
                return;
        }
    }
}
