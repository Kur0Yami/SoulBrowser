package j$.util;

import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class j extends h implements RandomAccess {
    private static final long serialVersionUID = 1530674583602358482L;

    @Override // j$.util.h, java.util.List
    public final java.util.List subList(int i, int i2) {
        h hVar;
        synchronized (this.b) {
            hVar = new h(this.f21349c.subList(i, i2), this.b);
        }
        return hVar;
    }

    private Object writeReplace() {
        return new h(this.f21349c);
    }
}
