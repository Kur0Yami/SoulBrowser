package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class AbstractSequentialIterator<T> extends UnmodifiableIterator<T> {

    /* renamed from: c, reason: collision with root package name */
    public Object f12245c;

    public AbstractSequentialIterator(Object obj) {
        this.f12245c = obj;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f12245c != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object obj = this.f12245c;
        if (obj != null) {
            this.f12245c = a(obj);
            return obj;
        }
        throw new NoSuchElementException();
    }
}
