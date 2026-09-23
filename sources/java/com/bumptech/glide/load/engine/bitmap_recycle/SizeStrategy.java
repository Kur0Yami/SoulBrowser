package com.bumptech.glide.load.engine.bitmap_recycle;

import android.support.v4.media.a;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

@RequiresApi
/* loaded from: classes.dex */
final class SizeStrategy implements LruPoolStrategy {

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static final class Key implements Poolable {

        /* renamed from: a, reason: collision with root package name */
        public final KeyPool f2251a;

        public Key(KeyPool keyPool) {
            this.f2251a = keyPool;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.Poolable
        public final void a() {
            this.f2251a.c(this);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Key) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return a.f(0, "[", "]");
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
        return "SizeStrategy:\n  null\n  SortedSizesnull";
    }
}
