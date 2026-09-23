package j$.util;

import j$.util.function.DoubleConsumer$CC;
import j$.util.stream.n5;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class f0 implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21336a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ f0(Consumer consumer, int i) {
        this.f21336a = i;
        this.b = consumer;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        switch (this.f21336a) {
            case 0:
                this.b.accept(Double.valueOf(d));
                return;
            default:
                ((n5) this.b).accept(d);
                return;
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f21336a) {
            case 0:
                return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
            default:
                return DoubleConsumer$CC.$default$andThen(this, doubleConsumer);
        }
    }
}
