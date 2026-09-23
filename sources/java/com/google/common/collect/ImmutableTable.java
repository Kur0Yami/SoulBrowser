package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class ImmutableTable<R, C, V> extends AbstractTable<R, C, V> implements Serializable {

    @DoNotMock
    /* loaded from: classes3.dex */
    public static final class Builder<R, C, V> {
    }

    /* loaded from: classes3.dex */
    public static final class SerializedForm implements Serializable {
    }

    @Override // com.google.common.collect.AbstractTable
    public final Iterator a() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractTable
    public final void b() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.AbstractTable
    public final boolean c(Object obj) {
        Collection collection = this.f;
        if (collection == null) {
            collection = e();
            this.f = collection;
        }
        return ((ImmutableCollection) collection).contains(obj);
    }

    @Override // com.google.common.collect.AbstractTable
    public final Iterator f() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.AbstractTable
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableSet d();

    @Override // com.google.common.collect.AbstractTable
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableCollection e();

    public Object i(Object obj, Object obj2) {
        Map map = (Map) Maps.f(B(), obj);
        if (map != null) {
            try {
                return map.get(obj2);
            } catch (ClassCastException | NullPointerException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // com.google.common.collect.Table
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public abstract ImmutableMap B();

    @Override // com.google.common.collect.AbstractTable, com.google.common.collect.Table
    public final Set u() {
        return (ImmutableSet) super.u();
    }
}
