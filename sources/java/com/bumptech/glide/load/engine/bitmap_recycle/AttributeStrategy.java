package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.v4.media.a;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes.dex */
class AttributeStrategy implements LruPoolStrategy {

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class Key implements Poolable {

        /* renamed from: a, reason: collision with root package name */
        public final KeyPool f2235a;

        public Key(KeyPool keyPool) {
            this.f2235a = keyPool;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void a() {
            this.f2235a.c(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return (((0 * 31) + 0) * 31) + 0;
        }

        public final String toString() {
            StringBuilder u = a.u("[", 0, 0, "x", "], ");
            u.append((Object) null);
            return u.toString();
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class KeyPool extends BaseKeyPool<Key> {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BaseKeyPool
        public final Poolable a() {
            return new Key(this);
        }
    }

    public final String toString() {
        return "AttributeStrategy:\n  null";
    }
}
