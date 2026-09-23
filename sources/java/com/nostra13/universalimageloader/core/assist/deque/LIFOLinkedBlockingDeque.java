package com.nostra13.universalimageloader.core.assist.deque;

import com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque;
import java.util.NoSuchElementException;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public class LIFOLinkedBlockingDeque<T> extends LinkedBlockingDeque<T> {
    @Override // com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque, java.util.Queue, java.util.concurrent.BlockingQueue
    public final boolean offer(Object obj) {
        boolean z;
        obj.getClass();
        LinkedBlockingDeque.Node node = new LinkedBlockingDeque.Node(obj);
        ReentrantLock reentrantLock = this.i;
        reentrantLock.lock();
        try {
            int i = this.g;
            if (i >= this.h) {
                z = false;
            } else {
                LinkedBlockingDeque.Node node2 = this.f20993c;
                node.f20996c = node2;
                this.f20993c = node;
                if (this.f == null) {
                    this.f = node;
                } else {
                    node2.b = node;
                }
                z = true;
                this.g = i + 1;
                this.j.signal();
            }
            return z;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // com.nostra13.universalimageloader.core.assist.deque.LinkedBlockingDeque, java.util.AbstractQueue, java.util.Queue
    public final Object remove() {
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
}
