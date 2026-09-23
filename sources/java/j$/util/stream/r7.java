package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.DoubleConsumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class r7 implements k5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21486a;
    public final /* synthetic */ DoubleConsumer b;

    public /* synthetic */ r7(DoubleConsumer doubleConsumer, int i) {
        this.f21486a = i;
        this.b = doubleConsumer;
    }

    private final /* synthetic */ void a(long j) {
    }

    private final /* synthetic */ void b(long j) {
    }

    private final /* synthetic */ void f() {
    }

    private final /* synthetic */ void g() {
    }

    @Override // j$.util.stream.k5, j$.util.stream.n5, java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.f21486a) {
            case 0:
                this.b.accept(d);
                return;
            default:
                ((r6) this.b).accept(d);
                return;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void accept(int i) {
        switch (this.f21486a) {
            case 0:
                v3.J();
                throw null;
            default:
                v3.J();
                throw null;
        }
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f21486a) {
            case 0:
                v3.K();
                throw null;
            default:
                v3.K();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        switch (this.f21486a) {
            case 0:
                n((Double) obj);
                return;
            default:
                n((Double) obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21486a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f21486a) {
            case 0:
                return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
            default:
                return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void c(long j) {
        int i = this.f21486a;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        switch (this.f21486a) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
        int i = this.f21486a;
    }

    @Override // j$.util.stream.k5
    public final /* synthetic */ void n(Double d) {
        switch (this.f21486a) {
            case 0:
                v3.D(this, d);
                return;
            default:
                v3.D(this, d);
                return;
        }
    }
}
