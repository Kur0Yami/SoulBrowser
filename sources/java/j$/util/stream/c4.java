package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public final class c4 extends v3 {
    public final /* synthetic */ int h;

    public /* synthetic */ c4(int i) {
        this.h = i;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [j$.util.stream.q4, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [j$.util.stream.q4, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [j$.util.stream.q4, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [j$.util.stream.q4, java.lang.Object] */
    @Override // j$.util.stream.v3
    public final q4 u0() {
        switch (this.h) {
            case 0:
                return new Object();
            case 1:
                return new Object();
            case 2:
                return new Object();
            default:
                return new Object();
        }
    }

    @Override // j$.util.stream.v3, j$.util.stream.n8
    public final Object f(a aVar, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                return c7.SIZED.i(aVar.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(aVar, spliterator);
            case 1:
                return c7.SIZED.i(aVar.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(aVar, spliterator);
            case 2:
                return c7.SIZED.i(aVar.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(aVar, spliterator);
            default:
                return c7.SIZED.i(aVar.m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.f(aVar, spliterator);
        }
    }

    @Override // j$.util.stream.v3, j$.util.stream.n8
    public final Object i(v3 v3Var, Spliterator spliterator) {
        switch (this.h) {
            case 0:
                return c7.SIZED.i(((a) v3Var).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.i(v3Var, spliterator);
            case 1:
                return c7.SIZED.i(((a) v3Var).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.i(v3Var, spliterator);
            case 2:
                return c7.SIZED.i(((a) v3Var).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.i(v3Var, spliterator);
            default:
                return c7.SIZED.i(((a) v3Var).m) ? Long.valueOf(spliterator.getExactSizeIfKnown()) : (Long) super.i(v3Var, spliterator);
        }
    }

    @Override // j$.util.stream.v3, j$.util.stream.n8
    public final int v() {
        switch (this.h) {
            case 0:
                return c7.r;
            case 1:
                return c7.r;
            case 2:
                return c7.r;
            default:
                return c7.r;
        }
    }
}
