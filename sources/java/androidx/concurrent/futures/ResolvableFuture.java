package androidx.concurrent.futures;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public final class ResolvableFuture<V> extends AbstractResolvableFuture<V> {
    public final boolean i(Object obj) {
        if (obj == null) {
            obj = AbstractResolvableFuture.k;
        }
        if (AbstractResolvableFuture.j.b(this, null, obj)) {
            AbstractResolvableFuture.b(this);
            return true;
        }
        return false;
    }
}
