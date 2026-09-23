package androidx.constraintlayout.core.parser;

import java.util.Iterator;

/* loaded from: classes.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {

    /* loaded from: classes.dex */
    public class CLObjectIterator implements Iterator {

        /* renamed from: c, reason: collision with root package name */
        public CLObject f511c;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            this.f511c.getClass();
            throw null;
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f511c.getClass();
            throw null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Iterator<androidx.constraintlayout.core.parser.CLKey>, java.lang.Object, androidx.constraintlayout.core.parser.CLObject$CLObjectIterator] */
    @Override // java.lang.Iterable
    public final Iterator<CLKey> iterator() {
        ?? obj = new Object();
        obj.f511c = this;
        return obj;
    }
}
