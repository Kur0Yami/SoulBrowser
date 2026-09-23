package j$.util.stream;

import j$.util.Collection;
import j$.util.List;
import j$.util.Objects;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class k6 extends c6 {
    public ArrayList d;

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // j$.util.stream.j5, j$.util.stream.n5
    public final void end() {
        List.EL.sort(this.d, this.b);
        long size = this.d.size();
        n5 n5Var = this.f21442a;
        n5Var.c(size);
        if (!this.f21393c) {
            ArrayList arrayList = this.d;
            Objects.requireNonNull(n5Var);
            Collection.EL.a(arrayList, new j$.util.p(7, n5Var));
        } else {
            ArrayList arrayList2 = this.d;
            int size2 = arrayList2.size();
            int i = 0;
            while (i < size2) {
                Object obj = arrayList2.get(i);
                i++;
                if (n5Var.e()) {
                    break;
                } else {
                    n5Var.n((n5) obj);
                }
            }
        }
        n5Var.end();
        this.d = null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.d.add(obj);
    }
}
