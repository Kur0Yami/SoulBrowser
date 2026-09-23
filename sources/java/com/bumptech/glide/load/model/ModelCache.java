package com.bumptech.glide.load.model;

import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public class ModelCache<A, B> {

    /* renamed from: a, reason: collision with root package name */
    public final LruCache f2300a = new LruCache(500);

    /* renamed from: com.bumptech.glide.load.model.ModelCache$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends LruCache<ModelKey<Object>, Object> {
        @Override // com.bumptech.glide.util.LruCache
        public final void h(Object obj, Object obj2) {
            ModelKey modelKey = (ModelKey) obj;
            modelKey.getClass();
            ArrayDeque arrayDeque = ModelKey.b;
            synchronized (arrayDeque) {
                arrayDeque.offer(modelKey);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class ModelKey<A> {
        public static final ArrayDeque b;

        /* renamed from: a, reason: collision with root package name */
        public Object f2301a;

        static {
            char[] cArr = Util.f2497a;
            b = new ArrayDeque(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static ModelKey a(Object obj) {
            ModelKey modelKey;
            ModelKey modelKey2;
            ArrayDeque arrayDeque = b;
            synchronized (arrayDeque) {
                modelKey = (ModelKey) arrayDeque.poll();
                modelKey2 = modelKey;
            }
            if (modelKey == null) {
                modelKey2 = new Object();
            }
            modelKey2.f2301a = obj;
            return modelKey2;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof ModelKey) && this.f2301a.equals(((ModelKey) obj).f2301a)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.f2301a.hashCode();
        }
    }

    public final Object a(Object obj) {
        ModelKey a2 = ModelKey.a(obj);
        Object f = this.f2300a.f(a2);
        ArrayDeque arrayDeque = ModelKey.b;
        synchronized (arrayDeque) {
            arrayDeque.offer(a2);
        }
        return f;
    }

    public final void b(Object obj, Object obj2) {
        this.f2300a.i(ModelKey.a(obj), obj2);
    }
}
