package j$.util.stream;

import j$.util.function.LongConsumer$CC;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class z1 implements LongConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21513a;

    private final void accept$j$$util$stream$Node$OfLong$$ExternalSyntheticLambda0(long j) {
    }

    private final void accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfLong$$ExternalSyntheticLambda0(long j) {
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f21513a;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f21513a) {
            case 0:
                return LongConsumer$CC.$default$andThen(this, longConsumer);
            default:
                return LongConsumer$CC.$default$andThen(this, longConsumer);
        }
    }
}
