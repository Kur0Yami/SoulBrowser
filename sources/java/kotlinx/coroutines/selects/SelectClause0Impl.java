package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/selects/SelectClause0Impl;", "Lkotlinx/coroutines/selects/SelectClause0;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SelectClause0Impl implements SelectClause0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f21918a;
    public final Function3 b;

    /* renamed from: c, reason: collision with root package name */
    public final Function3 f21919c = SelectKt.f21929a;

    public SelectClause0Impl(Object obj, Function3 function3) {
        this.f21918a = obj;
        this.b = function3;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: a, reason: from getter */
    public final Function3 getB() {
        return this.b;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: b, reason: from getter */
    public final Object getF21918a() {
        return this.f21918a;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    public final Function3 c() {
        return null;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: d, reason: from getter */
    public final Function3 getF21919c() {
        return this.f21919c;
    }
}
