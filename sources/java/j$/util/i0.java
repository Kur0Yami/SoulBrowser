package j$.util;

import j$.util.function.IntConsumer$CC;
import j$.util.stream.n5;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class i0 implements IntConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21353a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ i0(Consumer consumer, int i) {
        this.f21353a = i;
        this.b = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        switch (this.f21353a) {
            case 0:
                this.b.accept(Integer.valueOf(i));
                return;
            default:
                ((n5) this.b).accept(i);
                return;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f21353a) {
            case 0:
                return IntConsumer$CC.$default$andThen(this, intConsumer);
            default:
                return IntConsumer$CC.$default$andThen(this, intConsumer);
        }
    }
}
