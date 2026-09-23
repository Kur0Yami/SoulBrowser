package kotlinx.coroutines.debug.internal;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.AbstractMutableMap;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0003\n\u000b\fR\u000b\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004R!\u0010\t\u001a\u0018\u0012\u0014\u0012\u00120\bR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000\u00078\u0002X\u0082\u0004¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "K", "V", "Lkotlin/collections/AbstractMutableMap;", "Lkotlinx/atomicfu/AtomicInt;", "_size", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;", "core", "Core", "Entry", "KeyValueSet", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
/* loaded from: classes4.dex */
public final class ConcurrentWeakMap<K, V> extends AbstractMutableMap<K, V> {
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(ConcurrentWeakMap.class, "_size$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(ConcurrentWeakMap.class, Object.class, "core$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* renamed from: c, reason: collision with root package name */
    public final ReferenceQueue f21679c;
    private volatile /* synthetic */ Object core$volatile = new Core(16);

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\bR\u0019\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00030\u00028\u0002X\u0082\u0004R\u000b\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004R\u0013\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00028\u0002X\u0082\u0004¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lkotlinx/atomicfu/AtomicArray;", "Lkotlinx/coroutines/debug/internal/HashedWeakRef;", "keys", "Lkotlinx/atomicfu/AtomicInt;", "load", "values", "KeyValueIterator", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class Core {
        public static final /* synthetic */ AtomicIntegerFieldUpdater g = AtomicIntegerFieldUpdater.newUpdater(Core.class, "load$volatile");

        /* renamed from: a, reason: collision with root package name */
        public final int f21680a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f21681c;
        public final /* synthetic */ AtomicReferenceArray d;
        public final /* synthetic */ AtomicReferenceArray e;
        private volatile /* synthetic */ int load$volatile;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0000\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;", "E", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
        /* loaded from: classes4.dex */
        public final class KeyValueIterator<E> implements Iterator<E>, KMutableIterator {

            /* renamed from: c, reason: collision with root package name */
            public final Function2 f21682c;
            public int f = -1;
            public Object g;
            public Object h;

            public KeyValueIterator(Function2 function2) {
                this.f21682c = function2;
                a();
            }

            public final void a() {
                T t;
                while (true) {
                    int i = this.f + 1;
                    this.f = i;
                    Core core = Core.this;
                    if (i < core.f21680a) {
                        HashedWeakRef hashedWeakRef = (HashedWeakRef) core.d.get(i);
                        if (hashedWeakRef != null && (t = hashedWeakRef.get()) != 0) {
                            this.g = t;
                            Object obj = core.e.get(this.f);
                            if (obj instanceof Marked) {
                                obj = ((Marked) obj).f21693a;
                            }
                            if (obj != null) {
                                this.h = obj;
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.f < Core.this.f21680a) {
                    return true;
                }
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (this.f < Core.this.f21680a) {
                    Object obj = this.g;
                    if (obj == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("key");
                        obj = Unit.INSTANCE;
                    }
                    Object obj2 = this.h;
                    if (obj2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("value");
                        obj2 = Unit.INSTANCE;
                    }
                    Object invoke = this.f21682c.invoke(obj, obj2);
                    a();
                    return invoke;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException("not implemented");
            }
        }

        public Core(int i) {
            this.f21680a = i;
            this.b = Integer.numberOfLeadingZeros(i) + 1;
            this.f21681c = (i * 2) / 3;
            this.d = new AtomicReferenceArray(i);
            this.e = new AtomicReferenceArray(i);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x005c, code lost:
        
            r3 = r8.e;
            r4 = r3.get(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
        
            if ((r4 instanceof kotlinx.coroutines.debug.internal.Marked) == false) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        
            if (r3.compareAndSet(r0, r4, r10) == false) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
        
            if (r3.get(r0) == r4) goto L57;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x006f, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x001c, code lost:
        
            if (r1 == false) goto L9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x001e, code lost:
        
            r1 = r4.get(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0024, code lost:
        
            if (r1 < r8.f21681c) goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x002d, code lost:
        
            if (r4.compareAndSet(r8, r1, r1 + 1) == false) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x002f, code lost:
        
            r1 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0030, code lost:
        
            r6 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0031, code lost:
        
            if (r11 != null) goto L18;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0033, code lost:
        
            r11 = new kotlinx.coroutines.debug.internal.HashedWeakRef(r9, r8.f.f21679c);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x003c, code lost:
        
            r7 = r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0041, code lost:
        
            if (r2.compareAndSet(r0, null, r7) == false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0048, code lost:
        
            if (r2.get(r0) == null) goto L61;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x004a, code lost:
        
            r1 = r6;
            r11 = r7;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object a(java.lang.Object r9, java.lang.Object r10, kotlinx.coroutines.debug.internal.HashedWeakRef r11) {
            /*
                r8 = this;
                int r0 = r9.hashCode()
                r1 = -1640531527(0xffffffff9e3779b9, float:-9.713111E-21)
                int r0 = r0 * r1
                int r1 = r8.b
                int r0 = r0 >>> r1
                r1 = 0
            Lc:
                java.util.concurrent.atomic.AtomicReferenceArray r2 = r8.d
                java.lang.Object r3 = r2.get(r0)
                kotlinx.coroutines.debug.internal.HashedWeakRef r3 = (kotlinx.coroutines.debug.internal.HashedWeakRef) r3
                java.util.concurrent.atomic.AtomicIntegerFieldUpdater r4 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.Core.g
                if (r3 != 0) goto L4d
                r5 = 0
                if (r10 != 0) goto L1c
                return r5
            L1c:
                if (r1 != 0) goto L30
            L1e:
                int r1 = r4.get(r8)
                int r3 = r8.f21681c
                if (r1 < r3) goto L27
                goto L66
            L27:
                int r3 = r1 + 1
                boolean r1 = r4.compareAndSet(r8, r1, r3)
                if (r1 == 0) goto L1e
                r1 = 1
            L30:
                r6 = r1
                if (r11 != 0) goto L3c
                kotlinx.coroutines.debug.internal.HashedWeakRef r11 = new kotlinx.coroutines.debug.internal.HashedWeakRef
                kotlinx.coroutines.debug.internal.ConcurrentWeakMap r1 = kotlinx.coroutines.debug.internal.ConcurrentWeakMap.this
                java.lang.ref.ReferenceQueue r1 = r1.f21679c
                r11.<init>(r9, r1)
            L3c:
                r7 = r11
            L3d:
                boolean r11 = r2.compareAndSet(r0, r5, r7)
                if (r11 == 0) goto L44
                goto L5c
            L44:
                java.lang.Object r11 = r2.get(r0)
                if (r11 == 0) goto L3d
                r1 = r6
                r11 = r7
                goto Lc
            L4d:
                java.lang.Object r2 = r3.get()
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r2)
                if (r3 == 0) goto L77
                if (r1 == 0) goto L5c
                r4.decrementAndGet(r8)
            L5c:
                java.util.concurrent.atomic.AtomicReferenceArray r3 = r8.e
                java.lang.Object r4 = r3.get(r0)
                boolean r9 = r4 instanceof kotlinx.coroutines.debug.internal.Marked
                if (r9 == 0) goto L69
            L66:
                kotlinx.coroutines.internal.Symbol r9 = kotlinx.coroutines.debug.internal.ConcurrentWeakMapKt.f21687a
                return r9
            L69:
                boolean r9 = r3.compareAndSet(r0, r4, r10)
                if (r9 == 0) goto L70
                return r4
            L70:
                java.lang.Object r9 = r3.get(r0)
                if (r9 == r4) goto L69
                goto L5c
            L77:
                if (r2 != 0) goto L7c
                r8.c(r0)
            L7c:
                if (r0 != 0) goto L80
                int r0 = r8.f21680a
            L80:
                int r0 = r0 + (-1)
                goto Lc
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.ConcurrentWeakMap.Core.a(java.lang.Object, java.lang.Object, kotlinx.coroutines.debug.internal.HashedWeakRef):java.lang.Object");
        }

        public final Core b() {
            Object obj;
            Object obj2;
            Marked marked;
            while (true) {
                ConcurrentWeakMap concurrentWeakMap = ConcurrentWeakMap.this;
                Core core = new Core(Integer.highestOneBit(RangesKt.coerceAtLeast(concurrentWeakMap.size(), 4)) * 4);
                for (int i = 0; i < this.f21680a; i++) {
                    HashedWeakRef hashedWeakRef = (HashedWeakRef) this.d.get(i);
                    if (hashedWeakRef != null) {
                        obj = hashedWeakRef.get();
                    } else {
                        obj = null;
                    }
                    if (hashedWeakRef != null && obj == null) {
                        c(i);
                    }
                    while (true) {
                        AtomicReferenceArray atomicReferenceArray = this.e;
                        obj2 = atomicReferenceArray.get(i);
                        if (obj2 instanceof Marked) {
                            obj2 = ((Marked) obj2).f21693a;
                            break;
                        }
                        if (obj2 == null) {
                            marked = ConcurrentWeakMapKt.b;
                        } else if (Intrinsics.areEqual(obj2, Boolean.TRUE)) {
                            marked = ConcurrentWeakMapKt.f21688c;
                        } else {
                            marked = new Marked(obj2);
                        }
                        while (!atomicReferenceArray.compareAndSet(i, obj2, marked)) {
                            if (atomicReferenceArray.get(i) != obj2) {
                                break;
                            }
                        }
                        break;
                    }
                    if (obj == null || obj2 == null || core.a(obj, obj2, hashedWeakRef) != ConcurrentWeakMapKt.f21687a) {
                    }
                }
                return core;
            }
        }

        public final void c(int i) {
            while (true) {
                AtomicReferenceArray atomicReferenceArray = this.e;
                Object obj = atomicReferenceArray.get(i);
                if (obj == null || (obj instanceof Marked)) {
                    return;
                }
                while (!atomicReferenceArray.compareAndSet(i, obj, null)) {
                    if (atomicReferenceArray.get(i) != obj) {
                        break;
                    }
                }
                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ConcurrentWeakMap.f;
                ConcurrentWeakMap concurrentWeakMap = ConcurrentWeakMap.this;
                concurrentWeakMap.getClass();
                ConcurrentWeakMap.f.decrementAndGet(concurrentWeakMap);
                return;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0000\b\u0002\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;", "K", "V", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Entry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {

        /* renamed from: c, reason: collision with root package name */
        public final Object f21683c;
        public final Object f;

        public Entry(Object obj, Object obj2) {
            this.f21683c = obj;
            this.f = obj2;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f21683c;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("not implemented");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0082\u0004\u0018\u0000*\u0004\b\u0002\u0010\u00012\b\u0012\u0004\u0012\u00028\u00020\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;", "E", "Lkotlin/collections/AbstractMutableSet;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public final class KeyValueSet<E> extends AbstractMutableSet<E> {

        /* renamed from: c, reason: collision with root package name */
        public final Function2 f21684c;

        public KeyValueSet(Function2 function2) {
            this.f21684c = function2;
        }

        @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException("not implemented");
        }

        @Override // kotlin.collections.AbstractMutableSet
        public final int getSize() {
            return ConcurrentWeakMap.this.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            Core core = (Core) ConcurrentWeakMap.g.get(ConcurrentWeakMap.this);
            core.getClass();
            return new Core.KeyValueIterator(this.f21684c);
        }
    }

    public ConcurrentWeakMap(boolean z) {
        ReferenceQueue referenceQueue;
        if (z) {
            referenceQueue = new ReferenceQueue();
        } else {
            referenceQueue = null;
        }
        this.f21679c = referenceQueue;
    }

    public final synchronized Object a(Object obj, Object obj2) {
        Object a2;
        Core core = (Core) g.get(this);
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = Core.g;
            a2 = core.a(obj, obj2, null);
            if (a2 == ConcurrentWeakMapKt.f21687a) {
                core = core.b();
                g.set(this, core);
            }
        }
        return a2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (obj != null) {
            Core core = (Core) g.get(this);
            core.getClass();
            int hashCode = (obj.hashCode() * (-1640531527)) >>> core.b;
            while (true) {
                HashedWeakRef hashedWeakRef = (HashedWeakRef) core.d.get(hashCode);
                if (hashedWeakRef == null) {
                    return null;
                }
                T t = hashedWeakRef.get();
                if (Intrinsics.areEqual(obj, t)) {
                    Object obj2 = core.e.get(hashCode);
                    if (obj2 instanceof Marked) {
                        return ((Marked) obj2).f21693a;
                    }
                    return obj2;
                }
                if (t == 0) {
                    core.c(hashCode);
                }
                if (hashCode == 0) {
                    hashCode = core.f21680a;
                }
                hashCode--;
            }
        } else {
            return null;
        }
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getEntries() {
        return new KeyValueSet(ConcurrentWeakMap$entries$1.f21685c);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final Set getKeys() {
        return new KeyValueSet(ConcurrentWeakMap$keys$1.f21686c);
    }

    @Override // kotlin.collections.AbstractMutableMap
    public final int getSize() {
        return f.get(this);
    }

    @Override // kotlin.collections.AbstractMutableMap, java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        Core core = (Core) g.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = Core.g;
        Object a2 = core.a(obj, obj2, null);
        if (a2 == ConcurrentWeakMapKt.f21687a) {
            a2 = a(obj, obj2);
        }
        if (a2 == null) {
            f.incrementAndGet(this);
        }
        return a2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (obj == null) {
            return null;
        }
        Core core = (Core) g.get(this);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = Core.g;
        Object a2 = core.a(obj, null, null);
        if (a2 == ConcurrentWeakMapKt.f21687a) {
            a2 = a(obj, null);
        }
        if (a2 != null) {
            f.decrementAndGet(this);
        }
        return a2;
    }
}
