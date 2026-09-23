package com.nostra13.universalimageloader.core.assist.deque;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public class LinkedBlockingDeque<E> extends AbstractQueue<E> implements BlockingDeque<E>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public transient Node f20993c;
    public transient Node f;
    public transient int g;
    public final int h;
    public final ReentrantLock i;
    public final Condition j;
    public final Condition k;

    /* loaded from: classes3.dex */
    public abstract class AbstractItr implements Iterator<E> {

        /* renamed from: c, reason: collision with root package name */
        public Node f20994c;
        public Object f;
        public Node g;

        public AbstractItr() {
            Object obj;
            ReentrantLock reentrantLock = LinkedBlockingDeque.this.i;
            reentrantLock.lock();
            try {
                Node node = LinkedBlockingDeque.this.f20993c;
                this.f20994c = node;
                if (node == null) {
                    obj = null;
                } else {
                    obj = node.f20995a;
                }
                this.f = obj;
            } finally {
                reentrantLock.unlock();
            }
        }

        public abstract Node a();

        public abstract Node b(Node node);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f20994c != null) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            Node b;
            Object obj;
            Node node = this.f20994c;
            if (node != null) {
                this.g = node;
                Object obj2 = this.f;
                ReentrantLock reentrantLock = LinkedBlockingDeque.this.i;
                reentrantLock.lock();
                try {
                    Node node2 = this.f20994c;
                    while (true) {
                        b = b(node2);
                        obj = null;
                        if (b == null) {
                            b = null;
                            break;
                        }
                        if (b.f20995a != null) {
                            break;
                        }
                        if (b == node2) {
                            b = a();
                            break;
                        }
                        node2 = b;
                    }
                    this.f20994c = b;
                    if (b != null) {
                        obj = b.f20995a;
                    }
                    this.f = obj;
                    return obj2;
                } finally {
                    reentrantLock.unlock();
                }
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Node node = this.g;
            if (node != null) {
                this.g = null;
                LinkedBlockingDeque linkedBlockingDeque = LinkedBlockingDeque.this;
                ReentrantLock reentrantLock = linkedBlockingDeque.i;
                reentrantLock.lock();
                try {
                    if (node.f20995a != null) {
                        linkedBlockingDeque.c(node);
                    }
                    return;
                } finally {
                    reentrantLock.unlock();
                }
            }
            throw new IllegalStateException();
        }
    }

    /* loaded from: classes3.dex */
    public class DescendingItr extends LinkedBlockingDeque<E>.AbstractItr {
        @Override // com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque.AbstractItr
        public final Node a() {
            throw null;
        }

        @Override // com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque.AbstractItr
        public final Node b(Node node) {
            return node.b;
        }
    }

    /* loaded from: classes3.dex */
    public class Itr extends LinkedBlockingDeque<E>.AbstractItr {
        public Itr() {
            super();
        }

        @Override // com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque.AbstractItr
        public final Node a() {
            return LinkedBlockingDeque.this.f20993c;
        }

        @Override // com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque.AbstractItr
        public final Node b(Node node) {
            return node.f20996c;
        }
    }

    /* loaded from: classes3.dex */
    public static final class Node<E> {

        /* renamed from: a, reason: collision with root package name */
        public Object f20995a;
        public Node b;

        /* renamed from: c, reason: collision with root package name */
        public Node f20996c;

        public Node(Object obj) {
            this.f20995a = obj;
        }
    }

    public LinkedBlockingDeque() {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.i = reentrantLock;
        this.j = reentrantLock.newCondition();
        this.k = reentrantLock.newCondition();
        this.h = Integer.MAX_VALUE;
    }

    public final boolean a(Node node) {
        int i = this.g;
        if (i >= this.h) {
            return false;
        }
        Node node2 = this.f;
        node.b = node2;
        this.f = node;
        if (this.f20993c == null) {
            this.f20993c = node;
        } else {
            node2.f20996c = node;
        }
        this.g = i + 1;
        this.j.signal();
        return true;
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection, java.util.Queue, java.util.concurrent.BlockingQueue
    public final boolean add(Object obj) {
        obj.getClass();
        Node node = new Node(obj);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            if (a(node)) {
                return true;
            }
            throw new IllegalStateException("Deque full");
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void c(Node node) {
        Node node2 = node.b;
        Node node3 = node.f20996c;
        if (node2 == null) {
            g();
            return;
        }
        Condition condition = this.k;
        if (node3 == null) {
            Node node4 = this.f;
            if (node4 == null) {
                return;
            }
            Node node5 = node4.b;
            node4.f20995a = null;
            node4.b = node4;
            this.f = node5;
            if (node5 == null) {
                this.f20993c = null;
            } else {
                node5.f20996c = null;
            }
            this.g--;
            condition.signal();
            return;
        }
        node2.f20996c = node3;
        node3.b = node2;
        node.f20995a = null;
        this.g--;
        condition.signal();
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Node node = this.f20993c;
            while (node != null) {
                node.f20995a = null;
                Node node2 = node.f20996c;
                node.b = null;
                node.f20996c = null;
                node = node2;
            }
            this.f = null;
            this.f20993c = null;
            this.g = 0;
            this.k.signalAll();
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            for (Node node = this.f20993c; node != null; node = node.f20996c) {
                if (obj.equals(node.f20995a)) {
                    reentrantLock.unlock();
                    return true;
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public final Object element() {
        Object obj;
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Node node = this.f20993c;
            if (node == null) {
                obj = null;
            } else {
                obj = node.f20995a;
            }
            if (obj != null) {
                return obj;
            }
            throw new NoSuchElementException();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final Object g() {
        Node node = this.f20993c;
        if (node == null) {
            return null;
        }
        Node node2 = node.f20996c;
        Object obj = node.f20995a;
        node.f20995a = null;
        node.f20996c = node;
        this.f20993c = node2;
        if (node2 == null) {
            this.f = null;
        } else {
            node2.b = null;
        }
        this.g--;
        this.k.signal();
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new Itr();
    }

    public boolean offer(Object obj) {
        obj.getClass();
        Node node = new Node(obj);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return a(node);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.Queue
    public final Object peek() {
        Object obj;
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Node node = this.f20993c;
            if (node == null) {
                obj = null;
            } else {
                obj = node.f20995a;
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.Queue
    public final Object poll() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return g();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final void put(Object obj) {
        obj.getClass();
        Node node = new Node(obj);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        while (!a(node)) {
            try {
                this.k.await();
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final int remainingCapacity() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return this.h - this.g;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractQueue, java.util.Queue
    public Object remove() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Object g = g();
            if (g != null) {
                return g;
            }
            throw new NoSuchElementException();
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            return this.g;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Object take() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        while (true) {
            try {
                Object g = g();
                if (g == null) {
                    this.j.await();
                } else {
                    return g;
                }
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Object[] objArr = new Object[this.g];
            Node node = this.f20993c;
            int i = 0;
            while (node != null) {
                int i2 = i + 1;
                objArr[i] = node.f20995a;
                node = node.f20996c;
                i = i2;
            }
            return objArr;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            Node node = this.f20993c;
            if (node == null) {
                return "[]";
            }
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            while (true) {
                Object obj = node.f20995a;
                if (obj == this) {
                    obj = "(this Collection)";
                }
                sb.append(obj);
                node = node.f20996c;
                if (node == null) {
                    sb.append(']');
                    return sb.toString();
                }
                sb.append(',');
                sb.append(' ');
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.BlockingQueue
    public final int drainTo(Collection collection, int i) {
        collection.getClass();
        if (collection != this) {
            ReentrantLock reentrantLock = this.i;
            reentrantLock.lock();
            try {
                int min = Math.min(i, this.g);
                for (int i2 = 0; i2 < min; i2++) {
                    collection.add(this.f20993c.f20995a);
                    g();
                }
                return min;
            } finally {
                reentrantLock.unlock();
            }
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.concurrent.BlockingQueue
    public final Object poll(long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lockInterruptibly();
        while (true) {
            try {
                Object g = g();
                if (g != null) {
                    return g;
                }
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return null;
                }
                nanos = this.j.awaitNanos(nanos);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Override // java.util.concurrent.BlockingQueue
    public final boolean offer(Object obj, long j, TimeUnit timeUnit) {
        obj.getClass();
        Node node = new Node(obj);
        long nanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lockInterruptibly();
        while (!a(node)) {
            try {
                if (nanos <= 0) {
                    reentrantLock.unlock();
                    return false;
                }
                nanos = this.k.awaitNanos(nanos);
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        reentrantLock.unlock();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.concurrent.BlockingQueue
    public final boolean remove(Object obj) {
        if (obj == null) {
            return false;
        }
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            for (Node node = this.f20993c; node != null; node = node.f20996c) {
                if (obj.equals(node.f20995a)) {
                    c(node);
                    reentrantLock.unlock();
                    return true;
                }
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            if (objArr.length < this.g) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.g);
            }
            Node node = this.f20993c;
            int i = 0;
            while (node != null) {
                objArr[i] = node.f20995a;
                node = node.f20996c;
                i++;
            }
            if (objArr.length > i) {
                objArr[i] = null;
            }
            reentrantLock.unlock();
            return objArr;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
