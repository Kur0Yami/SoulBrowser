package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Supplier;
import com.google.common.collect.StandardTable;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;

@GwtCompatible
/* loaded from: classes3.dex */
public class HashBasedTable<R, C, V> extends StandardTable<R, C, V> {

    /* loaded from: classes3.dex */
    public static final class Factory<C, V> implements Supplier<Map<C, V>>, Serializable {
        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new LinkedHashMap(Maps.c(0));
        }
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.AbstractTable
    public final void b() {
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final Map g(Object obj) {
        return new StandardTable.Column(obj);
    }

    @Override // com.google.common.collect.StandardTable
    public final boolean j(Object obj) {
        if (obj == null) {
            return false;
        }
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        throw null;
    }

    @Override // com.google.common.collect.StandardTable
    public final Map q(Object obj) {
        return new StandardTable.Row(obj);
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.Table
    public final int size() {
        throw null;
    }
}
