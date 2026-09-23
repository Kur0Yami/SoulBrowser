package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.FluentIterable;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;

@DoNotMock
@GwtCompatible
/* loaded from: classes3.dex */
public abstract class Optional<T> implements Serializable {

    /* renamed from: com.google.common.base.Optional$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AbstractIterator<Object> {
        @Override // com.google.common.base.AbstractIterator
        public final Object a() {
            throw null;
        }
    }

    public static Optional a() {
        return Absent.f12148c;
    }

    public static Optional b(Object obj) {
        obj.getClass();
        return new Present(obj);
    }

    public abstract Object c(FluentIterable fluentIterable);

    public abstract Object d();
}
