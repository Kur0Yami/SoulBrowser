package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class g0 implements o8 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f21421a;
    public Object b;

    @Override // j$.util.stream.n5, java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        v3.C();
        throw null;
    }

    @Override // j$.util.stream.n5
    public /* synthetic */ void accept(int i) {
        v3.J();
        throw null;
    }

    @Override // j$.util.stream.n5, java.util.function.LongConsumer
    public /* synthetic */ void accept(long j) {
        v3.K();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void c(long j) {
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final void n(Object obj) {
        if (this.f21421a) {
            return;
        }
        this.f21421a = true;
        this.b = obj;
    }

    @Override // j$.util.stream.n5
    public final boolean e() {
        return this.f21421a;
    }
}
