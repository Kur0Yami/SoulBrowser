package org.apache.commons.lang3.tuple;

/* loaded from: classes4.dex */
public class MutablePair<L, R> extends Pair<L, R> {

    /* renamed from: c, reason: collision with root package name */
    public Object f22459c;

    @Override // org.apache.commons.lang3.tuple.Pair
    public final Object a() {
        return null;
    }

    @Override // org.apache.commons.lang3.tuple.Pair
    public final Object b() {
        return this.f22459c;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.f22459c;
        this.f22459c = obj;
        return obj2;
    }
}
