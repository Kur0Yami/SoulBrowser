package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractCache<K, V> implements Cache<K, V> {

    /* loaded from: classes3.dex */
    public static final class SimpleStatsCounter implements StatsCounter {

        /* renamed from: a, reason: collision with root package name */
        public final LongAddable f12196a = LongAddables.a();
        public final LongAddable b = LongAddables.a();

        /* renamed from: c, reason: collision with root package name */
        public final LongAddable f12197c = LongAddables.a();
        public final LongAddable d = LongAddables.a();
        public final LongAddable e = LongAddables.a();
        public final LongAddable f = LongAddables.a();

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void a() {
            this.f.a();
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void b() {
            this.b.add(1);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void c(long j) {
            this.d.a();
            this.e.add(j);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void d(long j) {
            this.f12197c.a();
            this.e.add(j);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public final void e() {
            this.f12196a.add(1);
        }
    }

    /* loaded from: classes3.dex */
    public interface StatsCounter {
        void a();

        void b();

        void c(long j);

        void d(long j);

        void e();
    }
}
