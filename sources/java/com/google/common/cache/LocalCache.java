package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Supplier;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.LocalCache;
import com.google.common.collect.AbstractSequentialIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import com.google.common.util.concurrent.Uninterruptibles;
import j$.util.concurrent.ConcurrentMap;
import java.io.Serializable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractQueue;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.logging.Logger;
import kotlin.jvm.internal.LongCompanionObject;
import org.jspecify.annotations.NullUnmarked;

/* JADX INFO: Access modifiers changed from: package-private */
@NullUnmarked
@GwtCompatible
/* loaded from: classes3.dex */
public final class LocalCache<K, V> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, j$.util.concurrent.ConcurrentMap {
    public static final AnonymousClass1 y;
    public static final Queue z;

    /* renamed from: c, reason: collision with root package name */
    public final int f12204c;
    public final int f;
    public final Segment[] g;
    public final int h;
    public final Equivalence i;
    public final Equivalence j;
    public final Strength k;
    public final Strength.AnonymousClass1 l;
    public final long m;
    public final Weigher n;
    public final long o;
    public final Queue p;
    public final RemovalListener q;
    public final Ticker r;
    public final EntryFactory s;
    public final AbstractCache.StatsCounter t;
    public final CacheLoader u;
    public Set v;
    public Collection w;
    public Set x;

