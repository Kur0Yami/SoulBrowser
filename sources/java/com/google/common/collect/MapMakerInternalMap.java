package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap.InternalEntry;
import com.google.common.collect.MapMakerInternalMap.Segment;
import com.google.common.primitives.Ints;
import j$.util.concurrent.ConcurrentMap;
import java.io.Serializable;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Function;
import org.jspecify.annotations.NullUnmarked;

/* JADX INFO: Access modifiers changed from: package-private */
@NullUnmarked
@GwtIncompatible
@J2ktIncompatible
/* loaded from: classes3.dex */
public final class MapMakerInternalMap<K, V, E extends InternalEntry<K, V, E>, S extends Segment<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable, j$.util.concurrent.ConcurrentMap {
    public static final AnonymousClass1 n = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final transient int f12329c;
    public final transient int f;
    public final transient Segment[] g;
    public final int h = Math.min(4, 65536);
    public final Equivalence i;
    public final transient InternalEntryHelper j;
    public transient Set k;
    public transient Collection l;
    public transient Set m;

    /* renamed from: com.google.common.collect.MapMakerInternalMap$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements WeakValueReference<Object, Object, DummyInternalEntry> {
        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public final /* bridge */ /* synthetic */ InternalEntry a() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public final WeakValueReference b(ReferenceQueue referenceQueue, WeakValueEntry weakValueEntry) {
            return this;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public final void clear() {
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public final Object get() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AbstractSerializationProxy<K, V> extends ForwardingConcurrentMap<K, V> implements Serializable {
        @Override // com.google.common.collect.ForwardingConcurrentMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final /* bridge */ /* synthetic */ Object e0() {
            return null;
        }

        @Override // com.google.common.collect.ForwardingConcurrentMap, com.google.common.collect.ForwardingMap
        /* renamed from: h0 */
        public final /* bridge */ /* synthetic */ Map e0() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AbstractStrongKeyEntry<K, V, E extends InternalEntry<K, V, E>> implements InternalEntry<K, V, E> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f12330c;
        public final int f;

        public AbstractStrongKeyEntry(int i, Object obj) {
            this.f12330c = obj;
            this.f = i;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public InternalEntry a() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final int c() {
            return this.f;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getKey() {
            return this.f12330c;
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class AbstractWeakKeyEntry<K, V, E extends InternalEntry<K, V, E>> extends WeakReference<K> implements InternalEntry<K, V, E> {

        /* renamed from: c, reason: collision with root package name */
        public final int f12331c;

        public AbstractWeakKeyEntry(ReferenceQueue referenceQueue, Object obj, int i) {
            super(obj, referenceQueue);
            this.f12331c = i;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public InternalEntry a() {
            return null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final int c() {
            return this.f12331c;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getKey() {
            return get();
        }
    }

    /* loaded from: classes3.dex */
    public static final class CleanupMapTask implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class DummyInternalEntry implements InternalEntry<Object, Object, DummyInternalEntry> {
        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final InternalEntry a() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final int c() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getKey() {
            throw new AssertionError();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getValue() {
            throw new AssertionError();
        }
    }

    /* loaded from: classes3.dex */
    public final class EntryIterator extends MapMakerInternalMap<K, V, E, S>.HashIterator<Map.Entry<K, V>> {
    }

    /* loaded from: classes3.dex */
    public final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            MapMakerInternalMap mapMakerInternalMap;
            Object obj2;
            if ((obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (mapMakerInternalMap = MapMakerInternalMap.this).get(key)) != null && mapMakerInternalMap.j.c().a().d(entry.getValue(), obj2)) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new HashIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            if (!(obj instanceof Map.Entry) || (key = (entry = (Map.Entry) obj).getKey()) == null || !MapMakerInternalMap.this.remove(key, entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public abstract class HashIterator<T> implements Iterator<T> {

        /* renamed from: c, reason: collision with root package name */
        public int f12333c;
        public int f = -1;
        public Segment g;
        public AtomicReferenceArray h;
        public InternalEntry i;
        public WriteThroughEntry j;
        public WriteThroughEntry k;

        public HashIterator() {
            this.f12333c = MapMakerInternalMap.this.g.length - 1;
            a();
        }

        public final void a() {
            this.j = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i = this.f12333c;
                if (i >= 0) {
                    Segment[] segmentArr = MapMakerInternalMap.this.g;
                    this.f12333c = i - 1;
                    Segment segment = segmentArr[i];
                    this.g = segment;
                    if (segment.f != 0) {
                        this.h = this.g.i;
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

        public final boolean b(InternalEntry internalEntry) {
            Object value;
            MapMakerInternalMap mapMakerInternalMap = MapMakerInternalMap.this;
            try {
                Object key = internalEntry.getKey();
                if (internalEntry.getKey() == null) {
                    value = null;
                } else {
                    value = internalEntry.getValue();
                }
                if (value != null) {
                    this.j = new WriteThroughEntry(key, value);
                    this.g.g();
                    return true;
                }
                this.g.g();
                return false;
            } catch (Throwable th) {
                this.g.g();
                throw th;
            }
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
            InternalEntry internalEntry = this.i;
            if (internalEntry == null) {
                return false;
            }
            while (true) {
                this.i = internalEntry.a();
                InternalEntry internalEntry2 = this.i;
                if (internalEntry2 != null) {
                    if (b(internalEntry2)) {
                        return true;
                    }
                    internalEntry = this.i;
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
                    InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(i);
                    this.i = internalEntry;
                    if (internalEntry != null && (b(internalEntry) || d())) {
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
            CollectPreconditions.d(z);
            MapMakerInternalMap.this.remove(this.k.getKey());
            this.k = null;
        }
    }

    /* loaded from: classes3.dex */
    public interface InternalEntry<K, V, E extends InternalEntry<K, V, E>> {
        InternalEntry a();

        int c();

        Object getKey();

        Object getValue();
    }

    /* loaded from: classes3.dex */
    public interface InternalEntryHelper<K, V, E extends InternalEntry<K, V, E>, S extends Segment<K, V, E, S>> {
        Segment a(MapMakerInternalMap mapMakerInternalMap, int i);

        InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2);

        Strength c();

        void d(Segment segment, InternalEntry internalEntry, Object obj);

        InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry);
    }

    /* loaded from: classes3.dex */
    public final class KeyIterator extends MapMakerInternalMap<K, V, E, S>.HashIterator<K> {
        @Override // com.google.common.collect.MapMakerInternalMap.HashIterator, java.util.Iterator
        public final Object next() {
            return c().getKey();
        }
    }

    /* loaded from: classes3.dex */
    public final class KeySet extends AbstractSet<K> {
        public KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new HashIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (MapMakerInternalMap.this.remove(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Segment<K, V, E extends InternalEntry<K, V, E>, S extends Segment<K, V, E, S>> extends ReentrantLock {
        public static final /* synthetic */ int k = 0;

        /* renamed from: c, reason: collision with root package name */
        public final MapMakerInternalMap f12335c;
        public volatile int f;
        public int g;
        public int h;
        public volatile AtomicReferenceArray i;
        public final AtomicInteger j = new AtomicInteger();

        public Segment(MapMakerInternalMap mapMakerInternalMap, int i) {
            this.f12335c = mapMakerInternalMap;
            AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i);
            this.h = (atomicReferenceArray.length() * 3) / 4;
            this.i = atomicReferenceArray;
        }

        public final void a(ReferenceQueue referenceQueue) {
            int i = 0;
            do {
                Object poll = referenceQueue.poll();
                if (poll != null) {
                    InternalEntry internalEntry = (InternalEntry) poll;
                    MapMakerInternalMap mapMakerInternalMap = this.f12335c;
                    mapMakerInternalMap.getClass();
                    int c2 = internalEntry.c();
                    Segment b = mapMakerInternalMap.b(c2);
                    b.lock();
                    try {
                        AtomicReferenceArray atomicReferenceArray = b.i;
                        int length = c2 & (atomicReferenceArray.length() - 1);
                        InternalEntry internalEntry2 = (InternalEntry) atomicReferenceArray.get(length);
                        InternalEntry internalEntry3 = internalEntry2;
                        while (true) {
                            if (internalEntry3 == null) {
                                break;
                            }
                            if (internalEntry3 == internalEntry) {
                                b.g++;
                                InternalEntry i2 = b.i(internalEntry2, internalEntry3);
                                int i3 = b.f - 1;
                                atomicReferenceArray.set(length, i2);
                                b.f = i3;
                                break;
                            }
                            internalEntry3 = internalEntry3.a();
                        }
                        i++;
                    } finally {
                        b.unlock();
                    }
                } else {
                    return;
                }
            } while (i != 16);
        }

        public final void b(ReferenceQueue referenceQueue) {
            int i = 0;
            do {
                Object poll = referenceQueue.poll();
                if (poll != null) {
                    WeakValueReference weakValueReference = (WeakValueReference) poll;
                    MapMakerInternalMap mapMakerInternalMap = this.f12335c;
                    mapMakerInternalMap.getClass();
                    InternalEntry a2 = weakValueReference.a();
                    int c2 = a2.c();
                    Segment b = mapMakerInternalMap.b(c2);
                    Object key = a2.getKey();
                    b.lock();
                    try {
                        AtomicReferenceArray atomicReferenceArray = b.i;
                        int length = (atomicReferenceArray.length() - 1) & c2;
                        InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                        InternalEntry internalEntry2 = internalEntry;
                        while (true) {
                            if (internalEntry2 == null) {
                                break;
                            }
                            Object key2 = internalEntry2.getKey();
                            if (internalEntry2.c() == c2 && key2 != null && b.f12335c.i.d(key, key2)) {
                                if (((WeakValueEntry) internalEntry2).b() == weakValueReference) {
                                    b.g++;
                                    InternalEntry i2 = b.i(internalEntry, internalEntry2);
                                    int i3 = b.f - 1;
                                    atomicReferenceArray.set(length, i2);
                                    b.f = i3;
                                }
                            } else {
                                internalEntry2 = internalEntry2.a();
                            }
                        }
                        i++;
                    } finally {
                        b.unlock();
                    }
                } else {
                    return;
                }
            } while (i != 16);
        }

        public final void c() {
            AtomicReferenceArray atomicReferenceArray = this.i;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.f;
            AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
            this.h = (atomicReferenceArray2.length() * 3) / 4;
            int length2 = atomicReferenceArray2.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(i2);
                if (internalEntry != null) {
                    InternalEntry a2 = internalEntry.a();
                    int c2 = internalEntry.c() & length2;
                    if (a2 == null) {
                        atomicReferenceArray2.set(c2, internalEntry);
                    } else {
                        InternalEntry internalEntry2 = internalEntry;
                        while (a2 != null) {
                            int c3 = a2.c() & length2;
                            if (c3 != c2) {
                                internalEntry2 = a2;
                                c2 = c3;
                            }
                            a2 = a2.a();
                        }
                        atomicReferenceArray2.set(c2, internalEntry2);
                        while (internalEntry != internalEntry2) {
                            int c4 = internalEntry.c() & length2;
                            InternalEntry b = this.f12335c.j.b(k(), internalEntry, (InternalEntry) atomicReferenceArray2.get(c4));
                            if (b != null) {
                                atomicReferenceArray2.set(c4, b);
                            } else {
                                i--;
                            }
                            internalEntry = internalEntry.a();
                        }
                    }
                }
            }
            this.i = atomicReferenceArray2;
            this.f = i;
        }

        public final InternalEntry d(int i, Object obj) {
            if (this.f != 0) {
                for (InternalEntry internalEntry = (InternalEntry) this.i.get((r0.length() - 1) & i); internalEntry != null; internalEntry = internalEntry.a()) {
                    if (internalEntry.c() == i) {
                        Object key = internalEntry.getKey();
                        if (key == null) {
                            m();
                        } else if (this.f12335c.i.d(obj, key)) {
                            return internalEntry;
                        }
                    }
                }
                return null;
            }
            return null;
        }

        public void e() {
        }

        public void f() {
        }

        public final void g() {
            if ((this.j.incrementAndGet() & 63) == 0) {
                j();
            }
        }

        public final Object h(Object obj, int i, Object obj2, boolean z) {
            lock();
            try {
                j();
                int i2 = this.f + 1;
                if (i2 > this.h) {
                    c();
                    i2 = this.f + 1;
                }
                AtomicReferenceArray atomicReferenceArray = this.i;
                int length = (atomicReferenceArray.length() - 1) & i;
                InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
                for (InternalEntry internalEntry2 = internalEntry; internalEntry2 != null; internalEntry2 = internalEntry2.a()) {
                    Object key = internalEntry2.getKey();
                    if (internalEntry2.c() == i && key != null && this.f12335c.i.d(obj, key)) {
                        Object value = internalEntry2.getValue();
                        if (value == null) {
                            this.g++;
                            l(internalEntry2, obj2);
                            this.f = this.f;
                            unlock();
                            return null;
                        }
                        if (z) {
                            unlock();
                            return value;
                        }
                        this.g++;
                        l(internalEntry2, obj2);
                        unlock();
                        return value;
                    }
                }
                this.g++;
                InternalEntry e = this.f12335c.j.e(k(), obj, i, internalEntry);
                l(e, obj2);
                atomicReferenceArray.set(length, e);
                this.f = i2;
                unlock();
                return null;
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        }

        public final InternalEntry i(InternalEntry internalEntry, InternalEntry internalEntry2) {
            int i = this.f;
            InternalEntry a2 = internalEntry2.a();
            while (internalEntry != internalEntry2) {
                InternalEntry b = this.f12335c.j.b(k(), internalEntry, a2);
                if (b != null) {
                    a2 = b;
                } else {
                    i--;
                }
                internalEntry = internalEntry.a();
            }
            this.f = i;
            return a2;
        }

        public final void j() {
            if (tryLock()) {
                try {
                    f();
                    this.j.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract Segment k();

        public final void l(InternalEntry internalEntry, Object obj) {
            this.f12335c.j.d(k(), internalEntry, obj);
        }

        public final void m() {
            if (tryLock()) {
                try {
                    f();
                } finally {
                    unlock();
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static final class SerializationProxy<K, V> extends AbstractSerializationProxy<K, V> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class Strength {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12336c;
        public static final AnonymousClass2 f;
        public static final /* synthetic */ Strength[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.MapMakerInternalMap$Strength$1] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.MapMakerInternalMap$Strength$2] */
        static {
            ?? r0 = new Strength() { // from class: com.google.common.collect.MapMakerInternalMap.Strength.1
                @Override // com.google.common.collect.MapMakerInternalMap.Strength
                public final Equivalence a() {
                    return Equivalence.c();
                }
            };
            f12336c = r0;
            ?? r1 = new Strength() { // from class: com.google.common.collect.MapMakerInternalMap.Strength.2
                @Override // com.google.common.collect.MapMakerInternalMap.Strength
                public final Equivalence a() {
                    return Equivalence.e();
                }
            };
            f = r1;
            g = new Strength[]{r0, r1};
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
    public static class StrongKeyDummyValueEntry<K> extends AbstractStrongKeyEntry<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>> implements StrongValueEntry<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>> {

        /* loaded from: classes3.dex */
        public static final class Helper<K> implements InternalEntryHelper<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>, StrongKeyDummyValueSegment<K>> {
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Segment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new Segment(mapMakerInternalMap, i);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2) {
                StrongKeyDummyValueEntry strongKeyDummyValueEntry = (StrongKeyDummyValueEntry) internalEntry;
                StrongKeyDummyValueEntry strongKeyDummyValueEntry2 = (StrongKeyDummyValueEntry) internalEntry2;
                Object obj = strongKeyDummyValueEntry.f12330c;
                int i = strongKeyDummyValueEntry.f;
                if (strongKeyDummyValueEntry2 == null) {
                    return new AbstractStrongKeyEntry(i, obj);
                }
                return new LinkedStrongKeyDummyValueEntry(obj, i, strongKeyDummyValueEntry2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Strength c() {
                return Strength.f12336c;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final /* bridge */ /* synthetic */ void d(Segment segment, InternalEntry internalEntry, Object obj) {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry) {
                StrongKeyDummyValueEntry strongKeyDummyValueEntry = (StrongKeyDummyValueEntry) internalEntry;
                if (strongKeyDummyValueEntry == null) {
                    return new AbstractStrongKeyEntry(i, obj);
                }
                return new LinkedStrongKeyDummyValueEntry(obj, i, strongKeyDummyValueEntry);
            }
        }

        /* loaded from: classes3.dex */
        public static final class LinkedStrongKeyDummyValueEntry<K> extends StrongKeyDummyValueEntry<K> {
            public final StrongKeyDummyValueEntry g;

            public LinkedStrongKeyDummyValueEntry(Object obj, int i, StrongKeyDummyValueEntry strongKeyDummyValueEntry) {
                super(i, obj);
                this.g = strongKeyDummyValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractStrongKeyEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final InternalEntry a() {
                return this.g;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.StrongKeyDummyValueEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final /* bridge */ /* synthetic */ Object getValue() {
                return MapMaker.Dummy.f12328c;
            }
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public /* bridge */ /* synthetic */ Object getValue() {
            return MapMaker.Dummy.f12328c;
        }
    }

    /* loaded from: classes3.dex */
    public static final class StrongKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, StrongKeyDummyValueEntry<K>, StrongKeyDummyValueSegment<K>> {
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final Segment k() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class StrongKeyStrongValueEntry<K, V> extends AbstractStrongKeyEntry<K, V, StrongKeyStrongValueEntry<K, V>> implements StrongValueEntry<K, V, StrongKeyStrongValueEntry<K, V>> {
        public volatile Object g;

        /* loaded from: classes3.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, StrongKeyStrongValueEntry<K, V>, StrongKeyStrongValueSegment<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public static final Helper f12337a = new Object();

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Segment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new Segment(mapMakerInternalMap, i);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2) {
                StrongKeyStrongValueEntry linkedStrongKeyStrongValueEntry;
                StrongKeyStrongValueEntry strongKeyStrongValueEntry = (StrongKeyStrongValueEntry) internalEntry;
                StrongKeyStrongValueEntry strongKeyStrongValueEntry2 = (StrongKeyStrongValueEntry) internalEntry2;
                Object obj = strongKeyStrongValueEntry.f12330c;
                int i = strongKeyStrongValueEntry.f;
                if (strongKeyStrongValueEntry2 == null) {
                    linkedStrongKeyStrongValueEntry = new StrongKeyStrongValueEntry(i, obj);
                } else {
                    linkedStrongKeyStrongValueEntry = new LinkedStrongKeyStrongValueEntry(obj, i, strongKeyStrongValueEntry2);
                }
                linkedStrongKeyStrongValueEntry.g = strongKeyStrongValueEntry.g;
                return linkedStrongKeyStrongValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Strength c() {
                return Strength.f12336c;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final void d(Segment segment, InternalEntry internalEntry, Object obj) {
                ((StrongKeyStrongValueEntry) internalEntry).g = obj;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry) {
                StrongKeyStrongValueEntry strongKeyStrongValueEntry = (StrongKeyStrongValueEntry) internalEntry;
                if (strongKeyStrongValueEntry == null) {
                    return new StrongKeyStrongValueEntry(i, obj);
                }
                return new LinkedStrongKeyStrongValueEntry(obj, i, strongKeyStrongValueEntry);
            }
        }

        /* loaded from: classes3.dex */
        public static final class LinkedStrongKeyStrongValueEntry<K, V> extends StrongKeyStrongValueEntry<K, V> {
            public final StrongKeyStrongValueEntry h;

            public LinkedStrongKeyStrongValueEntry(Object obj, int i, StrongKeyStrongValueEntry strongKeyStrongValueEntry) {
                super(i, obj);
                this.h = strongKeyStrongValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractStrongKeyEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final InternalEntry a() {
                return this.h;
            }
        }

        public StrongKeyStrongValueEntry(int i, Object obj) {
            super(i, obj);
            this.g = null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getValue() {
            return this.g;
        }
    }

    /* loaded from: classes3.dex */
    public static final class StrongKeyStrongValueSegment<K, V> extends Segment<K, V, StrongKeyStrongValueEntry<K, V>, StrongKeyStrongValueSegment<K, V>> {
        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final Segment k() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class StrongKeyWeakValueEntry<K, V> extends AbstractStrongKeyEntry<K, V, StrongKeyWeakValueEntry<K, V>> implements WeakValueEntry<K, V, StrongKeyWeakValueEntry<K, V>> {
        public volatile WeakValueReference g;

        /* loaded from: classes3.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, StrongKeyWeakValueEntry<K, V>, StrongKeyWeakValueSegment<K, V>> {
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Segment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new StrongKeyWeakValueSegment(mapMakerInternalMap, i);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2) {
                StrongKeyWeakValueEntry linkedStrongKeyWeakValueEntry;
                StrongKeyWeakValueSegment strongKeyWeakValueSegment = (StrongKeyWeakValueSegment) segment;
                StrongKeyWeakValueEntry strongKeyWeakValueEntry = (StrongKeyWeakValueEntry) internalEntry;
                StrongKeyWeakValueEntry strongKeyWeakValueEntry2 = (StrongKeyWeakValueEntry) internalEntry2;
                int i = Segment.k;
                if (strongKeyWeakValueEntry.getValue() == null) {
                    return null;
                }
                Object obj = strongKeyWeakValueEntry.f12330c;
                int i2 = strongKeyWeakValueEntry.f;
                if (strongKeyWeakValueEntry2 == null) {
                    linkedStrongKeyWeakValueEntry = new StrongKeyWeakValueEntry(i2, obj);
                } else {
                    linkedStrongKeyWeakValueEntry = new LinkedStrongKeyWeakValueEntry(obj, i2, strongKeyWeakValueEntry2);
                }
                linkedStrongKeyWeakValueEntry.g = strongKeyWeakValueEntry.g.b(strongKeyWeakValueSegment.l, linkedStrongKeyWeakValueEntry);
                return linkedStrongKeyWeakValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Strength c() {
                return Strength.f;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final void d(Segment segment, InternalEntry internalEntry, Object obj) {
                StrongKeyWeakValueEntry strongKeyWeakValueEntry = (StrongKeyWeakValueEntry) internalEntry;
                WeakValueReference weakValueReference = strongKeyWeakValueEntry.g;
                strongKeyWeakValueEntry.g = new WeakValueReferenceImpl(((StrongKeyWeakValueSegment) segment).l, obj, strongKeyWeakValueEntry);
                weakValueReference.clear();
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry) {
                StrongKeyWeakValueEntry strongKeyWeakValueEntry = (StrongKeyWeakValueEntry) internalEntry;
                if (strongKeyWeakValueEntry == null) {
                    return new StrongKeyWeakValueEntry(i, obj);
                }
                return new LinkedStrongKeyWeakValueEntry(obj, i, strongKeyWeakValueEntry);
            }
        }

        /* loaded from: classes3.dex */
        public static final class LinkedStrongKeyWeakValueEntry<K, V> extends StrongKeyWeakValueEntry<K, V> {
            public final StrongKeyWeakValueEntry h;

            public LinkedStrongKeyWeakValueEntry(Object obj, int i, StrongKeyWeakValueEntry strongKeyWeakValueEntry) {
                super(i, obj);
                this.h = strongKeyWeakValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractStrongKeyEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final InternalEntry a() {
                return this.h;
            }
        }

        public StrongKeyWeakValueEntry(int i, Object obj) {
            super(i, obj);
            this.g = MapMakerInternalMap.n;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public final WeakValueReference b() {
            return this.g;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getValue() {
            return this.g.get();
        }
    }

    /* loaded from: classes3.dex */
    public static final class StrongKeyWeakValueSegment<K, V> extends Segment<K, V, StrongKeyWeakValueEntry<K, V>, StrongKeyWeakValueSegment<K, V>> {
        public final ReferenceQueue l;

        public StrongKeyWeakValueSegment(MapMakerInternalMap mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.l = new ReferenceQueue();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void e() {
            do {
            } while (this.l.poll() != null);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void f() {
            b(this.l);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final Segment k() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public interface StrongValueEntry<K, V, E extends InternalEntry<K, V, E>> extends InternalEntry<K, V, E> {
    }

    /* loaded from: classes3.dex */
    public final class ValueIterator extends MapMakerInternalMap<K, V, E, S>.HashIterator<V> {
        @Override // com.google.common.collect.MapMakerInternalMap.HashIterator, java.util.Iterator
        public final Object next() {
            return c().getValue();
        }
    }

    /* loaded from: classes3.dex */
    public final class Values extends AbstractCollection<V> {
        public Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            MapMakerInternalMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return MapMakerInternalMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return MapMakerInternalMap.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new HashIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return MapMakerInternalMap.this.size();
        }
    }

    /* loaded from: classes3.dex */
    public static class WeakKeyDummyValueEntry<K> extends AbstractWeakKeyEntry<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>> implements StrongValueEntry<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>> {

        /* loaded from: classes3.dex */
        public static final class Helper<K> implements InternalEntryHelper<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>, WeakKeyDummyValueSegment<K>> {
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Segment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new WeakKeyDummyValueSegment(mapMakerInternalMap, i);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2) {
                WeakKeyDummyValueSegment weakKeyDummyValueSegment = (WeakKeyDummyValueSegment) segment;
                WeakKeyDummyValueEntry weakKeyDummyValueEntry = (WeakKeyDummyValueEntry) internalEntry;
                WeakKeyDummyValueEntry weakKeyDummyValueEntry2 = (WeakKeyDummyValueEntry) internalEntry2;
                K k = weakKeyDummyValueEntry.get();
                if (k == null) {
                    return null;
                }
                int i = weakKeyDummyValueEntry.f12331c;
                if (weakKeyDummyValueEntry2 == null) {
                    return new AbstractWeakKeyEntry(weakKeyDummyValueSegment.l, k, i);
                }
                return new LinkedWeakKeyDummyValueEntry(weakKeyDummyValueSegment.l, k, i, weakKeyDummyValueEntry2);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Strength c() {
                return Strength.f12336c;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final /* bridge */ /* synthetic */ void d(Segment segment, InternalEntry internalEntry, Object obj) {
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry) {
                WeakKeyDummyValueSegment weakKeyDummyValueSegment = (WeakKeyDummyValueSegment) segment;
                WeakKeyDummyValueEntry weakKeyDummyValueEntry = (WeakKeyDummyValueEntry) internalEntry;
                if (weakKeyDummyValueEntry == null) {
                    return new AbstractWeakKeyEntry(weakKeyDummyValueSegment.l, obj, i);
                }
                return new LinkedWeakKeyDummyValueEntry(weakKeyDummyValueSegment.l, obj, i, weakKeyDummyValueEntry);
            }
        }

        /* loaded from: classes3.dex */
        public static final class LinkedWeakKeyDummyValueEntry<K> extends WeakKeyDummyValueEntry<K> {
            public final WeakKeyDummyValueEntry f;

            public LinkedWeakKeyDummyValueEntry(ReferenceQueue referenceQueue, Object obj, int i, WeakKeyDummyValueEntry weakKeyDummyValueEntry) {
                super(referenceQueue, obj, i);
                this.f = weakKeyDummyValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractWeakKeyEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final InternalEntry a() {
                return this.f;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.WeakKeyDummyValueEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final /* bridge */ /* synthetic */ Object getValue() {
                return MapMaker.Dummy.f12328c;
            }
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public /* bridge */ /* synthetic */ Object getValue() {
            return MapMaker.Dummy.f12328c;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakKeyDummyValueSegment<K> extends Segment<K, MapMaker.Dummy, WeakKeyDummyValueEntry<K>, WeakKeyDummyValueSegment<K>> {
        public final ReferenceQueue l;

        public WeakKeyDummyValueSegment(MapMakerInternalMap mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.l = new ReferenceQueue();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void e() {
            do {
            } while (this.l.poll() != null);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void f() {
            a(this.l);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final Segment k() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class WeakKeyStrongValueEntry<K, V> extends AbstractWeakKeyEntry<K, V, WeakKeyStrongValueEntry<K, V>> implements StrongValueEntry<K, V, WeakKeyStrongValueEntry<K, V>> {
        public volatile Object f;

        /* loaded from: classes3.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, WeakKeyStrongValueEntry<K, V>, WeakKeyStrongValueSegment<K, V>> {

            /* renamed from: a, reason: collision with root package name */
            public static final Helper f12339a = new Object();

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Segment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new WeakKeyStrongValueSegment(mapMakerInternalMap, i);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2) {
                WeakKeyStrongValueEntry linkedWeakKeyStrongValueEntry;
                WeakKeyStrongValueSegment weakKeyStrongValueSegment = (WeakKeyStrongValueSegment) segment;
                WeakKeyStrongValueEntry weakKeyStrongValueEntry = (WeakKeyStrongValueEntry) internalEntry;
                WeakKeyStrongValueEntry weakKeyStrongValueEntry2 = (WeakKeyStrongValueEntry) internalEntry2;
                K k = weakKeyStrongValueEntry.get();
                if (k == null) {
                    return null;
                }
                int i = weakKeyStrongValueEntry.f12331c;
                if (weakKeyStrongValueEntry2 == null) {
                    linkedWeakKeyStrongValueEntry = new WeakKeyStrongValueEntry(weakKeyStrongValueSegment.l, k, i);
                } else {
                    linkedWeakKeyStrongValueEntry = new LinkedWeakKeyStrongValueEntry(weakKeyStrongValueSegment.l, k, i, weakKeyStrongValueEntry2);
                }
                linkedWeakKeyStrongValueEntry.f = weakKeyStrongValueEntry.f;
                return linkedWeakKeyStrongValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Strength c() {
                return Strength.f12336c;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final void d(Segment segment, InternalEntry internalEntry, Object obj) {
                ((WeakKeyStrongValueEntry) internalEntry).f = obj;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry) {
                WeakKeyStrongValueSegment weakKeyStrongValueSegment = (WeakKeyStrongValueSegment) segment;
                WeakKeyStrongValueEntry weakKeyStrongValueEntry = (WeakKeyStrongValueEntry) internalEntry;
                if (weakKeyStrongValueEntry == null) {
                    return new WeakKeyStrongValueEntry(weakKeyStrongValueSegment.l, obj, i);
                }
                return new LinkedWeakKeyStrongValueEntry(weakKeyStrongValueSegment.l, obj, i, weakKeyStrongValueEntry);
            }
        }

        /* loaded from: classes3.dex */
        public static final class LinkedWeakKeyStrongValueEntry<K, V> extends WeakKeyStrongValueEntry<K, V> {
            public final WeakKeyStrongValueEntry g;

            public LinkedWeakKeyStrongValueEntry(ReferenceQueue referenceQueue, Object obj, int i, WeakKeyStrongValueEntry weakKeyStrongValueEntry) {
                super(referenceQueue, obj, i);
                this.g = weakKeyStrongValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractWeakKeyEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final InternalEntry a() {
                return this.g;
            }
        }

        public WeakKeyStrongValueEntry(ReferenceQueue referenceQueue, Object obj, int i) {
            super(referenceQueue, obj, i);
            this.f = null;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getValue() {
            return this.f;
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakKeyStrongValueSegment<K, V> extends Segment<K, V, WeakKeyStrongValueEntry<K, V>, WeakKeyStrongValueSegment<K, V>> {
        public final ReferenceQueue l;

        public WeakKeyStrongValueSegment(MapMakerInternalMap mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.l = new ReferenceQueue();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void e() {
            do {
            } while (this.l.poll() != null);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void f() {
            a(this.l);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final Segment k() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public static class WeakKeyWeakValueEntry<K, V> extends AbstractWeakKeyEntry<K, V, WeakKeyWeakValueEntry<K, V>> implements WeakValueEntry<K, V, WeakKeyWeakValueEntry<K, V>> {
        public volatile WeakValueReference f;

        /* loaded from: classes3.dex */
        public static final class Helper<K, V> implements InternalEntryHelper<K, V, WeakKeyWeakValueEntry<K, V>, WeakKeyWeakValueSegment<K, V>> {
            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Segment a(MapMakerInternalMap mapMakerInternalMap, int i) {
                return new WeakKeyWeakValueSegment(mapMakerInternalMap, i);
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry b(Segment segment, InternalEntry internalEntry, InternalEntry internalEntry2) {
                WeakKeyWeakValueEntry linkedWeakKeyWeakValueEntry;
                WeakKeyWeakValueSegment weakKeyWeakValueSegment = (WeakKeyWeakValueSegment) segment;
                WeakKeyWeakValueEntry weakKeyWeakValueEntry = (WeakKeyWeakValueEntry) internalEntry;
                WeakKeyWeakValueEntry weakKeyWeakValueEntry2 = (WeakKeyWeakValueEntry) internalEntry2;
                K k = weakKeyWeakValueEntry.get();
                if (k != null) {
                    int i = Segment.k;
                    if (weakKeyWeakValueEntry.f.get() == null) {
                        return null;
                    }
                    int i2 = weakKeyWeakValueEntry.f12331c;
                    if (weakKeyWeakValueEntry2 == null) {
                        linkedWeakKeyWeakValueEntry = new WeakKeyWeakValueEntry(weakKeyWeakValueSegment.l, k, i2);
                    } else {
                        linkedWeakKeyWeakValueEntry = new LinkedWeakKeyWeakValueEntry(weakKeyWeakValueSegment.l, k, i2, weakKeyWeakValueEntry2);
                    }
                    linkedWeakKeyWeakValueEntry.f = weakKeyWeakValueEntry.f.b(weakKeyWeakValueSegment.m, linkedWeakKeyWeakValueEntry);
                    return linkedWeakKeyWeakValueEntry;
                }
                return null;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final Strength c() {
                return Strength.f;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final void d(Segment segment, InternalEntry internalEntry, Object obj) {
                WeakKeyWeakValueEntry weakKeyWeakValueEntry = (WeakKeyWeakValueEntry) internalEntry;
                WeakValueReference weakValueReference = weakKeyWeakValueEntry.f;
                weakKeyWeakValueEntry.f = new WeakValueReferenceImpl(((WeakKeyWeakValueSegment) segment).m, obj, weakKeyWeakValueEntry);
                weakValueReference.clear();
            }

            @Override // com.google.common.collect.MapMakerInternalMap.InternalEntryHelper
            public final InternalEntry e(Segment segment, Object obj, int i, InternalEntry internalEntry) {
                WeakKeyWeakValueSegment weakKeyWeakValueSegment = (WeakKeyWeakValueSegment) segment;
                WeakKeyWeakValueEntry weakKeyWeakValueEntry = (WeakKeyWeakValueEntry) internalEntry;
                if (weakKeyWeakValueEntry == null) {
                    return new WeakKeyWeakValueEntry(weakKeyWeakValueSegment.l, obj, i);
                }
                return new LinkedWeakKeyWeakValueEntry(weakKeyWeakValueSegment.l, obj, i, weakKeyWeakValueEntry);
            }
        }

        /* loaded from: classes3.dex */
        public static final class LinkedWeakKeyWeakValueEntry<K, V> extends WeakKeyWeakValueEntry<K, V> {
            public final WeakKeyWeakValueEntry g;

            public LinkedWeakKeyWeakValueEntry(ReferenceQueue referenceQueue, Object obj, int i, WeakKeyWeakValueEntry weakKeyWeakValueEntry) {
                super(referenceQueue, obj, i);
                this.g = weakKeyWeakValueEntry;
            }

            @Override // com.google.common.collect.MapMakerInternalMap.AbstractWeakKeyEntry, com.google.common.collect.MapMakerInternalMap.InternalEntry
            public final InternalEntry a() {
                return this.g;
            }
        }

        public WeakKeyWeakValueEntry(ReferenceQueue referenceQueue, Object obj, int i) {
            super(referenceQueue, obj, i);
            this.f = MapMakerInternalMap.n;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueEntry
        public final WeakValueReference b() {
            return this.f;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.InternalEntry
        public final Object getValue() {
            return this.f.get();
        }
    }

    /* loaded from: classes3.dex */
    public static final class WeakKeyWeakValueSegment<K, V> extends Segment<K, V, WeakKeyWeakValueEntry<K, V>, WeakKeyWeakValueSegment<K, V>> {
        public final ReferenceQueue l;
        public final ReferenceQueue m;

        public WeakKeyWeakValueSegment(MapMakerInternalMap mapMakerInternalMap, int i) {
            super(mapMakerInternalMap, i);
            this.l = new ReferenceQueue();
            this.m = new ReferenceQueue();
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void e() {
            do {
            } while (this.l.poll() != null);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final void f() {
            a(this.l);
            b(this.m);
        }

        @Override // com.google.common.collect.MapMakerInternalMap.Segment
        public final Segment k() {
            return this;
        }
    }

    /* loaded from: classes3.dex */
    public interface WeakValueEntry<K, V, E extends InternalEntry<K, V, E>> extends InternalEntry<K, V, E> {
        WeakValueReference b();
    }

    /* loaded from: classes3.dex */
    public interface WeakValueReference<K, V, E extends InternalEntry<K, V, E>> {
        InternalEntry a();

        WeakValueReference b(ReferenceQueue referenceQueue, WeakValueEntry weakValueEntry);

        void clear();

        Object get();
    }

    /* loaded from: classes3.dex */
    public static final class WeakValueReferenceImpl<K, V, E extends InternalEntry<K, V, E>> extends WeakReference<V> implements WeakValueReference<K, V, E> {

        /* renamed from: c, reason: collision with root package name */
        public final InternalEntry f12340c;

        public WeakValueReferenceImpl(ReferenceQueue referenceQueue, Object obj, InternalEntry internalEntry) {
            super(obj, referenceQueue);
            this.f12340c = internalEntry;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public final InternalEntry a() {
            return this.f12340c;
        }

        @Override // com.google.common.collect.MapMakerInternalMap.WeakValueReference
        public final WeakValueReference b(ReferenceQueue referenceQueue, WeakValueEntry weakValueEntry) {
            return new WeakValueReferenceImpl(referenceQueue, get(), weakValueEntry);
        }
    }

    /* loaded from: classes3.dex */
    public final class WriteThroughEntry extends AbstractMap.SimpleEntry<K, V> {
        public WriteThroughEntry(Object obj, Object obj2) {
            super(obj, obj2);
        }

        @Override // java.util.AbstractMap.SimpleEntry, java.util.Map.Entry
        public final Object setValue(Object obj) {
            MapMakerInternalMap.this.put(getKey(), obj);
            return super.setValue(obj);
        }
    }

    public MapMakerInternalMap(MapMaker mapMaker, InternalEntryHelper internalEntryHelper) {
        this.i = ((Strength) MoreObjects.a(mapMaker.b, Strength.f12336c)).a();
        this.j = internalEntryHelper;
        int min = Math.min(16, 1073741824);
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        int i4 = 1;
        while (i4 < this.h) {
            i3++;
            i4 <<= 1;
        }
        this.f = 32 - i3;
        this.f12329c = i4 - 1;
        this.g = new Segment[i4];
        int i5 = min / i4;
        while (i2 < (i4 * i5 < min ? i5 + 1 : i5)) {
            i2 <<= 1;
        }
        while (true) {
            Segment[] segmentArr = this.g;
            if (i < segmentArr.length) {
                segmentArr[i] = this.j.a(this, i2);
                i++;
            } else {
                return;
            }
        }
    }

    public final int a(Object obj) {
        int b = this.i.b(obj);
        int i = b + ((b << 15) ^ (-12931));
        int i2 = i ^ (i >>> 10);
        int i3 = i2 + (i2 << 3);
        int i4 = i3 ^ (i3 >>> 6);
        int i5 = (i4 << 2) + (i4 << 14) + i4;
        return (i5 >>> 16) ^ i5;
    }

    public final Segment b(int i) {
        return this.g[(i >>> this.f) & this.f12329c];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        for (Segment segment : this.g) {
            if (segment.f != 0) {
                segment.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = segment.i;
                    for (int i = 0; i < atomicReferenceArray.length(); i++) {
                        atomicReferenceArray.set(i, null);
                    }
                    segment.e();
                    segment.j.set(0);
                    segment.g++;
                    segment.f = 0;
                    segment.unlock();
                } catch (Throwable th) {
                    segment.unlock();
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
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return ConcurrentMap.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return ConcurrentMap.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        boolean z = false;
        if (obj == null) {
            return false;
        }
        int a2 = a(obj);
        Segment b = b(a2);
        b.getClass();
        try {
            if (b.f == 0) {
                return false;
            }
            InternalEntry d = b.d(a2, obj);
            if (d != null) {
                if (d.getValue() != null) {
                    z = true;
                }
            }
            return z;
        } finally {
            b.g();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Object value;
        if (obj != null) {
            Segment[] segmentArr = this.g;
            long j = -1;
            int i = 0;
            while (i < 3) {
                long j2 = 0;
                for (Segment segment : segmentArr) {
                    int i2 = segment.f;
                    AtomicReferenceArray atomicReferenceArray = segment.i;
                    for (int i3 = 0; i3 < atomicReferenceArray.length(); i3++) {
                        for (InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(i3); internalEntry != null; internalEntry = internalEntry.a()) {
                            if (internalEntry.getKey() == null) {
                                segment.m();
                            } else {
                                value = internalEntry.getValue();
                                if (value == null) {
                                    segment.m();
                                }
                                if (value == null && this.j.c().a().d(obj, value)) {
                                    return true;
                                }
                            }
                            value = null;
                            if (value == null) {
                            }
                        }
                    }
                    j2 += segment.g;
                }
                if (j2 == j) {
                    return false;
                }
                i++;
                j = j2;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.m;
        if (set != null) {
            return set;
        }
        EntrySet entrySet = new EntrySet();
        this.m = entrySet;
        return entrySet;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        ConcurrentMap.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        int a2 = a(obj);
        Segment b = b(a2);
        b.getClass();
        try {
            InternalEntry d = b.d(a2, obj);
            if (d == null) {
                return null;
            }
            Object value = d.getValue();
            if (value == null) {
                b.m();
            }
            return value;
        } finally {
            b.g();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.concurrent.ConcurrentMap, j$.util.Map
    public /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return ConcurrentMap.CC.$default$getOrDefault(this, obj, obj2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        Segment[] segmentArr = this.g;
        long j = 0;
        for (int i = 0; i < segmentArr.length; i++) {
            if (segmentArr[i].f != 0) {
                return false;
            }
            j += segmentArr[i].g;
        }
        if (j == 0) {
            return true;
        }
        for (int i2 = 0; i2 < segmentArr.length; i2++) {
            if (segmentArr[i2].f != 0) {
                return false;
            }
            j -= segmentArr[i2].g;
        }
        if (j != 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.k;
        if (set != null) {
            return set;
        }
        KeySet keySet = new KeySet();
        this.k = keySet;
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
        int a2 = a(obj);
        return b(a2).h(obj, a2, obj2, false);
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
        int a2 = a(obj);
        return b(a2).h(obj, a2, obj2, true);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int a2 = a(obj);
        Segment b = b(a2);
        b.lock();
        try {
            b.j();
            AtomicReferenceArray atomicReferenceArray = b.i;
            int length = (atomicReferenceArray.length() - 1) & a2;
            InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
            for (InternalEntry internalEntry2 = internalEntry; internalEntry2 != null; internalEntry2 = internalEntry2.a()) {
                Object key = internalEntry2.getKey();
                if (internalEntry2.c() == a2 && key != null && b.f12335c.i.d(obj, key)) {
                    Object value = internalEntry2.getValue();
                    if (value == null && internalEntry2.getValue() != null) {
                        return null;
                    }
                    b.g++;
                    InternalEntry i = b.i(internalEntry, internalEntry2);
                    int i2 = b.f - 1;
                    atomicReferenceArray.set(length, i);
                    b.f = i2;
                    return value;
                }
            }
            return null;
        } finally {
            b.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final Object replace(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int a2 = a(obj);
        Segment b = b(a2);
        b.lock();
        try {
            b.j();
            AtomicReferenceArray atomicReferenceArray = b.i;
            int length = (atomicReferenceArray.length() - 1) & a2;
            InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
            for (InternalEntry internalEntry2 = internalEntry; internalEntry2 != null; internalEntry2 = internalEntry2.a()) {
                Object key = internalEntry2.getKey();
                if (internalEntry2.c() == a2 && key != null && b.f12335c.i.d(obj, key)) {
                    Object value = internalEntry2.getValue();
                    if (value == null) {
                        if (internalEntry2.getValue() == null) {
                            b.g++;
                            InternalEntry i = b.i(internalEntry, internalEntry2);
                            int i2 = b.f - 1;
                            atomicReferenceArray.set(length, i);
                            b.f = i2;
                        }
                        return null;
                    }
                    b.g++;
                    b.l(internalEntry2, obj2);
                    return value;
                }
            }
            return null;
        } finally {
            b.unlock();
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
            j += r0[i].f;
        }
        return Ints.c(j);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.l;
        if (collection != null) {
            return collection;
        }
        Values values = new Values();
        this.l = values;
        return values;
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean remove(Object obj, Object obj2) {
        boolean z = false;
        if (obj == null || obj2 == null) {
            return false;
        }
        int a2 = a(obj);
        Segment b = b(a2);
        b.lock();
        try {
            b.j();
            AtomicReferenceArray atomicReferenceArray = b.i;
            int length = (atomicReferenceArray.length() - 1) & a2;
            InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
            for (InternalEntry internalEntry2 = internalEntry; internalEntry2 != null; internalEntry2 = internalEntry2.a()) {
                Object key = internalEntry2.getKey();
                if (internalEntry2.c() == a2 && key != null && b.f12335c.i.d(obj, key)) {
                    if (b.f12335c.j.c().a().d(obj2, internalEntry2.getValue())) {
                        z = true;
                    } else if (internalEntry2.getValue() != null) {
                        return false;
                    }
                    b.g++;
                    InternalEntry i = b.i(internalEntry, internalEntry2);
                    int i2 = b.f - 1;
                    atomicReferenceArray.set(length, i);
                    b.f = i2;
                    return z;
                }
            }
            return false;
        } finally {
            b.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap, j$.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj3.getClass();
        if (obj2 == null) {
            return false;
        }
        int a2 = a(obj);
        Segment b = b(a2);
        b.lock();
        try {
            b.j();
            AtomicReferenceArray atomicReferenceArray = b.i;
            int length = (atomicReferenceArray.length() - 1) & a2;
            InternalEntry internalEntry = (InternalEntry) atomicReferenceArray.get(length);
            for (InternalEntry internalEntry2 = internalEntry; internalEntry2 != null; internalEntry2 = internalEntry2.a()) {
                Object key = internalEntry2.getKey();
                if (internalEntry2.c() == a2 && key != null && b.f12335c.i.d(obj, key)) {
                    Object value = internalEntry2.getValue();
                    if (value == null) {
                        if (internalEntry2.getValue() == null) {
                            b.g++;
                            InternalEntry i = b.i(internalEntry, internalEntry2);
                            int i2 = b.f - 1;
                            atomicReferenceArray.set(length, i);
                            b.f = i2;
                        }
                        return false;
                    }
                    if (!b.f12335c.j.c().a().d(obj2, value)) {
                        return false;
                    }
                    b.g++;
                    b.l(internalEntry2, obj3);
                    return true;
                }
            }
            return false;
        } finally {
            b.unlock();
        }
    }
}
