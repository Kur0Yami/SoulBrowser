package com.bumptech.glide.util.pool;

/* loaded from: classes.dex */
public abstract class StateVerifier {

    /* loaded from: classes.dex */
    public static class DebugStateVerifier extends StateVerifier {
        @Override // com.bumptech.glide.util.pool.StateVerifier
        public final void b() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class DefaultStateVerifier extends StateVerifier {

        /* renamed from: a, reason: collision with root package name */
        public volatile boolean f2503a;

        @Override // com.bumptech.glide.util.pool.StateVerifier
        public final void b() {
            if (!this.f2503a) {
            } else {
                throw new IllegalStateException("Already released");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.util.pool.StateVerifier, java.lang.Object] */
    public static StateVerifier a() {
        return new Object();
    }

    public abstract void b();
}
