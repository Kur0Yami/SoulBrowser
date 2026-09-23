package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class t7 implements l5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21493a;
    public final /* synthetic */ IntConsumer b;

    public /* synthetic */ t7(IntConsumer intConsumer, int i) {
        this.f21493a = i;
        this.b = intConsumer;
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
        switch (this.f21493a) {
            case 0:
                v3.C();
                throw null;
            default:
                v3.C();
                throw null;
        }
    }

    @Override // j$.util.stream.l5, j$.util.stream.n5
    public final void accept(int i) {
        switch (this.f21493a) {
            case 0:
                this.b.accept(i);
                return;
            default:
                ((t6) this.b).accept(i);
                return;
        }
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j) {
        switch (this.f21493a) {
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
        switch (this.f21493a) {
            case 0:
                d((Integer) obj);
                return;
            default:
                d((Integer) obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21493a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f21493a) {
            case 0:
                return IntConsumer$CC.$default$andThen(this, intConsumer);
            default:
                return IntConsumer$CC.$default$andThen(this, intConsumer);
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void c(long j) {
        int i = this.f21493a;
    }

    @Override // j$.util.stream.l5
    public final /* synthetic */ void d(Integer num) {
        switch (this.f21493a) {
            case 0:
                v3.F(this, num);
                return;
            default:
                v3.F(this, num);
                return;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        switch (this.f21493a) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
        int i = this.f21493a;
    }
}
