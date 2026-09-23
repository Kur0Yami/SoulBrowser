package j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final class l implements Iterator, a0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21358a = 0;
    public final Iterator b;

    public l(m mVar) {
        this.b = mVar.f21362a.iterator();
    }

    public l(s sVar) {
        this.b = sVar.f21362a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f21358a) {
            case 0:
                return this.b.hasNext();
            default:
                return this.b.hasNext();
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f21358a) {
            case 0:
                return this.b.next();
            default:
                return new q((Map.Entry) this.b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f21358a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Iterator, j$.util.a0
    public final void forEachRemaining(Consumer consumer) {
        switch (this.f21358a) {
            case 0:
                j$.com.android.tools.r8.a.F(this.b, consumer);
                return;
            default:
                j$.com.android.tools.r8.a.F(this.b, new p(0, consumer));
                return;
        }
    }
}