    /* renamed from: com.google.common.cache.LocalCache$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements ValueReference<Object, Object> {
        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ReferenceEntry a() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final void b(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final int c() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean d() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object e() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object get() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean isActive() {
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public abstract class AbstractCacheSet<T> extends AbstractSet<T> {
        public AbstractCacheSet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            LocalCache.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return LocalCache.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return LocalCache.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AbstractReferenceEntry<K, V> implements ReferenceEntry<K, V> {
        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry a() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ValueReference b() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public int c() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry d() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void e(ValueReference valueReference) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long f() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void g(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public Object getKey() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry h() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public long i() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void j(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry k() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void l(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void n(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void o(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public void p(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public ReferenceEntry q() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static final class AccessQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        public final AnonymousClass1 f12206c;

        /* renamed from: com.google.common.cache.LocalCache$AccessQueue$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends AbstractReferenceEntry<K, V> {

            /* renamed from: c, reason: collision with root package name */
            public ReferenceEntry f12207c;
            public ReferenceEntry f;

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final ReferenceEntry d() {
                return this.f;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final void g(long j) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final long i() {
                return LongCompanionObject.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final ReferenceEntry k() {
                return this.f12207c;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final void l(ReferenceEntry referenceEntry) {
                this.f12207c = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final void p(ReferenceEntry referenceEntry) {
                this.f = referenceEntry;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.ReferenceEntry, java.lang.Object, com.google.common.cache.LocalCache$AccessQueue$1] */
        public AccessQueue() {
            ?? obj = new Object();
            obj.f12207c = obj;
            obj.f = obj;
            this.f12206c = obj;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            AnonymousClass1 anonymousClass1 = this.f12206c;
            ReferenceEntry referenceEntry = anonymousClass1.f12207c;
            while (referenceEntry != anonymousClass1) {
                ReferenceEntry k = referenceEntry.k();
                AnonymousClass1 anonymousClass12 = LocalCache.y;
                NullEntry nullEntry = NullEntry.f12212c;
                referenceEntry.l(nullEntry);
                referenceEntry.p(nullEntry);
                referenceEntry = k;
            }
            anonymousClass1.f12207c = anonymousClass1;
            anonymousClass1.f = anonymousClass1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (((ReferenceEntry) obj).k() != NullEntry.f12212c) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            AnonymousClass1 anonymousClass1 = this.f12206c;
            if (anonymousClass1.f12207c == anonymousClass1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            AnonymousClass1 anonymousClass1 = this.f12206c;
            ReferenceEntry referenceEntry = anonymousClass1.f12207c;
            if (referenceEntry == anonymousClass1) {
                referenceEntry = null;
            }
            return new AbstractSequentialIterator<ReferenceEntry<Object, Object>>(referenceEntry) { // from class: com.google.common.cache.LocalCache.AccessQueue.2
                @Override // com.google.common.collect.AbstractSequentialIterator
                public final Object a(Object obj) {
                    ReferenceEntry k = ((ReferenceEntry) obj).k();
                    if (k == AccessQueue.this.f12206c) {
                        return null;
                    }
                    return k;
                }
            };
        }

        @Override // java.util.Queue
        public final boolean offer(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry d = referenceEntry.d();
            ReferenceEntry k = referenceEntry.k();
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            d.l(k);
            k.p(d);
            AnonymousClass1 anonymousClass12 = this.f12206c;
            ReferenceEntry referenceEntry2 = anonymousClass12.f;
            referenceEntry2.l(referenceEntry);
            referenceEntry.p(referenceEntry2);
            referenceEntry.l(anonymousClass12);
            anonymousClass12.f = referenceEntry;
            return true;
        }

        @Override // java.util.Queue
        public final Object peek() {
            AnonymousClass1 anonymousClass1 = this.f12206c;
            ReferenceEntry referenceEntry = anonymousClass1.f12207c;
            if (referenceEntry == anonymousClass1) {
                return null;
            }
            return referenceEntry;
        }

        @Override // java.util.Queue
        public final Object poll() {
            AnonymousClass1 anonymousClass1 = this.f12206c;
            ReferenceEntry referenceEntry = anonymousClass1.f12207c;
            if (referenceEntry == anonymousClass1) {
                return null;
            }
            remove(referenceEntry);
            return referenceEntry;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry d = referenceEntry.d();
            ReferenceEntry k = referenceEntry.k();
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            d.l(k);
            k.p(d);
            NullEntry nullEntry = NullEntry.f12212c;
            referenceEntry.l(nullEntry);
            referenceEntry.p(nullEntry);
            if (k != nullEntry) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            AnonymousClass1 anonymousClass1 = this.f12206c;
            int i = 0;
            for (ReferenceEntry referenceEntry = anonymousClass1.f12207c; referenceEntry != anonymousClass1; referenceEntry = referenceEntry.k()) {
                i++;
            }
            return i;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class EntryFactory {

        /* renamed from: c, reason: collision with root package name */
        public static final EntryFactory[] f12208c;
        public static final /* synthetic */ EntryFactory[] f;

        /* JADX INFO: Fake field, exist only in values array */
        EntryFactory EF0;

        static {
            EntryFactory entryFactory = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.1
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    return new StrongEntry(obj, i, referenceEntry);
                }
            };
            EntryFactory entryFactory2 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.2
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
                    ReferenceEntry b = super.b(segment, referenceEntry, referenceEntry2, obj);
                    EntryFactory.a(referenceEntry, b);
                    return b;
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.cache.LocalCache$StrongEntry, com.google.common.cache.ReferenceEntry, com.google.common.cache.LocalCache$StrongAccessEntry] */
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    ?? strongEntry = new StrongEntry(obj, i, referenceEntry);
                    strongEntry.i = LongCompanionObject.MAX_VALUE;
                    AnonymousClass1 anonymousClass1 = LocalCache.y;
                    NullEntry nullEntry = NullEntry.f12212c;
                    strongEntry.j = nullEntry;
                    strongEntry.k = nullEntry;
                    return strongEntry;
                }
            };
            EntryFactory entryFactory3 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.3
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
                    ReferenceEntry b = super.b(segment, referenceEntry, referenceEntry2, obj);
                    EntryFactory.c(referenceEntry, b);
                    return b;
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.cache.LocalCache$StrongEntry, com.google.common.cache.ReferenceEntry, com.google.common.cache.LocalCache$StrongWriteEntry] */
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    ?? strongEntry = new StrongEntry(obj, i, referenceEntry);
                    strongEntry.i = LongCompanionObject.MAX_VALUE;
                    AnonymousClass1 anonymousClass1 = LocalCache.y;
                    NullEntry nullEntry = NullEntry.f12212c;
                    strongEntry.j = nullEntry;
                    strongEntry.k = nullEntry;
                    return strongEntry;
                }
            };
            EntryFactory entryFactory4 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.4
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
                    ReferenceEntry b = super.b(segment, referenceEntry, referenceEntry2, obj);
                    EntryFactory.a(referenceEntry, b);
                    EntryFactory.c(referenceEntry, b);
                    return b;
                }

                /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.cache.LocalCache$StrongEntry, com.google.common.cache.LocalCache$StrongAccessWriteEntry, com.google.common.cache.ReferenceEntry] */
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    ?? strongEntry = new StrongEntry(obj, i, referenceEntry);
                    strongEntry.i = LongCompanionObject.MAX_VALUE;
                    AnonymousClass1 anonymousClass1 = LocalCache.y;
                    NullEntry nullEntry = NullEntry.f12212c;
                    strongEntry.j = nullEntry;
                    strongEntry.k = nullEntry;
                    strongEntry.l = LongCompanionObject.MAX_VALUE;
                    strongEntry.m = nullEntry;
                    strongEntry.n = nullEntry;
                    return strongEntry;
                }
            };
            EntryFactory entryFactory5 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.5
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    return new WeakEntry(segment.l, obj, i, referenceEntry);
                }
            };
            EntryFactory entryFactory6 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.6
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
                    ReferenceEntry b = super.b(segment, referenceEntry, referenceEntry2, obj);
                    EntryFactory.a(referenceEntry, b);
                    return b;
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.ReferenceEntry, com.google.common.cache.LocalCache$WeakAccessEntry, com.google.common.cache.LocalCache$WeakEntry] */
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    ?? weakEntry = new WeakEntry(segment.l, obj, i, referenceEntry);
                    weakEntry.h = LongCompanionObject.MAX_VALUE;
                    AnonymousClass1 anonymousClass1 = LocalCache.y;
                    NullEntry nullEntry = NullEntry.f12212c;
                    weakEntry.i = nullEntry;
                    weakEntry.j = nullEntry;
                    return weakEntry;
                }
            };
            EntryFactory entryFactory7 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.7
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
                    ReferenceEntry b = super.b(segment, referenceEntry, referenceEntry2, obj);
                    EntryFactory.c(referenceEntry, b);
                    return b;
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.LocalCache$WeakWriteEntry, com.google.common.cache.ReferenceEntry, com.google.common.cache.LocalCache$WeakEntry] */
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    ?? weakEntry = new WeakEntry(segment.l, obj, i, referenceEntry);
                    weakEntry.h = LongCompanionObject.MAX_VALUE;
                    AnonymousClass1 anonymousClass1 = LocalCache.y;
                    NullEntry nullEntry = NullEntry.f12212c;
                    weakEntry.i = nullEntry;
                    weakEntry.j = nullEntry;
                    return weakEntry;
                }
            };
            EntryFactory entryFactory8 = new EntryFactory() { // from class: com.google.common.cache.LocalCache.EntryFactory.8
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
                    ReferenceEntry b = super.b(segment, referenceEntry, referenceEntry2, obj);
                    EntryFactory.a(referenceEntry, b);
                    EntryFactory.c(referenceEntry, b);
                    return b;
                }

                /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.LocalCache$WeakAccessWriteEntry, com.google.common.cache.ReferenceEntry, com.google.common.cache.LocalCache$WeakEntry] */
                @Override // com.google.common.cache.LocalCache.EntryFactory
                public final ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry) {
                    ?? weakEntry = new WeakEntry(segment.l, obj, i, referenceEntry);
                    weakEntry.h = LongCompanionObject.MAX_VALUE;
                    AnonymousClass1 anonymousClass1 = LocalCache.y;
                    NullEntry nullEntry = NullEntry.f12212c;
                    weakEntry.i = nullEntry;
                    weakEntry.j = nullEntry;
                    weakEntry.k = LongCompanionObject.MAX_VALUE;
                    weakEntry.l = nullEntry;
                    weakEntry.m = nullEntry;
                    return weakEntry;
                }
            };
            f = new EntryFactory[]{entryFactory, entryFactory2, entryFactory3, entryFactory4, entryFactory5, entryFactory6, entryFactory7, entryFactory8};
            f12208c = new EntryFactory[]{entryFactory, entryFactory2, entryFactory3, entryFactory4, entryFactory5, entryFactory6, entryFactory7, entryFactory8};
        }

        public static void a(ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2) {
            referenceEntry2.g(referenceEntry.i());
            ReferenceEntry d = referenceEntry.d();
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            d.l(referenceEntry2);
            referenceEntry2.p(d);
            ReferenceEntry k = referenceEntry.k();
            referenceEntry2.l(k);
            k.p(referenceEntry2);
            NullEntry nullEntry = NullEntry.f12212c;
            referenceEntry.l(nullEntry);
            referenceEntry.p(nullEntry);
        }

        public static void c(ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2) {
            referenceEntry2.j(referenceEntry.f());
            ReferenceEntry q = referenceEntry.q();
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            q.n(referenceEntry2);
            referenceEntry2.o(q);
            ReferenceEntry h = referenceEntry.h();
            referenceEntry2.n(h);
            h.o(referenceEntry2);
            NullEntry nullEntry = NullEntry.f12212c;
            referenceEntry.n(nullEntry);
            referenceEntry.o(nullEntry);
        }

        public static EntryFactory valueOf(String str) {
            return (EntryFactory) Enum.valueOf(EntryFactory.class, str);
        }

        public static EntryFactory[] values() {
            return (EntryFactory[]) f.clone();
        }

        public ReferenceEntry b(Segment segment, ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj) {
            return d(segment, obj, referenceEntry.c(), referenceEntry2);
        }

        public abstract ReferenceEntry d(Segment segment, Object obj, int i, ReferenceEntry referenceEntry);
    }

    /* loaded from: classes3.dex */
    public final class EntryIterator extends LocalCache<K, V>.HashIterator<Map.Entry<K, V>> {
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends LocalCache<K, V>.AbstractCacheSet<Map.Entry<K, V>> {
        public EntrySet() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            LocalCache localCache;
            Object obj2;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || (obj2 = (localCache = LocalCache.this).get(key)) == null || !localCache.j.d(entry.getValue(), obj2)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new HashIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || !LocalCache.this.remove(key, entry.getValue())) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public abstract class HashIterator<T> implements Iterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public int f12209c;
        public int f = -1;
        public Segment g;
        public AtomicReferenceArray h;
        public ReferenceEntry i;
        public WriteThroughEntry j;
        public WriteThroughEntry k;

        public HashIterator() {
            this.f12209c = LocalCache.this.g.length - 1;
            a();
        }

        public final void a() {
            this.j = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i = this.f12209c;
                if (i >= 0) {
                    Segment[] segmentArr = LocalCache.this.g;
                    this.f12209c = i - 1;
                    Segment segment = segmentArr[i];
                    this.g = segment;
                    if (segment.f != 0) {
                        this.h = this.g.j;
                        this.f = r0.length() - 1;
                        if (e()) {
                            return;
                        }
                    }
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        
            r6.j = new com.google.common.cache.LocalCache.WriteThroughEntry(r0, r3, r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
        
            r6.g.l();
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean b(com.google.common.cache.ReferenceEntry r7) {
            /*
                r6 = this;
                com.google.common.cache.LocalCache r0 = com.google.common.cache.LocalCache.this
                com.google.common.base.Ticker r1 = r0.r     // Catch: java.lang.Throwable -> L37
                long r1 = r1.a()     // Catch: java.lang.Throwable -> L37
                java.lang.Object r3 = r7.getKey()     // Catch: java.lang.Throwable -> L37
                java.lang.Object r4 = r7.getKey()     // Catch: java.lang.Throwable -> L37
                r5 = 0
                if (r4 != 0) goto L14
                goto L27
            L14:
                com.google.common.cache.LocalCache$ValueReference r4 = r7.b()     // Catch: java.lang.Throwable -> L37
                java.lang.Object r4 = r4.get()     // Catch: java.lang.Throwable -> L37
                if (r4 != 0) goto L1f
                goto L27
            L1f:
                boolean r7 = r0.d(r7, r1)     // Catch: java.lang.Throwable -> L37
                if (r7 == 0) goto L26
                goto L27
            L26:
                r5 = r4
            L27:
                if (r5 == 0) goto L39
                com.google.common.cache.LocalCache$WriteThroughEntry r7 = new com.google.common.cache.LocalCache$WriteThroughEntry     // Catch: java.lang.Throwable -> L37
                r7.<init>(r3, r5)     // Catch: java.lang.Throwable -> L37
                r6.j = r7     // Catch: java.lang.Throwable -> L37
                com.google.common.cache.LocalCache$Segment r7 = r6.g
                r7.l()
                r7 = 1
                return r7
            L37:
                r7 = move-exception
                goto L40
            L39:
                com.google.common.cache.LocalCache$Segment r7 = r6.g
                r7.l()
                r7 = 0
                return r7
            L40:
                com.google.common.cache.LocalCache$Segment r0 = r6.g
                r0.l()
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.HashIterator.b(com.google.common.cache.ReferenceEntry):boolean");
        }

        public final WriteThroughEntry c() {
            WriteThroughEntry writeThroughEntry = this.j;
            if (writeThroughEntry != null) {
                this.k = writeThroughEntry;
                a();
                return this.k;
            }
            throw new NoSuchElementException();
        }

        public final boolean d() {
            ReferenceEntry referenceEntry = this.i;
            if (referenceEntry == null) {
                return false;
            }
            while (true) {
                this.i = referenceEntry.a();
                ReferenceEntry referenceEntry2 = this.i;
                if (referenceEntry2 != null) {
                    if (b(referenceEntry2)) {
                        return true;
                    }
                    referenceEntry = this.i;
                } else {
                    return false;
                }
            }
        }

        public final boolean e() {
            while (true) {
                int i = this.f;
                if (i >= 0) {
                    AtomicReferenceArray atomicReferenceArray = this.h;
                    this.f = i - 1;
                    ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i);
                    this.i = referenceEntry;
                    if (referenceEntry != null && (b(referenceEntry) || d())) {
                        return true;
                    }
                } else {
                    return false;
                }
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.j != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            return c();
        }

        @Override // java.util.Iterator
        public final void remove() {
            boolean z;
            if (this.k != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.l(z);
            LocalCache.this.remove(this.k.f12223c);
            this.k = null;
        }
    }

    /* loaded from: classes3.dex */
    public final class KeyIterator extends LocalCache<K, V>.HashIterator<K> {
        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public final Object next() {
            return c().f12223c;
        }
    }

    /* loaded from: classes3.dex */
    public final class KeySet extends LocalCache<K, V>.AbstractCacheSet<K> {
        public KeySet() {
            super();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return LocalCache.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new HashIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (LocalCache.this.remove(obj) != null) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static final class LoadingSerializationProxy<K, V> extends ManualSerializationProxy<K, V> implements LoadingCache<K, V> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            throw null;
        }

        @Override // com.google.common.cache.LoadingCache
        public final Object get(Object obj) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadingValueReference<K, V> implements ValueReference<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public volatile ValueReference f12210c;
        public final SettableFuture f;
        public final Stopwatch g;

        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, com.google.common.util.concurrent.SettableFuture] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.base.Stopwatch, java.lang.Object] */
        public LoadingValueReference() {
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            this.f = new Object();
            this.g = new Object();
            this.f12210c = anonymousClass1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ReferenceEntry a() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final void b(Object obj) {
            if (obj != null) {
                this.f.n(obj);
            } else {
                this.f12210c = LocalCache.y;
            }
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final int c() {
            return this.f12210c.c();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean d() {
            return true;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object e() {
            return Uninterruptibles.a(this.f);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return this;
        }

        /* JADX WARN: Type inference failed for: r6v6, types: [com.google.common.cache.b] */
        public final ListenableFuture g(Object obj, CacheLoader cacheLoader) {
            ListenableFuture c2;
            try {
                Stopwatch stopwatch = this.g;
                Preconditions.m(!stopwatch.f12187a, "This stopwatch is already running.");
                stopwatch.f12187a = true;
                stopwatch.b = System.nanoTime();
                Object obj2 = this.f12210c.get();
                if (obj2 == null) {
                    Object b = cacheLoader.b(obj);
                    if (this.f.n(b)) {
                        return this.f;
                    }
                    return Futures.d(b);
                }
                ListenableFuture c3 = cacheLoader.c(obj, obj2);
                if (c3 == null) {
                    return Futures.d(null);
                }
                return Futures.e(c3, new Function() { // from class: com.google.common.cache.b
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj3) {
                        LocalCache.LoadingValueReference.this.f.n(obj3);
                        return obj3;
                    }
                });
            } catch (Throwable th) {
                if (this.f.o(th)) {
                    c2 = this.f;
                } else {
                    c2 = Futures.c(th);
                }
                if (th instanceof InterruptedException) {
                    Thread.currentThread().interrupt();
                }
                return c2;
            }
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object get() {
            return this.f12210c.get();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean isActive() {
            return this.f12210c.isActive();
        }
    }

    /* loaded from: classes3.dex */
    public static class LocalLoadingCache<K, V> extends LocalManualCache<K, V> implements LoadingCache<K, V> {
        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            try {
                return get(obj);
            } catch (ExecutionException e) {
                throw new RuntimeException(e.getCause());
            }
        }

        @Override // com.google.common.cache.LoadingCache
        public final Object get(Object obj) {
            ReferenceEntry i;
            LocalCache localCache = this.f12211c;
            CacheLoader cacheLoader = localCache.u;
            obj.getClass();
            int c2 = localCache.c(obj);
            Segment e = localCache.e(c2);
            e.getClass();
            cacheLoader.getClass();
            try {
                try {
                    if (e.f != 0 && (i = e.i(c2, obj)) != null) {
                        long a2 = e.f12213c.r.a();
                        Object j = e.j(i, a2);
                        if (j != null) {
                            e.o(i, a2);
                            e.r.e();
                            e.f12213c.getClass();
                            return j;
                        }
                        ValueReference b = i.b();
                        if (b.d()) {
                            return e.y(i, obj, b);
                        }
                    }
                    return e.k(obj, c2, cacheLoader);
                } catch (ExecutionException e2) {
                    Throwable cause = e2.getCause();
                    if (!(cause instanceof Error)) {
                        if (cause instanceof RuntimeException) {
                            throw new RuntimeException(cause);
                        }
                        throw e2;
                    }
                    throw new Error((Error) cause);
                }
            } finally {
                e.l();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class LocalManualCache<K, V> implements Cache<K, V>, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final LocalCache f12211c;

        /* renamed from: com.google.common.cache.LocalCache$LocalManualCache$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends CacheLoader<Object, Object> {
            @Override // com.google.common.cache.CacheLoader
            public final Object b(Object obj) {
                throw null;
            }
        }

        public LocalManualCache(LocalCache localCache) {
            this.f12211c = localCache;
        }
    }

    /* loaded from: classes3.dex */
    public static class ManualSerializationProxy<K, V> extends ForwardingCache<K, V> implements Serializable {
        @Override // com.google.common.cache.ForwardingCache, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.cache.ForwardingCache
        /* renamed from: h0 */
        public final Cache e0() {
            return null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class NullEntry implements ReferenceEntry<Object, Object> {

        /* renamed from: c, reason: collision with root package name */
        public static final NullEntry f12212c;
        public static final /* synthetic */ NullEntry[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.cache.LocalCache$NullEntry] */
        static {
            ?? r0 = new Enum("INSTANCE", 0);
            f12212c = r0;
            f = new NullEntry[]{r0};
        }

        public static NullEntry valueOf(String str) {
            return (NullEntry) Enum.valueOf(NullEntry.class, str);
        }

        public static NullEntry[] values() {
            return (NullEntry[]) f.clone();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ReferenceEntry a() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ValueReference b() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final int c() {
            return 0;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ReferenceEntry d() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void e(ValueReference valueReference) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final long f() {
            return 0L;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void g(long j) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final Object getKey() {
            return null;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ReferenceEntry h() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final long i() {
            return 0L;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void j(long j) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ReferenceEntry k() {
            return this;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void l(ReferenceEntry referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void n(ReferenceEntry referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void o(ReferenceEntry referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void p(ReferenceEntry referenceEntry) {
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ReferenceEntry q() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Segment<K, V> extends ReentrantLock {

        /* renamed from: c, reason: collision with root package name */
        public final LocalCache f12213c;
        public volatile int f;
        public long g;
        public int h;
        public int i;
        public volatile AtomicReferenceArray j;
        public final long k;
        public final ReferenceQueue l;
        public final ReferenceQueue m;
        public final AbstractQueue n;
        public final AtomicInteger o = new AtomicInteger();
        public final AbstractQueue p;
        public final AbstractQueue q;
        public final AbstractCache.StatsCounter r;

        public Segment(LocalCache localCache, int i, long j, AbstractCache.StatsCounter statsCounter) {
            ReferenceQueue referenceQueue;
            Collection collection;
            Collection collection2;
            Collection collection3;
            this.f12213c = localCache;
            this.k = j;
            statsCounter.getClass();
            this.r = statsCounter;
            AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i);
            int length = (atomicReferenceArray.length() * 3) / 4;
            this.i = length;
            if (localCache.n == CacheBuilder.OneWeigher.f12201c && length == j) {
                this.i = length + 1;
            }
            this.j = atomicReferenceArray;
            Strength strength = localCache.k;
            Strength.AnonymousClass1 anonymousClass1 = Strength.f12215c;
            if (strength != anonymousClass1) {
                referenceQueue = new ReferenceQueue();
            } else {
                referenceQueue = null;
            }
            this.l = referenceQueue;
            this.m = localCache.l != anonymousClass1 ? new ReferenceQueue() : null;
            if (localCache.a()) {
                collection = new ConcurrentLinkedQueue();
            } else {
                collection = LocalCache.z;
            }
            this.n = (AbstractQueue) collection;
            if (localCache.b()) {
                collection2 = new WriteQueue();
            } else {
                collection2 = LocalCache.z;
            }
            this.p = (AbstractQueue) collection2;
            if (localCache.a()) {
                collection3 = new AccessQueue();
            } else {
                collection3 = LocalCache.z;
            }
            this.q = (AbstractQueue) collection3;
        }

        public final ReferenceEntry a(ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2) {
            Object key = referenceEntry.getKey();
            if (key != null) {
                ValueReference b = referenceEntry.b();
                Object obj = b.get();
                if (obj == null && b.isActive()) {
                    return null;
                }
                ReferenceEntry b2 = this.f12213c.s.b(this, referenceEntry, referenceEntry2, key);
                b2.e(b.f(this.m, obj, b2));
                return b2;
            }
            return null;
        }

        public final void b() {
            while (true) {
                ReferenceEntry referenceEntry = (ReferenceEntry) this.n.poll();
                if (referenceEntry != null) {
                    AbstractQueue abstractQueue = this.q;
                    if (abstractQueue.contains(referenceEntry)) {
                        abstractQueue.add(referenceEntry);
                    }
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x003f, code lost:
        
            r1.h++;
            r2 = r1.s(r3, r3, r3.getKey(), r3.b().get(), r3.b(), r7);
            r3 = r1.f - 1;
            r11.set(r12, r2);
            r1.f = r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x00f8, code lost:
        
            if (r1.isHeldByCurrentThread() == false) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00fa, code lost:
        
            r1.u();
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x011a, code lost:
        
            r10 = r10 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0107, code lost:
        
            if (r1.isHeldByCurrentThread() == false) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0117, code lost:
        
            if (r1.isHeldByCurrentThread() == false) goto L44;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c() {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.c():void");
        }

        public final void d(Object obj, Object obj2, int i, RemovalCause removalCause) {
            this.g -= i;
            if (removalCause.a()) {
                this.r.a();
            }
            LocalCache localCache = this.f12213c;
            if (localCache.p != LocalCache.z) {
                new AbstractMap.SimpleImmutableEntry(obj, obj2);
                localCache.p.getClass();
            }
        }

        public final void e(ReferenceEntry referenceEntry) {
            if (this.f12213c.a()) {
                b();
                long c2 = referenceEntry.b().c();
                long j = this.k;
                RemovalCause removalCause = RemovalCause.i;
                if (c2 > j && !q(referenceEntry, referenceEntry.c(), removalCause)) {
                    throw new AssertionError();
                }
                while (this.g > j) {
                    for (ReferenceEntry referenceEntry2 : this.q) {
                        if (referenceEntry2.b().c() > 0) {
                            if (!q(referenceEntry2, referenceEntry2.c(), removalCause)) {
                                throw new AssertionError();
                            }
                        }
                    }
                    throw new AssertionError();
                }
            }
        }

        public final void f() {
            AtomicReferenceArray atomicReferenceArray = this.j;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.f;
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
            this.i = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i2);
                if (referenceEntry != null) {
                    ReferenceEntry a2 = referenceEntry.a();
                    int c2 = referenceEntry.c() & length2;
                    if (a2 == null) {
                        atomicReferenceArray2.set(c2, referenceEntry);
                    } else {
                        ReferenceEntry referenceEntry2 = referenceEntry;
                        while (a2 != null) {
                            int c3 = a2.c() & length2;
                            if (c3 != c2) {
                                referenceEntry2 = a2;
                                c2 = c3;
                            }
                            a2 = a2.a();
                        }
                        atomicReferenceArray2.set(c2, referenceEntry2);
                        while (referenceEntry != referenceEntry2) {
                            int c4 = referenceEntry.c() & length2;
                            ReferenceEntry a3 = a(referenceEntry, (ReferenceEntry) atomicReferenceArray2.get(c4));
                            if (a3 != null) {
                                atomicReferenceArray2.set(c4, a3);
                            } else {
                                p(referenceEntry);
                                i--;
                            }
                            referenceEntry = referenceEntry.a();
                        }
                    }
                }
            }
            this.j = atomicReferenceArray2;
            this.f = i;
        }

        public final void g(long j) {
            ReferenceEntry referenceEntry;
            RemovalCause removalCause;
            ReferenceEntry referenceEntry2;
            b();
            do {
                referenceEntry = (ReferenceEntry) this.p.peek();
                removalCause = RemovalCause.h;
                LocalCache localCache = this.f12213c;
                if (referenceEntry == null || !localCache.d(referenceEntry, j)) {
                    do {
                        referenceEntry2 = (ReferenceEntry) this.q.peek();
                        if (referenceEntry2 == null || !localCache.d(referenceEntry2, j)) {
                            return;
                        }
                    } while (q(referenceEntry2, referenceEntry2.c(), removalCause));
                    throw new AssertionError();
                }
            } while (q(referenceEntry, referenceEntry.c(), removalCause));
            throw new AssertionError();
        }

        public final Object h(Object obj, int i, LoadingValueReference loadingValueReference, ListenableFuture listenableFuture) {
            Object obj2;
            long j;
            AbstractCache.StatsCounter statsCounter = this.r;
            long j2 = 0;
            try {
                obj2 = Uninterruptibles.a(listenableFuture);
            } catch (Throwable th) {
                th = th;
                obj2 = null;
            }
            try {
                if (obj2 != null) {
                    Stopwatch stopwatch = loadingValueReference.g;
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    if (stopwatch.f12187a) {
                        j = System.nanoTime() - stopwatch.b;
                    } else {
                        j = 0;
                    }
                    statsCounter.d(timeUnit.convert(j, timeUnit));
                    w(obj, i, loadingValueReference, obj2);
                    return obj2;
                }
                throw new RuntimeException("CacheLoader returned null for key " + obj + ".");
            } catch (Throwable th2) {
                th = th2;
                if (obj2 == null) {
                    Stopwatch stopwatch2 = loadingValueReference.g;
                    TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
                    if (stopwatch2.f12187a) {
                        j2 = System.nanoTime() - stopwatch2.b;
                    }
                    statsCounter.c(timeUnit2.convert(j2, timeUnit2));
                    lock();
                    try {
                        AtomicReferenceArray atomicReferenceArray = this.j;
                        int length = (atomicReferenceArray.length() - 1) & i;
                        ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                        ReferenceEntry referenceEntry2 = referenceEntry;
                        while (true) {
                            if (referenceEntry2 == null) {
                                break;
                            }
                            Object key = referenceEntry2.getKey();
                            if (referenceEntry2.c() == i && key != null && this.f12213c.i.d(obj, key)) {
                                if (referenceEntry2.b() == loadingValueReference) {
                                    if (loadingValueReference.f12210c.isActive()) {
                                        referenceEntry2.e(loadingValueReference.f12210c);
                                    } else {
                                        atomicReferenceArray.set(length, r(referenceEntry, referenceEntry2));
                                    }
                                }
                            } else {
                                referenceEntry2 = referenceEntry2.a();
                            }
                        }
                        unlock();
                        u();
                    } catch (Throwable th3) {
                        unlock();
                        u();
                        throw th3;
                    }
                }
                throw th;
            }
        }

        public final ReferenceEntry i(int i, Object obj) {
            for (ReferenceEntry referenceEntry = (ReferenceEntry) this.j.get((r0.length() - 1) & i); referenceEntry != null; referenceEntry = referenceEntry.a()) {
                if (referenceEntry.c() == i) {
                    Object key = referenceEntry.getKey();
                    if (key == null) {
                        x();
                    } else if (this.f12213c.i.d(obj, key)) {
                        return referenceEntry;
                    }
                }
            }
            return null;
        }

        public final Object j(ReferenceEntry referenceEntry, long j) {
            if (referenceEntry.getKey() == null) {
                x();
                return null;
            }
            Object obj = referenceEntry.b().get();
            if (obj == null) {
                x();
                return null;
            }
            if (this.f12213c.d(referenceEntry, j)) {
                if (!tryLock()) {
                    return null;
                }
                try {
                    g(j);
                    return null;
                } finally {
                    unlock();
                }
            }
            return obj;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0092, code lost:
        
            if (r6 == false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0094, code lost:
        
            r11 = new com.google.common.cache.LocalCache.LoadingValueReference();
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0099, code lost:
        
            if (r10 != null) goto L32;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x009b, code lost:
        
            r3 = r16.f12213c.s;
            r17.getClass();
            r10 = r3.d(r16, r17, r18, r9);
            r10.e(r11);
            r7.set(r8, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x00ad, code lost:
        
            r10.e(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x00b0, code lost:
        
            unlock();
            u();
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x00b6, code lost:
        
            if (r6 == false) goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x00d8, code lost:
        
            return y(r10, r17, r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00b8, code lost:
        
            monitor-enter(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00bb, code lost:
        
            r0 = h(r17, r18, r11, r11.g(r17, r19));
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00c3, code lost:
        
            monitor-exit(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00c9, code lost:
        
            return r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00cd, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00ce, code lost:
        
            r16.r.b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00d3, code lost:
        
            throw r0;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object k(java.lang.Object r17, int r18, com.google.common.cache.CacheLoader r19) {
            /*
                r16 = this;
                r1 = r16
                r0 = r17
                r2 = r18
                r1.lock()
                com.google.common.cache.LocalCache r3 = r1.f12213c     // Catch: java.lang.Throwable -> L5c
                com.google.common.base.Ticker r3 = r3.r     // Catch: java.lang.Throwable -> L5c
                long r3 = r3.a()     // Catch: java.lang.Throwable -> L5c
                r1.t(r3)     // Catch: java.lang.Throwable -> L5c
                int r5 = r1.f     // Catch: java.lang.Throwable -> L5c
                r6 = 1
                int r5 = r5 - r6
                java.util.concurrent.atomic.AtomicReferenceArray r7 = r1.j     // Catch: java.lang.Throwable -> L5c
                int r8 = r7.length()     // Catch: java.lang.Throwable -> L5c
                int r8 = r8 - r6
                r8 = r8 & r2
                java.lang.Object r9 = r7.get(r8)     // Catch: java.lang.Throwable -> L5c
                com.google.common.cache.ReferenceEntry r9 = (com.google.common.cache.ReferenceEntry) r9     // Catch: java.lang.Throwable -> L5c
                r10 = r9
            L27:
                r11 = 0
                if (r10 == 0) goto L91
                java.lang.Object r12 = r10.getKey()     // Catch: java.lang.Throwable -> L5c
                int r13 = r10.c()     // Catch: java.lang.Throwable -> L5c
                if (r13 != r2) goto L8c
                if (r12 == 0) goto L8c
                com.google.common.cache.LocalCache r13 = r1.f12213c     // Catch: java.lang.Throwable -> L5c
                com.google.common.base.Equivalence r13 = r13.i     // Catch: java.lang.Throwable -> L5c
                boolean r13 = r13.d(r0, r12)     // Catch: java.lang.Throwable -> L5c
                if (r13 == 0) goto L8c
                com.google.common.cache.LocalCache$ValueReference r13 = r10.b()     // Catch: java.lang.Throwable -> L5c
                boolean r14 = r13.d()     // Catch: java.lang.Throwable -> L5c
                if (r14 == 0) goto L4c
                r6 = 0
                goto L92
            L4c:
                java.lang.Object r14 = r13.get()     // Catch: java.lang.Throwable -> L5c
                if (r14 != 0) goto L5f
                int r3 = r13.c()     // Catch: java.lang.Throwable -> L5c
                com.google.common.cache.RemovalCause r4 = com.google.common.cache.RemovalCause.g     // Catch: java.lang.Throwable -> L5c
                r1.d(r12, r14, r3, r4)     // Catch: java.lang.Throwable -> L5c
                goto L70
            L5c:
                r0 = move-exception
                goto Ld9
            L5f:
                com.google.common.cache.LocalCache r15 = r1.f12213c     // Catch: java.lang.Throwable -> L5c
                boolean r15 = r15.d(r10, r3)     // Catch: java.lang.Throwable -> L5c
                if (r15 == 0) goto L7d
                int r3 = r13.c()     // Catch: java.lang.Throwable -> L5c
                com.google.common.cache.RemovalCause r4 = com.google.common.cache.RemovalCause.h     // Catch: java.lang.Throwable -> L5c
                r1.d(r12, r14, r3, r4)     // Catch: java.lang.Throwable -> L5c
            L70:
                java.util.AbstractQueue r3 = r1.p     // Catch: java.lang.Throwable -> L5c
                r3.remove(r10)     // Catch: java.lang.Throwable -> L5c
                java.util.AbstractQueue r3 = r1.q     // Catch: java.lang.Throwable -> L5c
                r3.remove(r10)     // Catch: java.lang.Throwable -> L5c
                r1.f = r5     // Catch: java.lang.Throwable -> L5c
                goto L92
            L7d:
                r1.n(r10, r3)     // Catch: java.lang.Throwable -> L5c
                com.google.common.cache.AbstractCache$StatsCounter r0 = r1.r     // Catch: java.lang.Throwable -> L5c
                r0.e()     // Catch: java.lang.Throwable -> L5c
                r1.unlock()
                r1.u()
                return r14
            L8c:
                com.google.common.cache.ReferenceEntry r10 = r10.a()     // Catch: java.lang.Throwable -> L5c
                goto L27
            L91:
                r13 = r11
            L92:
                if (r6 == 0) goto Lb0
                com.google.common.cache.LocalCache$LoadingValueReference r11 = new com.google.common.cache.LocalCache$LoadingValueReference     // Catch: java.lang.Throwable -> L5c
                r11.<init>()     // Catch: java.lang.Throwable -> L5c
                if (r10 != 0) goto Lad
                com.google.common.cache.LocalCache r3 = r1.f12213c     // Catch: java.lang.Throwable -> L5c
                com.google.common.cache.LocalCache$EntryFactory r3 = r3.s     // Catch: java.lang.Throwable -> L5c
                r0.getClass()     // Catch: java.lang.Throwable -> L5c
                com.google.common.cache.ReferenceEntry r10 = r3.d(r1, r0, r2, r9)     // Catch: java.lang.Throwable -> L5c
                r10.e(r11)     // Catch: java.lang.Throwable -> L5c
                r7.set(r8, r10)     // Catch: java.lang.Throwable -> L5c
                goto Lb0
            Lad:
                r10.e(r11)     // Catch: java.lang.Throwable -> L5c
            Lb0:
                r1.unlock()
                r1.u()
                if (r6 == 0) goto Ld4
                monitor-enter(r10)     // Catch: java.lang.Throwable -> Lcd
                r3 = r19
                com.google.common.util.concurrent.ListenableFuture r3 = r11.g(r0, r3)     // Catch: java.lang.Throwable -> Lca
                java.lang.Object r0 = r1.h(r0, r2, r11, r3)     // Catch: java.lang.Throwable -> Lca
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lca
                com.google.common.cache.AbstractCache$StatsCounter r2 = r1.r
                r2.b()
                return r0
            Lca:
                r0 = move-exception
                monitor-exit(r10)     // Catch: java.lang.Throwable -> Lca
                throw r0     // Catch: java.lang.Throwable -> Lcd
            Lcd:
                r0 = move-exception
                com.google.common.cache.AbstractCache$StatsCounter r2 = r1.r
                r2.b()
                throw r0
            Ld4:
                java.lang.Object r0 = r1.y(r10, r0, r13)
                return r0
            Ld9:
                r1.unlock()
                r1.u()
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.Segment.k(java.lang.Object, int, com.google.common.cache.CacheLoader):java.lang.Object");
        }

        public final void l() {
            if ((this.o.incrementAndGet() & 63) == 0) {
                t(this.f12213c.r.a());
                u();
            }
        }

        public final Object m(Object obj, int i, Object obj2, boolean z) {
            int i2;
            lock();
            try {
                long a2 = this.f12213c.r.a();
                t(a2);
                if (this.f + 1 > this.i) {
                    f();
                }
                AtomicReferenceArray atomicReferenceArray = this.j;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                ReferenceEntry referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 != null) {
                        Object key = referenceEntry2.getKey();
                        if (referenceEntry2.c() == i && key != null && this.f12213c.i.d(obj, key)) {
                            ValueReference b = referenceEntry2.b();
                            Object obj3 = b.get();
                            if (obj3 == null) {
                                this.h++;
                                if (b.isActive()) {
                                    d(obj, obj3, b.c(), RemovalCause.g);
                                    v(referenceEntry2, obj2, a2);
                                    i2 = this.f;
                                } else {
                                    v(referenceEntry2, obj2, a2);
                                    i2 = this.f + 1;
                                }
                                this.f = i2;
                                e(referenceEntry2);
                            } else {
                                if (z) {
                                    n(referenceEntry2, a2);
                                } else {
                                    this.h++;
                                    d(obj, obj3, b.c(), RemovalCause.f);
                                    v(referenceEntry2, obj2, a2);
                                    e(referenceEntry2);
                                }
                                unlock();
                                u();
                                return obj3;
                            }
                        } else {
                            referenceEntry2 = referenceEntry2.a();
                        }
                    } else {
                        this.h++;
                        ReferenceEntry d = this.f12213c.s.d(this, obj, i, referenceEntry);
                        v(d, obj2, a2);
                        atomicReferenceArray.set(length, d);
                        this.f++;
                        e(d);
                        break;
                    }
                }
                unlock();
                u();
                return null;
            } catch (Throwable th) {
                unlock();
                u();
                throw th;
            }
        }

        public final void n(ReferenceEntry referenceEntry, long j) {
            this.f12213c.getClass();
            this.q.add(referenceEntry);
        }

        public final void o(ReferenceEntry referenceEntry, long j) {
            this.f12213c.getClass();
            this.n.add(referenceEntry);
        }

        public final void p(ReferenceEntry referenceEntry) {
            Object key = referenceEntry.getKey();
            referenceEntry.c();
            d(key, referenceEntry.b().get(), referenceEntry.b().c(), RemovalCause.g);
            this.p.remove(referenceEntry);
            this.q.remove(referenceEntry);
        }

        public final boolean q(ReferenceEntry referenceEntry, int i, RemovalCause removalCause) {
            AtomicReferenceArray atomicReferenceArray = this.j;
            int length = i & (atomicReferenceArray.length() - 1);
            ReferenceEntry referenceEntry2 = (ReferenceEntry) atomicReferenceArray.get(length);
            for (ReferenceEntry referenceEntry3 = referenceEntry2; referenceEntry3 != null; referenceEntry3 = referenceEntry3.a()) {
                if (referenceEntry3 == referenceEntry) {
                    this.h++;
                    ReferenceEntry s = s(referenceEntry2, referenceEntry3, referenceEntry3.getKey(), referenceEntry3.b().get(), referenceEntry3.b(), removalCause);
                    int i2 = this.f - 1;
                    atomicReferenceArray.set(length, s);
                    this.f = i2;
                    return true;
                }
            }
            return false;
        }

        public final ReferenceEntry r(ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2) {
            int i = this.f;
            ReferenceEntry a2 = referenceEntry2.a();
            while (referenceEntry != referenceEntry2) {
                ReferenceEntry a3 = a(referenceEntry, a2);
                if (a3 != null) {
                    a2 = a3;
                } else {
                    p(referenceEntry);
                    i--;
                }
                referenceEntry = referenceEntry.a();
            }
            this.f = i;
            return a2;
        }

        public final ReferenceEntry s(ReferenceEntry referenceEntry, ReferenceEntry referenceEntry2, Object obj, Object obj2, ValueReference valueReference, RemovalCause removalCause) {
            d(obj, obj2, valueReference.c(), removalCause);
            this.p.remove(referenceEntry2);
            this.q.remove(referenceEntry2);
            if (valueReference.d()) {
                valueReference.b(null);
                return referenceEntry;
            }
            return r(referenceEntry, referenceEntry2);
        }

        public final void t(long j) {
            if (tryLock()) {
                try {
                    c();
                    g(j);
                    this.o.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public final void u() {
            if (!isHeldByCurrentThread()) {
                ((AnonymousClass2) this.f12213c.p).getClass();
            }
        }

        public final void v(ReferenceEntry referenceEntry, Object obj, long j) {
            ValueReference b = referenceEntry.b();
            LocalCache localCache = this.f12213c;
            ((CacheBuilder.OneWeigher) localCache.n).getClass();
            localCache.l.getClass();
            referenceEntry.e(new StrongValueReference(obj));
            b();
            this.g++;
            if (localCache.b()) {
                referenceEntry.j(j);
            }
            this.q.add(referenceEntry);
            this.p.add(referenceEntry);
            b.b(obj);
        }

        public final void w(Object obj, int i, LoadingValueReference loadingValueReference, Object obj2) {
            RemovalCause removalCause = RemovalCause.f;
            lock();
            try {
                long a2 = this.f12213c.r.a();
                t(a2);
                int i2 = this.f + 1;
                if (i2 > this.i) {
                    f();
                    i2 = this.f + 1;
                }
                AtomicReferenceArray atomicReferenceArray = this.j;
                int length = (atomicReferenceArray.length() - 1) & i;
                ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
                ReferenceEntry referenceEntry2 = referenceEntry;
                while (true) {
                    if (referenceEntry2 != null) {
                        Object key = referenceEntry2.getKey();
                        if (referenceEntry2.c() == i && key != null && this.f12213c.i.d(obj, key)) {
                            ValueReference b = referenceEntry2.b();
                            Object obj3 = b.get();
                            if (loadingValueReference != b && (obj3 != null || b == LocalCache.y)) {
                                d(obj, obj2, 0, removalCause);
                            }
                            this.h++;
                            if (loadingValueReference.f12210c.isActive()) {
                                if (obj3 == null) {
                                    removalCause = RemovalCause.g;
                                }
                                d(obj, obj3, loadingValueReference.f12210c.c(), removalCause);
                                i2--;
                            }
                            v(referenceEntry2, obj2, a2);
                            this.f = i2;
                            e(referenceEntry2);
                        } else {
                            referenceEntry2 = referenceEntry2.a();
                        }
                    } else {
                        this.h++;
                        EntryFactory entryFactory = this.f12213c.s;
                        obj.getClass();
                        ReferenceEntry d = entryFactory.d(this, obj, i, referenceEntry);
                        v(d, obj2, a2);
                        atomicReferenceArray.set(length, d);
                        this.f = i2;
                        e(d);
                        break;
                    }
                }
                unlock();
                u();
            } catch (Throwable th) {
                unlock();
                u();
                throw th;
            }
        }

        public final void x() {
            if (tryLock()) {
                try {
                    c();
                } finally {
                    unlock();
                }
            }
        }

        public final Object y(ReferenceEntry referenceEntry, Object obj, ValueReference valueReference) {
            AbstractCache.StatsCounter statsCounter = this.r;
            if (valueReference.d()) {
                Preconditions.k("Recursive load of: %s", obj, !Thread.holdsLock(referenceEntry));
                try {
                    Object e = valueReference.e();
                    if (e != null) {
                        o(referenceEntry, this.f12213c.r.a());
                        return e;
                    }
                    throw new RuntimeException("CacheLoader returned null for key " + obj + ".");
                } finally {
                    statsCounter.b();
                }
            }
            throw new AssertionError();
        }
    }

    /* loaded from: classes3.dex */
    public static class SoftValueReference<K, V> extends SoftReference<V> implements ValueReference<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final ReferenceEntry f12214c;

        public SoftValueReference(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            super(obj, referenceQueue);
            this.f12214c = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ReferenceEntry a() {
            return this.f12214c;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final void b(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int c() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean d() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object e() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return new SoftValueReference(referenceQueue, obj, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean isActive() {
            return true;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class Strength {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12215c;
        public static final AnonymousClass3 f;
        public static final /* synthetic */ Strength[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.LocalCache$Strength$1] */
        /* JADX WARN: Type inference failed for: r2v0, types: [com.google.common.cache.LocalCache$Strength$3] */
        static {
            ?? r0 = new Strength() { // from class: com.google.common.cache.LocalCache.Strength.1
                @Override // com.google.common.cache.LocalCache.Strength
                public final Equivalence a() {
                    return Equivalence.c();
                }
            };
            f12215c = r0;
            Strength strength = new Strength() { // from class: com.google.common.cache.LocalCache.Strength.2
                @Override // com.google.common.cache.LocalCache.Strength
                public final Equivalence a() {
                    return Equivalence.e();
                }
            };
            ?? r2 = new Strength() { // from class: com.google.common.cache.LocalCache.Strength.3
                @Override // com.google.common.cache.LocalCache.Strength
                public final Equivalence a() {
                    return Equivalence.e();
                }
            };
            f = r2;
            g = new Strength[]{r0, strength, r2};
        }

        public static Strength valueOf(String str) {
            return (Strength) Enum.valueOf(Strength.class, str);
        }

        public static Strength[] values() {
            return (Strength[]) g.clone();
        }

        public abstract Equivalence a();
    }

    /* loaded from: classes3.dex */
    public static final class StrongAccessEntry<K, V> extends StrongEntry<K, V> {
        public volatile long i;
        public ReferenceEntry j;
        public ReferenceEntry k;

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry d() {
            return this.k;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void g(long j) {
            this.i = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final long i() {
            return this.i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry k() {
            return this.j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void l(ReferenceEntry referenceEntry) {
            this.j = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void p(ReferenceEntry referenceEntry) {
            this.k = referenceEntry;
        }
    }

    /* loaded from: classes3.dex */
    public static final class StrongAccessWriteEntry<K, V> extends StrongEntry<K, V> {
        public volatile long i;
        public ReferenceEntry j;
        public ReferenceEntry k;
        public volatile long l;
        public ReferenceEntry m;
        public ReferenceEntry n;

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry d() {
            return this.k;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final long f() {
            return this.l;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void g(long j) {
            this.i = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry h() {
            return this.m;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final long i() {
            return this.i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void j(long j) {
            this.l = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry k() {
            return this.j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void l(ReferenceEntry referenceEntry) {
            this.j = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void n(ReferenceEntry referenceEntry) {
            this.m = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void o(ReferenceEntry referenceEntry) {
            this.n = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void p(ReferenceEntry referenceEntry) {
            this.k = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry q() {
            return this.n;
        }
    }

    /* loaded from: classes3.dex */
    public static class StrongEntry<K, V> extends AbstractReferenceEntry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12216c;
        public final int f;
        public final ReferenceEntry g;
        public volatile ValueReference h = LocalCache.y;

        public StrongEntry(Object obj, int i, ReferenceEntry referenceEntry) {
            this.f12216c = obj;
            this.f = i;
            this.g = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry a() {
            return this.g;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ValueReference b() {
            return this.h;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final int c() {
            return this.f;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void e(ValueReference valueReference) {
            this.h = valueReference;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final Object getKey() {
            return this.f12216c;
        }
    }

    /* loaded from: classes3.dex */
    public static class StrongValueReference<K, V> implements ValueReference<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12217c;

        public StrongValueReference(Object obj) {
            this.f12217c = obj;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ReferenceEntry a() {
            return null;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final void b(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int c() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean d() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object e() {
            return this.f12217c;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return this;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object get() {
            return this.f12217c;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean isActive() {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static final class StrongWriteEntry<K, V> extends StrongEntry<K, V> {
        public volatile long i;
        public ReferenceEntry j;
        public ReferenceEntry k;

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final long f() {
            return this.i;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry h() {
            return this.j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void j(long j) {
            this.i = j;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void n(ReferenceEntry referenceEntry) {
            this.j = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final void o(ReferenceEntry referenceEntry) {
            this.k = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry q() {
            return this.k;
        }
    }

    /* loaded from: classes3.dex */
    public final class ValueIterator extends LocalCache<K, V>.HashIterator<V> {
        @Override // com.google.common.cache.LocalCache.HashIterator, java.util.Iterator
        public final Object next() {
            return c().f;
        }
    }

    /* loaded from: classes3.dex */
    public interface ValueReference<K, V> {
        ReferenceEntry a();

        void b(Object obj);

        int c();

        boolean d();

        Object e();

        ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry);

        Object get();

        boolean isActive();
    }

    /* loaded from: classes3.dex */
    public final class Values extends AbstractCollection<V> {
        public Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            LocalCache.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return LocalCache.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return LocalCache.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new HashIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return LocalCache.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakAccessEntry<K, V> extends WeakEntry<K, V> {
        public volatile long h;
        public ReferenceEntry i;
        public ReferenceEntry j;

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry d() {
            return this.j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void g(long j) {
            this.h = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final long i() {
            return this.h;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry k() {
            return this.i;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void l(ReferenceEntry referenceEntry) {
            this.i = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void p(ReferenceEntry referenceEntry) {
            this.j = referenceEntry;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakAccessWriteEntry<K, V> extends WeakEntry<K, V> {
        public volatile long h;
        public ReferenceEntry i;
        public ReferenceEntry j;
        public volatile long k;
        public ReferenceEntry l;
        public ReferenceEntry m;

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry d() {
            return this.j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final long f() {
            return this.k;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void g(long j) {
            this.h = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry h() {
            return this.l;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final long i() {
            return this.h;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void j(long j) {
            this.k = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry k() {
            return this.i;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void l(ReferenceEntry referenceEntry) {
            this.i = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void n(ReferenceEntry referenceEntry) {
            this.l = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void o(ReferenceEntry referenceEntry) {
            this.m = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void p(ReferenceEntry referenceEntry) {
            this.j = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry q() {
            return this.m;
        }
    }

    /* loaded from: classes3.dex */
    public static class WeakEntry<K, V> extends WeakReference<K> implements ReferenceEntry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final int f12219c;
        public final ReferenceEntry f;
        public volatile ValueReference g;

        public WeakEntry(ReferenceQueue referenceQueue, Object obj, int i, ReferenceEntry referenceEntry) {
            super(obj, referenceQueue);
            this.g = LocalCache.y;
            this.f12219c = i;
            this.f = referenceEntry;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ReferenceEntry a() {
            return this.f;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final ValueReference b() {
            return this.g;
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final int c() {
            return this.f12219c;
        }

        public ReferenceEntry d() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final void e(ValueReference valueReference) {
            this.g = valueReference;
        }

        public long f() {
            throw new UnsupportedOperationException();
        }

        public void g(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.cache.ReferenceEntry
        public final Object getKey() {
            return get();
        }

        public ReferenceEntry h() {
            throw new UnsupportedOperationException();
        }

        public long i() {
            throw new UnsupportedOperationException();
        }

        public void j(long j) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry k() {
            throw new UnsupportedOperationException();
        }

        public void l(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void n(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void o(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public void p(ReferenceEntry referenceEntry) {
            throw new UnsupportedOperationException();
        }

        public ReferenceEntry q() {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes3.dex */
    public static class WeakValueReference<K, V> extends WeakReference<V> implements ValueReference<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final ReferenceEntry f12220c;

        public WeakValueReference(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            super(obj, referenceQueue);
            this.f12220c = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final ReferenceEntry a() {
            return this.f12220c;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final void b(Object obj) {
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public int c() {
            return 1;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean d() {
            return false;
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final Object e() {
            return get();
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return new WeakValueReference(referenceQueue, obj, referenceEntry);
        }

        @Override // com.google.common.cache.LocalCache.ValueReference
        public final boolean isActive() {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakWriteEntry<K, V> extends WeakEntry<K, V> {
        public volatile long h;
        public ReferenceEntry i;
        public ReferenceEntry j;

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final long f() {
            return this.h;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry h() {
            return this.i;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void j(long j) {
            this.h = j;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void n(ReferenceEntry referenceEntry) {
            this.i = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final void o(ReferenceEntry referenceEntry) {
            this.j = referenceEntry;
        }

        @Override // com.google.common.cache.LocalCache.WeakEntry, com.google.common.cache.ReferenceEntry
        public final ReferenceEntry q() {
            return this.j;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeightedSoftValueReference<K, V> extends SoftValueReference<K, V> {
        @Override // com.google.common.cache.LocalCache.SoftValueReference, com.google.common.cache.LocalCache.ValueReference
        public final int c() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.SoftValueReference, com.google.common.cache.LocalCache.ValueReference
        public final ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return new SoftValueReference(referenceQueue, obj, referenceEntry);
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeightedStrongValueReference<K, V> extends StrongValueReference<K, V> {
        @Override // com.google.common.cache.LocalCache.StrongValueReference, com.google.common.cache.LocalCache.ValueReference
        public final int c() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeightedWeakValueReference<K, V> extends WeakValueReference<K, V> {
        @Override // com.google.common.cache.LocalCache.WeakValueReference, com.google.common.cache.LocalCache.ValueReference
        public final int c() {
            return 0;
        }

        @Override // com.google.common.cache.LocalCache.WeakValueReference, com.google.common.cache.LocalCache.ValueReference
        public final ValueReference f(ReferenceQueue referenceQueue, Object obj, ReferenceEntry referenceEntry) {
            return new WeakValueReference(referenceQueue, obj, referenceEntry);
        }
    }

    /* loaded from: classes3.dex */
    public static final class WriteQueue<K, V> extends AbstractQueue<ReferenceEntry<K, V>> {

        /* renamed from: c, reason: collision with root package name */
        public final AnonymousClass1 f12221c;

        /* renamed from: com.google.common.cache.LocalCache$WriteQueue$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends AbstractReferenceEntry<K, V> {

            /* renamed from: c, reason: collision with root package name */
            public ReferenceEntry f12222c;
            public ReferenceEntry f;

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final long f() {
                return LongCompanionObject.MAX_VALUE;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final ReferenceEntry h() {
                return this.f12222c;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final void j(long j) {
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final void n(ReferenceEntry referenceEntry) {
                this.f12222c = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final void o(ReferenceEntry referenceEntry) {
                this.f = referenceEntry;
            }

            @Override // com.google.common.cache.LocalCache.AbstractReferenceEntry, com.google.common.cache.ReferenceEntry
            public final ReferenceEntry q() {
                return this.f;
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.cache.ReferenceEntry, com.google.common.cache.LocalCache$WriteQueue$1, java.lang.Object] */
        public WriteQueue() {
            ?? obj = new Object();
            obj.f12222c = obj;
            obj.f = obj;
            this.f12221c = obj;
        }

        @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            AnonymousClass1 anonymousClass1 = this.f12221c;
            ReferenceEntry referenceEntry = anonymousClass1.f12222c;
            while (referenceEntry != anonymousClass1) {
                ReferenceEntry h = referenceEntry.h();
                AnonymousClass1 anonymousClass12 = LocalCache.y;
                NullEntry nullEntry = NullEntry.f12212c;
                referenceEntry.n(nullEntry);
                referenceEntry.o(nullEntry);
                referenceEntry = h;
            }
            anonymousClass1.f12222c = anonymousClass1;
            anonymousClass1.f = anonymousClass1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (((ReferenceEntry) obj).h() != NullEntry.f12212c) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            AnonymousClass1 anonymousClass1 = this.f12221c;
            if (anonymousClass1.f12222c == anonymousClass1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            AnonymousClass1 anonymousClass1 = this.f12221c;
            ReferenceEntry referenceEntry = anonymousClass1.f12222c;
            if (referenceEntry == anonymousClass1) {
                referenceEntry = null;
            }
            return new AbstractSequentialIterator<ReferenceEntry<Object, Object>>(referenceEntry) { // from class: com.google.common.cache.LocalCache.WriteQueue.2
                @Override // com.google.common.collect.AbstractSequentialIterator
                public final Object a(Object obj) {
                    ReferenceEntry h = ((ReferenceEntry) obj).h();
                    if (h == WriteQueue.this.f12221c) {
                        return null;
                    }
                    return h;
                }
            };
        }

        @Override // java.util.Queue
        public final boolean offer(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry q = referenceEntry.q();
            ReferenceEntry h = referenceEntry.h();
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            q.n(h);
            h.o(q);
            AnonymousClass1 anonymousClass12 = this.f12221c;
            ReferenceEntry referenceEntry2 = anonymousClass12.f;
            referenceEntry2.n(referenceEntry);
            referenceEntry.o(referenceEntry2);
            referenceEntry.n(anonymousClass12);
            anonymousClass12.f = referenceEntry;
            return true;
        }

        @Override // java.util.Queue
        public final Object peek() {
            AnonymousClass1 anonymousClass1 = this.f12221c;
            ReferenceEntry referenceEntry = anonymousClass1.f12222c;
            if (referenceEntry == anonymousClass1) {
                return null;
            }
            return referenceEntry;
        }

        @Override // java.util.Queue
        public final Object poll() {
            AnonymousClass1 anonymousClass1 = this.f12221c;
            ReferenceEntry referenceEntry = anonymousClass1.f12222c;
            if (referenceEntry == anonymousClass1) {
                return null;
            }
            remove(referenceEntry);
            return referenceEntry;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            ReferenceEntry referenceEntry = (ReferenceEntry) obj;
            ReferenceEntry q = referenceEntry.q();
            ReferenceEntry h = referenceEntry.h();
            AnonymousClass1 anonymousClass1 = LocalCache.y;
            q.n(h);
            h.o(q);
            NullEntry nullEntry = NullEntry.f12212c;
            referenceEntry.n(nullEntry);
            referenceEntry.o(nullEntry);
            if (h != nullEntry) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            AnonymousClass1 anonymousClass1 = this.f12221c;
            int i = 0;
            for (ReferenceEntry referenceEntry = anonymousClass1.f12222c; referenceEntry != anonymousClass1; referenceEntry = referenceEntry.h()) {
                i++;
            }
            return i;
        }
    }

    /* loaded from: classes3.dex */
    public final class WriteThroughEntry implements Map.Entry<K, V> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12223c;
        public Object f;

        public WriteThroughEntry(Object obj, Object obj2) {
            this.f12223c = obj;
            this.f = obj2;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.f12223c.equals(entry.getKey()) && this.f.equals(entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f12223c;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.f12223c.hashCode() ^ this.f.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            Object put = LocalCache.this.put(this.f12223c, obj);
            this.f = obj;
            return put;
        }

        public final String toString() {
            return this.f12223c + "=" + this.f;
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.common.cache.LocalCache$1] */
    static {
        Logger.getLogger(LocalCache.class.getName());
        y = new Object();
        z = new AbstractQueue<Object>() { // from class: com.google.common.cache.LocalCache.2
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
            public final Iterator iterator() {
                return ImmutableSet.w().iterator();
            }

            @Override // java.util.Queue
            public final boolean offer(Object obj) {
                return true;
            }

            @Override // java.util.Queue
            public final Object peek() {
                return null;
            }

            @Override // java.util.Queue
            public final Object poll() {
                return null;
            }

            @Override // java.util.AbstractCollection, java.util.Collection
            public final int size() {
                return 0;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LocalCache(CacheBuilder cacheBuilder, CacheLoader cacheLoader) {
        long j;
        Ticker ticker;
        Object[] objArr;
        int i;
        Supplier supplier = cacheBuilder.f12199c;
        this.h = Math.min(4, 65536);
        Strength.AnonymousClass3 anonymousClass3 = cacheBuilder.f12198a;
        Strength.AnonymousClass1 anonymousClass1 = Strength.f12215c;
        Strength strength = (Strength) MoreObjects.a(anonymousClass3, anonymousClass1);
        this.k = strength;
        this.l = anonymousClass1;
        this.i = ((Strength) MoreObjects.a(cacheBuilder.f12198a, anonymousClass1)).a();
        this.j = Equivalence.c();
        long j2 = cacheBuilder.b;
        if (j2 != 0) {
            j = -1;
        } else {
            j = 0;
        }
        this.m = j;
        this.n = CacheBuilder.OneWeigher.f12201c;
        this.o = j2 == -1 ? 0L : j2;
        this.q = CacheBuilder.NullListener.f12200c;
        this.p = z;
        if (!b()) {
            ticker = CacheBuilder.e;
        } else {
            ticker = Ticker.f12193a;
        }
        this.r = ticker;
        boolean a2 = a();
        int i2 = 0;
        if (!b() && !b()) {
            objArr = false;
        } else {
            objArr = true;
        }
        int i3 = (a2 ? 1 : 0) | (strength != Strength.f ? (char) 0 : (char) 4);
        if (objArr != false) {
            i = 2;
        } else {
            i = 0;
        }
        this.s = EntryFactory.f12208c[i3 | i];
        this.t = (AbstractCache.StatsCounter) supplier.get();
        this.u = cacheLoader;
        int min = Math.min(16, 1073741824);
        min = a() ? (int) Math.min(min, j) : min;
        int i4 = 0;
        int i5 = 1;
        while (i5 < this.h && (!a() || i5 * 20 <= this.m)) {
            i4++;
            i5 <<= 1;
        }
        this.f = 32 - i4;
        this.f12204c = i5 - 1;
        this.g = new Segment[i5];
        int i6 = min / i5;
        int i7 = 1;
        while (i7 < (i6 * i5 < min ? i6 + 1 : i6)) {
            i7 <<= 1;
        }
        if (a()) {
            long j3 = this.m;
            long j4 = i5;
            long j5 = (j3 / j4) + 1;
            long j6 = j3 % j4;
            while (true) {
                Segment[] segmentArr = this.g;
                if (i2 < segmentArr.length) {
                    if (i2 == j6) {
                        j5--;
                    }
                    segmentArr[i2] = new Segment(this, i7, j5, (AbstractCache.StatsCounter) supplier.get());
                    i2++;
                } else {
                    return;
                }
            }
        } else {
            while (true) {
                Segment[] segmentArr2 = this.g;
                if (i2 < segmentArr2.length) {
                    segmentArr2[i2] = new Segment(this, i7, -1L, (AbstractCache.StatsCounter) supplier.get());
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    public final boolean a() {
        if (this.m >= 0) {
            return true;
        }
        return false;
    }

    public final boolean b() {
        if (this.o > 0) {
            return true;
        }
        return false;
    }

    public final int c(Object obj) {
        int b;
        Equivalence equivalence = this.i;
        if (obj == null) {
            equivalence.getClass();
            b = 0;
        } else {
            b = equivalence.b(obj);
        }
        int i = b + ((b << 15) ^ (-12931));
        int i2 = i ^ (i >>> 10);
        int i3 = i2 + (i2 << 3);
        int i4 = i3 ^ (i3 >>> 6);
        int i5 = (i4 << 2) + (i4 << 14) + i4;
        return (i5 >>> 16) ^ i5;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        boolean z2;
        boolean z3;
        RemovalCause removalCause;
        Strength.AnonymousClass1 anonymousClass1 = Strength.f12215c;
        for (Segment segment : this.g) {
            if (segment.f != 0) {
                segment.lock();
                try {
                    segment.t(segment.f12213c.r.a());
                    AtomicReferenceArray atomicReferenceArray = segment.j;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        for (ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(i); referenceEntry != null; referenceEntry = referenceEntry.a()) {
                            if (referenceEntry.b().isActive()) {
                                Object key = referenceEntry.getKey();
                                Object obj = referenceEntry.b().get();
                                if (key != null && obj != null) {
                                    removalCause = RemovalCause.f12225c;
                                    referenceEntry.c();
                                    segment.d(key, obj, referenceEntry.b().c(), removalCause);
                                }
                                removalCause = RemovalCause.g;
                                referenceEntry.c();
                                segment.d(key, obj, referenceEntry.b().c(), removalCause);
                            }
                        }
                    }
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    LocalCache localCache = segment.f12213c;
                    if (localCache.k != anonymousClass1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2) {
                        do {
                        } while (segment.l.poll() != null);
                    }
                    if (localCache.l != anonymousClass1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (z3) {
                        do {
                        } while (segment.m.poll() != null);
                    }
                    segment.p.clear();
                    segment.q.clear();
                    segment.o.set(0);
                    segment.h++;
                    segment.f = 0;
                    segment.unlock();
                    segment.u();
                } catch (Throwable th) {
                    segment.unlock();
                    segment.u();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return ConcurrentMap.CC.$default$compute(this, obj, biFunction);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, java.util.function.Function function) {
        return ConcurrentMap.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return ConcurrentMap.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0040 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0044 A[Catch: all -> 0x0053, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0053, blocks: (B:7:0x000f, B:9:0x0013, B:16:0x0044, B:21:0x0023, B:23:0x002b, B:27:0x0034, B:30:0x003a, B:31:0x003d, B:26:0x0031), top: B:6:0x000f, inners: #1 }] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsKey(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 0
            if (r7 != 0) goto L4
            return r0
        L4:
            int r1 = r6.c(r7)
            com.google.common.cache.LocalCache$Segment r2 = r6.e(r1)
            r2.getClass()
            int r3 = r2.f     // Catch: java.lang.Throwable -> L53
            if (r3 == 0) goto L55
            com.google.common.cache.LocalCache r3 = r2.f12213c     // Catch: java.lang.Throwable -> L53
            com.google.common.base.Ticker r3 = r3.r     // Catch: java.lang.Throwable -> L53
            long r3 = r3.a()     // Catch: java.lang.Throwable -> L53
            com.google.common.cache.ReferenceEntry r7 = r2.i(r1, r7)     // Catch: java.lang.Throwable -> L53
            r1 = 0
            if (r7 != 0) goto L23
            goto L37
        L23:
            com.google.common.cache.LocalCache r5 = r2.f12213c     // Catch: java.lang.Throwable -> L53
            boolean r5 = r5.d(r7, r3)     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L3e
            boolean r7 = r2.tryLock()     // Catch: java.lang.Throwable -> L53
            if (r7 == 0) goto L37
            r2.g(r3)     // Catch: java.lang.Throwable -> L39
            r2.unlock()     // Catch: java.lang.Throwable -> L53
        L37:
            r7 = r1
            goto L3e
        L39:
            r7 = move-exception
            r2.unlock()     // Catch: java.lang.Throwable -> L53
            throw r7     // Catch: java.lang.Throwable -> L53
        L3e:
            if (r7 != 0) goto L44
            r2.l()
            return r0
        L44:
            com.google.common.cache.LocalCache$ValueReference r7 = r7.b()     // Catch: java.lang.Throwable -> L53
            java.lang.Object r7 = r7.get()     // Catch: java.lang.Throwable -> L53
            if (r7 == 0) goto L4f
            r0 = 1
        L4f:
            r2.l()
            return r0
        L53:
            r7 = move-exception
            goto L59
        L55:
            r2.l()
            return r0
        L59:
            r2.l()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.containsKey(java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [int] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r14v1, types: [java.util.concurrent.atomic.AtomicReferenceArray] */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v4 */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        boolean z2 = false;
        if (obj == null) {
            return false;
        }
        long a2 = this.r.a();
        Segment[] segmentArr = this.g;
        long j = -1;
        int i = 0;
        while (i < 3) {
            int length = segmentArr.length;
            long j2 = 0;
            for (?? r12 = z2; r12 < length; r12++) {
                Segment segment = segmentArr[r12];
                int i2 = segment.f;
                ?? r14 = segment.j;
                boolean z3 = z2;
                for (?? r15 = z3; r15 < r14.length(); r15++) {
                    ReferenceEntry referenceEntry = (ReferenceEntry) r14.get(r15);
                    while (referenceEntry != null) {
                        Segment[] segmentArr2 = segmentArr;
                        Object j3 = segment.j(referenceEntry, a2);
                        ReferenceEntry referenceEntry2 = referenceEntry;
                        if (j3 != null && this.j.d(obj, j3)) {
                            return true;
                        }
                        referenceEntry = referenceEntry2.a();
                        segmentArr = segmentArr2;
                    }
                }
                j2 += segment.h;
                z2 = z3;
            }
            boolean z4 = z2;
            Segment[] segmentArr3 = segmentArr;
            if (j2 != j) {
                i++;
                j = j2;
                z2 = z4;
                segmentArr = segmentArr3;
            } else {
                return z4;
            }
        }
        return z2;
    }

    public final boolean d(ReferenceEntry referenceEntry, long j) {
        referenceEntry.getClass();
        if (b() && j - referenceEntry.f() >= this.o) {
            return true;
        }
        return false;
    }

    public final Segment e(int i) {
        return this.g[(i >>> this.f) & this.f12204c];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.x;
        if (set != null) {
            return set;
        }
        EntrySet entrySet = new EntrySet();
        this.x = entrySet;
        return entrySet;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        ConcurrentMap.CC.$default$forEach(this, biConsumer);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[Catch: all -> 0x005e, TRY_ENTER, TryCatch #1 {all -> 0x005e, blocks: (B:7:0x000f, B:9:0x0013, B:16:0x0043, B:18:0x004d, B:21:0x0060, B:22:0x0022, B:24:0x002a, B:28:0x0033, B:31:0x0039, B:32:0x003c, B:27:0x0030), top: B:6:0x000f, inners: #0 }] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            int r1 = r5.c(r6)
            com.google.common.cache.LocalCache$Segment r2 = r5.e(r1)
            r2.getClass()
            int r3 = r2.f     // Catch: java.lang.Throwable -> L5e
            if (r3 == 0) goto L63
            com.google.common.cache.LocalCache r3 = r2.f12213c     // Catch: java.lang.Throwable -> L5e
            com.google.common.base.Ticker r3 = r3.r     // Catch: java.lang.Throwable -> L5e
            long r3 = r3.a()     // Catch: java.lang.Throwable -> L5e
            com.google.common.cache.ReferenceEntry r6 = r2.i(r1, r6)     // Catch: java.lang.Throwable -> L5e
            if (r6 != 0) goto L22
            goto L36
        L22:
            com.google.common.cache.LocalCache r1 = r2.f12213c     // Catch: java.lang.Throwable -> L5e
            boolean r1 = r1.d(r6, r3)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L3d
            boolean r6 = r2.tryLock()     // Catch: java.lang.Throwable -> L5e
            if (r6 == 0) goto L36
            r2.g(r3)     // Catch: java.lang.Throwable -> L38
            r2.unlock()     // Catch: java.lang.Throwable -> L5e
        L36:
            r6 = r0
            goto L3d
        L38:
            r6 = move-exception
            r2.unlock()     // Catch: java.lang.Throwable -> L5e
            throw r6     // Catch: java.lang.Throwable -> L5e
        L3d:
            if (r6 != 0) goto L43
            r2.l()
            return r0
        L43:
            com.google.common.cache.LocalCache$ValueReference r1 = r6.b()     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L60
            r2.o(r6, r3)     // Catch: java.lang.Throwable -> L5e
            r6.getKey()     // Catch: java.lang.Throwable -> L5e
            com.google.common.cache.LocalCache r6 = r2.f12213c     // Catch: java.lang.Throwable -> L5e
            com.google.common.cache.CacheLoader r0 = r6.u     // Catch: java.lang.Throwable -> L5e
            r6.getClass()     // Catch: java.lang.Throwable -> L5e
            r2.l()
            return r1
        L5e:
            r6 = move-exception
            goto L67
        L60:
            r2.x()     // Catch: java.lang.Throwable -> L5e
        L63:
            r2.l()
            return r0
        L67:
            r2.l()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 != null) {
            return obj3;
        }
        return obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        Segment[] segmentArr = this.g;
        long j = 0;
        for (Segment segment : segmentArr) {
            if (segment.f != 0) {
                return false;
            }
            j += r8.h;
        }
        if (j == 0) {
            return true;
        }
        for (Segment segment2 : segmentArr) {
            if (segment2.f != 0) {
                return false;
            }
            j -= r9.h;
        }
        if (j != 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.v;
        if (set != null) {
            return set;
        }
        KeySet keySet = new KeySet();
        this.v = keySet;
        return keySet;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return ConcurrentMap.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int c2 = c(obj);
        return e(c2).m(obj, c2, obj2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        for (Map.Entry<K, V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int c2 = c(obj);
        return e(c2).m(obj, c2, obj2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0043, code lost:
    
        r7 = r4.b();
        r6 = r7.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        if (r6 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004d, code lost:
    
        r12 = com.google.common.cache.RemovalCause.f12225c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004f, code lost:
    
        r8 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005d, code lost:
    
        r2.h++;
        r12 = r2.s(r3, r4, r5, r6, r7, r8);
        r0 = r2.f - 1;
        r9.set(r10, r12);
        r2.f = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
    
        r2.unlock();
        r2.u();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0076, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
    
        if (r7.isActive() == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
    
        r12 = com.google.common.cache.RemovalCause.g;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object remove(java.lang.Object r12) {
        /*
            r11 = this;
            r0 = 0
            if (r12 != 0) goto L4
            return r0
        L4:
            int r1 = r11.c(r12)
            com.google.common.cache.LocalCache$Segment r2 = r11.e(r1)
            r2.lock()
            com.google.common.cache.LocalCache r3 = r2.f12213c     // Catch: java.lang.Throwable -> L51
            com.google.common.base.Ticker r3 = r3.r     // Catch: java.lang.Throwable -> L51
            long r3 = r3.a()     // Catch: java.lang.Throwable -> L51
            r2.t(r3)     // Catch: java.lang.Throwable -> L51
            java.util.concurrent.atomic.AtomicReferenceArray r9 = r2.j     // Catch: java.lang.Throwable -> L51
            int r3 = r9.length()     // Catch: java.lang.Throwable -> L51
            int r3 = r3 + (-1)
            r10 = r1 & r3
            java.lang.Object r3 = r9.get(r10)     // Catch: java.lang.Throwable -> L51
            com.google.common.cache.ReferenceEntry r3 = (com.google.common.cache.ReferenceEntry) r3     // Catch: java.lang.Throwable -> L51
            r4 = r3
        L2b:
            if (r4 == 0) goto L77
            java.lang.Object r5 = r4.getKey()     // Catch: java.lang.Throwable -> L51
            int r6 = r4.c()     // Catch: java.lang.Throwable -> L51
            if (r6 != r1) goto L7e
            if (r5 == 0) goto L7e
            com.google.common.cache.LocalCache r6 = r2.f12213c     // Catch: java.lang.Throwable -> L51
            com.google.common.base.Equivalence r6 = r6.i     // Catch: java.lang.Throwable -> L51
            boolean r6 = r6.d(r12, r5)     // Catch: java.lang.Throwable -> L51
            if (r6 == 0) goto L7e
            com.google.common.cache.LocalCache$ValueReference r7 = r4.b()     // Catch: java.lang.Throwable -> L51
            java.lang.Object r6 = r7.get()     // Catch: java.lang.Throwable -> L51
            if (r6 == 0) goto L54
            com.google.common.cache.RemovalCause r12 = com.google.common.cache.RemovalCause.f12225c     // Catch: java.lang.Throwable -> L51
        L4f:
            r8 = r12
            goto L5d
        L51:
            r0 = move-exception
            r12 = r0
            goto L83
        L54:
            boolean r12 = r7.isActive()     // Catch: java.lang.Throwable -> L51
            if (r12 == 0) goto L77
            com.google.common.cache.RemovalCause r12 = com.google.common.cache.RemovalCause.g     // Catch: java.lang.Throwable -> L51
            goto L4f
        L5d:
            int r12 = r2.h     // Catch: java.lang.Throwable -> L51
            int r12 = r12 + 1
            r2.h = r12     // Catch: java.lang.Throwable -> L51
            com.google.common.cache.ReferenceEntry r12 = r2.s(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L51
            int r0 = r2.f     // Catch: java.lang.Throwable -> L51
            int r0 = r0 + (-1)
            r9.set(r10, r12)     // Catch: java.lang.Throwable -> L51
            r2.f = r0     // Catch: java.lang.Throwable -> L51
            r2.unlock()
            r2.u()
            return r6
        L77:
            r2.unlock()
            r2.u()
            return r0
        L7e:
            com.google.common.cache.ReferenceEntry r4 = r4.a()     // Catch: java.lang.Throwable -> L51
            goto L2b
        L83:
            r2.unlock()
            r2.u()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.remove(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int c2 = c(obj);
        Segment e = e(c2);
        e.lock();
        try {
            long a2 = e.f12213c.r.a();
            e.t(a2);
            AtomicReferenceArray atomicReferenceArray = e.j;
            int length = c2 & (atomicReferenceArray.length() - 1);
            ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
            long j = a2;
            ReferenceEntry referenceEntry2 = referenceEntry;
            while (true) {
                if (referenceEntry2 == null) {
                    break;
                }
                ReferenceEntry referenceEntry3 = referenceEntry;
                Object key = referenceEntry2.getKey();
                if (referenceEntry2.c() == c2 && key != null && e.f12213c.i.d(obj, key)) {
                    long j2 = j;
                    ValueReference b = referenceEntry2.b();
                    Object obj3 = b.get();
                    if (obj3 == null) {
                        if (b.isActive()) {
                            e.h++;
                            ReferenceEntry s = e.s(referenceEntry3, referenceEntry2, key, obj3, b, RemovalCause.g);
                            int i = e.f - 1;
                            atomicReferenceArray.set(length, s);
                            e.f = i;
                        }
                    } else {
                        e.h++;
                        e.d(obj, obj3, b.c(), RemovalCause.f);
                        e.v(referenceEntry2, obj2, j2);
                        e.e(referenceEntry2);
                        e.unlock();
                        e.u();
                        return obj3;
                    }
                } else {
                    long j3 = j;
                    referenceEntry2 = referenceEntry2.a();
                    referenceEntry = referenceEntry3;
                    j = j3;
                }
            }
            return null;
        } finally {
            e.unlock();
            e.u();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        ConcurrentMap.CC.$default$replaceAll(this, biFunction);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long j = 0;
        for (int i = 0; i < this.g.length; i++) {
            j += Math.max(0, r0[i].f);
        }
        return Ints.c(j);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.w;
        if (collection != null) {
            return collection;
        }
        Values values = new Values();
        this.w = values;
        return values;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
    
        r7 = r4.b();
        r6 = r7.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
    
        if (r2.f12213c.j.d(r15, r6) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
    
        r8 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0067, code lost:
    
        r2.h++;
        r14 = r2.s(r3, r4, r5, r6, r7, r8);
        r15 = r2.f - 1;
        r10.set(r12, r14);
        r2.f = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0078, code lost:
    
        if (r8 != r9) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007a, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005c, code lost:
    
        if (r6 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0062, code lost:
    
        if (r7.isActive() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0064, code lost:
    
        r8 = com.google.common.cache.RemovalCause.g;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean remove(java.lang.Object r14, java.lang.Object r15) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L91
            if (r15 != 0) goto L7
            goto L91
        L7:
            int r1 = r13.c(r14)
            com.google.common.cache.LocalCache$Segment r2 = r13.e(r1)
            com.google.common.cache.RemovalCause r9 = com.google.common.cache.RemovalCause.f12225c
            r2.lock()
            com.google.common.cache.LocalCache r3 = r2.f12213c     // Catch: java.lang.Throwable -> L82
            com.google.common.base.Ticker r3 = r3.r     // Catch: java.lang.Throwable -> L82
            long r3 = r3.a()     // Catch: java.lang.Throwable -> L82
            r2.t(r3)     // Catch: java.lang.Throwable -> L82
            java.util.concurrent.atomic.AtomicReferenceArray r10 = r2.j     // Catch: java.lang.Throwable -> L82
            int r3 = r10.length()     // Catch: java.lang.Throwable -> L82
            r11 = 1
            int r3 = r3 - r11
            r12 = r1 & r3
            java.lang.Object r3 = r10.get(r12)     // Catch: java.lang.Throwable -> L82
            com.google.common.cache.ReferenceEntry r3 = (com.google.common.cache.ReferenceEntry) r3     // Catch: java.lang.Throwable -> L82
            r4 = r3
        L30:
            if (r4 == 0) goto L7b
            java.lang.Object r5 = r4.getKey()     // Catch: java.lang.Throwable -> L82
            int r6 = r4.c()     // Catch: java.lang.Throwable -> L82
            if (r6 != r1) goto L85
            if (r5 == 0) goto L85
            com.google.common.cache.LocalCache r6 = r2.f12213c     // Catch: java.lang.Throwable -> L82
            com.google.common.base.Equivalence r6 = r6.i     // Catch: java.lang.Throwable -> L82
            boolean r6 = r6.d(r14, r5)     // Catch: java.lang.Throwable -> L82
            if (r6 == 0) goto L85
            com.google.common.cache.LocalCache$ValueReference r7 = r4.b()     // Catch: java.lang.Throwable -> L82
            java.lang.Object r6 = r7.get()     // Catch: java.lang.Throwable -> L82
            com.google.common.cache.LocalCache r14 = r2.f12213c     // Catch: java.lang.Throwable -> L82
            com.google.common.base.Equivalence r14 = r14.j     // Catch: java.lang.Throwable -> L82
            boolean r14 = r14.d(r15, r6)     // Catch: java.lang.Throwable -> L82
            if (r14 == 0) goto L5c
            r8 = r9
            goto L67
        L5c:
            if (r6 != 0) goto L7b
            boolean r14 = r7.isActive()     // Catch: java.lang.Throwable -> L82
            if (r14 == 0) goto L7b
            com.google.common.cache.RemovalCause r14 = com.google.common.cache.RemovalCause.g     // Catch: java.lang.Throwable -> L82
            r8 = r14
        L67:
            int r14 = r2.h     // Catch: java.lang.Throwable -> L82
            int r14 = r14 + r11
            r2.h = r14     // Catch: java.lang.Throwable -> L82
            com.google.common.cache.ReferenceEntry r14 = r2.s(r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L82
            int r15 = r2.f     // Catch: java.lang.Throwable -> L82
            int r15 = r15 - r11
            r10.set(r12, r14)     // Catch: java.lang.Throwable -> L82
            r2.f = r15     // Catch: java.lang.Throwable -> L82
            if (r8 != r9) goto L7b
            r0 = r11
        L7b:
            r2.unlock()
            r2.u()
            return r0
        L82:
            r0 = move-exception
            r14 = r0
            goto L8a
        L85:
            com.google.common.cache.ReferenceEntry r4 = r4.a()     // Catch: java.lang.Throwable -> L82
            goto L30
        L8a:
            r2.unlock()
            r2.u()
            throw r14
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LocalCache.remove(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        boolean z2;
        obj.getClass();
        obj3.getClass();
        boolean z3 = false;
        if (obj2 == null) {
            return false;
        }
        int c2 = c(obj);
        Segment e = e(c2);
        e.lock();
        try {
            long a2 = e.f12213c.r.a();
            e.t(a2);
            AtomicReferenceArray atomicReferenceArray = e.j;
            int length = c2 & (atomicReferenceArray.length() - 1);
            ReferenceEntry referenceEntry = (ReferenceEntry) atomicReferenceArray.get(length);
            long j = a2;
            ReferenceEntry referenceEntry2 = referenceEntry;
            while (true) {
                if (referenceEntry2 == null) {
                    z2 = z3;
                    break;
                }
                ReferenceEntry referenceEntry3 = referenceEntry;
                Object key = referenceEntry2.getKey();
                if (referenceEntry2.c() == c2 && key != null && e.f12213c.i.d(obj, key)) {
                    z2 = z3;
                    long j2 = j;
                    ValueReference b = referenceEntry2.b();
                    Object obj4 = b.get();
                    if (obj4 == null) {
                        if (b.isActive()) {
                            e.h++;
                            ReferenceEntry s = e.s(referenceEntry3, referenceEntry2, key, obj4, b, RemovalCause.g);
                            int i = e.f - 1;
                            atomicReferenceArray.set(length, s);
                            e.f = i;
                        }
                    } else {
                        if (e.f12213c.j.d(obj2, obj4)) {
                            e.h++;
                            e.d(obj, obj4, b.c(), RemovalCause.f);
                            e.v(referenceEntry2, obj3, j2);
                            e.e(referenceEntry2);
                            return true;
                        }
                        e.n(referenceEntry2, j2);
                    }
                } else {
                    boolean z4 = z3;
                    referenceEntry = referenceEntry3;
                    long j3 = j;
                    int i2 = c2;
                    referenceEntry2 = referenceEntry2.a();
                    c2 = i2;
                    j = j3;
                    z3 = z4;
                }
            }
            return z2;
        } finally {
            e.unlock();
            e.u();
        }
    }
}
