package org.jsoup.internal;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public class SoftPool<T> {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.emoji2.text.flatbuffer.b f22553a = new androidx.emoji2.text.flatbuffer.b(new b(1), 3);
    public final Supplier b;

    public SoftPool(Supplier<T> supplier) {
        this.b = supplier;
    }

    public T borrow() {
        androidx.emoji2.text.flatbuffer.b bVar = this.f22553a;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) bVar.get()).get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            bVar.set(new SoftReference(arrayDeque));
        }
        if (!arrayDeque.isEmpty()) {
            return (T) arrayDeque.pop();
        }
        return (T) this.b.get();
    }

    public void release(T t) {
        androidx.emoji2.text.flatbuffer.b bVar = this.f22553a;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) bVar.get()).get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            bVar.set(new SoftReference(arrayDeque));
        }
        if (arrayDeque.size() < 12) {
            arrayDeque.push(t);
        }
    }
}
