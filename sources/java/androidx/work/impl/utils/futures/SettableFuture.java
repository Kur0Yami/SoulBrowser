package androidx.work.impl.utils.futures;

import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.futures.AbstractFuture;
import com.google.common.util.concurrent.ListenableFuture;

@RestrictTo
/* loaded from: classes.dex */
public final class SettableFuture<V> extends AbstractFuture<V> {
    public final boolean h(Object obj) {
        if (obj == null) {
            obj = AbstractFuture.k;
        }
        if (AbstractFuture.j.b(this, null, obj)) {
            AbstractFuture.b(this);
            return true;
        }
        return false;
    }

    public final boolean i(Throwable th) {
        if (AbstractFuture.j.b(this, null, new AbstractFuture.Failure(th))) {
            AbstractFuture.b(this);
            return true;
        }
        return false;
    }

    public final boolean j(ListenableFuture listenableFuture) {
        AbstractFuture.Failure failure;
        listenableFuture.getClass();
        Object obj = this.f1971c;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (AbstractFuture.j.b(this, null, AbstractFuture.e(listenableFuture))) {
                    AbstractFuture.b(this);
                    return true;
                }
                return false;
            }
            AbstractFuture.SetFuture setFuture = new AbstractFuture.SetFuture(this, listenableFuture);
            if (AbstractFuture.j.b(this, null, setFuture)) {
                try {
                    listenableFuture.k(setFuture, DirectExecutor.f1982c);
                    return true;
                } catch (Throwable th) {
                    try {
                        failure = new AbstractFuture.Failure(th);
                    } catch (Throwable unused) {
                        failure = AbstractFuture.Failure.b;
                    }
                    AbstractFuture.j.b(this, setFuture, failure);
                    return true;
                }
            }
            obj = this.f1971c;
        }
        if (obj instanceof AbstractFuture.Cancellation) {
            listenableFuture.cancel(((AbstractFuture.Cancellation) obj).f1973a);
        }
        return false;
    }
}
