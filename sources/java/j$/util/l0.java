package j$.util;

import j$.util.function.LongConsumer$CC;
import j$.util.stream.n5;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class l0 implements LongConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21359a;
    public final /* synthetic */ Consumer b;

    public /* synthetic */ l0(Consumer consumer, int i) {
        this.f21359a = i;
        this.b = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f21359a) {
            case 0:
                this.b.accept(Long.valueOf(j));
                return;
            default:
                ((n5) this.b).accept(j);
                return;
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f21359a) {
            case 0:
                return LongConsumer$CC.$default$andThen(this, longConsumer);
            default:
                return LongConsumer$CC.$default$andThen(this, longConsumer);
        }
    }
}
