package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class k8 implements n5 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21450a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ k8(Consumer consumer, int i) {
        this.f21450a = i;
        this.b = consumer;
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
        switch (this.f21450a) {
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
        switch (this.f21450a) {
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
        switch (this.f21450a) {
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
    public final void n(Object obj) {
        switch (this.f21450a) {
            case 0:
                ((y6) this.b).n(obj);
                return;
            default:
                this.b.n(obj);
                return;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f21450a) {
            case 0:
                return Consumer$CC.$default$andThen(this, consumer);
            default:
                return Consumer$CC.$default$andThen(this, consumer);
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void c(long j) {
        int i = this.f21450a;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ boolean e() {
        switch (this.f21450a) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
        int i = this.f21450a;
    }
}
