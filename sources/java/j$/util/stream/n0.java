package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public abstract class n0 implements n8, o8 {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21458a;

    public /* synthetic */ void accept(double d) {
        v3.C();
        throw null;
    }

    public /* synthetic */ void accept(int i) {
        v3.J();
        throw null;
    }

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
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.n5
    public final /* synthetic */ void end() {
    }

    public n0(boolean z) {
        this.f21458a = z;
    }

    @Override // j$.util.stream.n8
    public final int v() {
        if (this.f21458a) {
            return 0;
        }
        return c7.r;
    }

    public final void a(v3 v3Var, Spliterator spliterator) {
        if (this.f21458a) {
            new o0(v3Var, spliterator, this).invoke();
        } else {
            new p0(v3Var, spliterator, v3Var.w0(this)).invoke();
        }
    }
}
