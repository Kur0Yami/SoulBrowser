package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public final class j extends j5 {
    public final /* synthetic */ int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public boolean f21439c;
    public Object d;

    public /* synthetic */ j(n5 n5Var) {
        super(n5Var);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(q8 q8Var, n5 n5Var) {
        super(n5Var);
        this.d = q8Var;
        this.f21439c = true;
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void c(long j) {
        switch (this.b) {
            case 0:
                this.f21439c = false;
                this.d = null;
                this.f21442a.c(-1L);
                return;
            case 1:
                this.f21442a.c(-1L);
                return;
            default:
                this.f21442a.c(-1L);
                return;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.b) {
            case 0:
                n5 n5Var = this.f21442a;
                if (obj == null) {
                    if (this.f21439c) {
                        return;
                    }
                    this.f21439c = true;
                    this.d = null;
                    n5Var.n((n5) null);
                    return;
                }
                Object obj2 = this.d;
                if (obj2 == null || !obj.equals(obj2)) {
                    this.d = obj;
                    n5Var.n((n5) obj);
                    return;
                }
                return;
            case 1:
                Stream stream = (Stream) ((j$.util.p) ((p) this.d).u).apply((j$.util.p) obj);
                if (stream != null) {
                    try {
                        boolean z = this.f21439c;
                        n5 n5Var2 = this.f21442a;
                        if (!z) {
                            ((Stream) stream.sequential()).forEach(n5Var2);
                        } else {
                            Spliterator spliterator = ((Stream) stream.sequential()).spliterator();
                            while (!n5Var2.e() && spliterator.tryAdvance(n5Var2)) {
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            stream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
                if (stream != null) {
                    stream.close();
                    return;
                }
                return;
            default:
                if (this.f21439c) {
                    boolean test = ((q8) this.d).u.test(obj);
                    this.f21439c = test;
                    if (test) {
                        this.f21442a.n((n5) obj);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public boolean e() {
        switch (this.b) {
            case 1:
                this.f21439c = true;
                return this.f21442a.e();
            case 2:
                return !this.f21439c || this.f21442a.e();
            default:
                return super.e();
        }
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public void end() {
        switch (this.b) {
            case 0:
                this.f21439c = false;
                this.d = null;
                this.f21442a.end();
                return;
            default:
                super.end();
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(p pVar, n5 n5Var) {
        super(n5Var);
        this.d = pVar;
    }
}
