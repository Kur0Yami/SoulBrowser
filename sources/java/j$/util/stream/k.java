package j$.util.stream;

import java.util.HashSet;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;

/* loaded from: classes2.dex */
public final class k extends j5 {
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public Object f21445c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(a aVar, n5 n5Var, int i) {
        super(n5Var);
        this.b = i;
        this.f21445c = aVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(n5 n5Var) {
        super(n5Var);
        this.b = 0;
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public void end() {
        switch (this.b) {
            case 0:
                this.f21445c = null;
                this.f21442a.end();
                return;
            default:
                super.end();
                return;
        }
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public void c(long j) {
        switch (this.b) {
            case 0:
                this.f21445c = new HashSet();
                this.f21442a.c(-1L);
                return;
            case 1:
            default:
                super.c(j);
                return;
            case 2:
                this.f21442a.c(-1L);
                return;
        }
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.b) {
            case 0:
                if (((Set) this.f21445c).contains(obj)) {
                    return;
                }
                ((Set) this.f21445c).add(obj);
                this.f21442a.accept((n5) obj);
                return;
            case 1:
                ((Consumer) ((p) this.f21445c).u).accept(obj);
                this.f21442a.accept((n5) obj);
                return;
            case 2:
                if (((Predicate) ((p) this.f21445c).u).test(obj)) {
                    this.f21442a.accept((n5) obj);
                    return;
                }
                return;
            case 3:
                this.f21442a.accept((n5) ((Function) ((p) this.f21445c).u).apply(obj));
                return;
            case 4:
                this.f21442a.accept(((ToIntFunction) ((r0) this.f21445c).u).applyAsInt(obj));
                return;
            case 5:
                this.f21442a.accept(((ToLongFunction) ((c1) this.f21445c).u).applyAsLong(obj));
                return;
            default:
                this.f21442a.accept(((ToDoubleFunction) ((u) this.f21445c).u).applyAsDouble(obj));
                return;
        }
    }
}
