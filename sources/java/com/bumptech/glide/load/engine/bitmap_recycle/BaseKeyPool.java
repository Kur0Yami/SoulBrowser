package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.load.engine.bitmap_recycle.Poolable;
import com.bumptech.glide.util.Util;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
abstract class BaseKeyPool<T extends Poolable> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f2236a;

    public BaseKeyPool() {
        char[] cArr = Util.f2497a;
        this.f2236a = new ArrayDeque(20);
    }

    public abstract Poolable a();

    public final Poolable b() {
        Poolable poolable = (Poolable) this.f2236a.poll();
        if (poolable == null) {
            return a();
        }
        return poolable;
    }

    public final void c(Poolable poolable) {
        ArrayDeque arrayDeque = this.f2236a;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(poolable);
        }
    }
}
