package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.BufferedChannel;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/selects/SelectClause1Impl;", "Q", "Lkotlinx/coroutines/selects/SelectClause1;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SelectClause1Impl<Q> implements SelectClause1<Q> {

    /* renamed from: a, reason: collision with root package name */
    public final BufferedChannel f21920a;
    public final Function3 b;

    /* renamed from: c, reason: collision with root package name */
    public final Function3 f21921c;
    public final Function3 d;

    public SelectClause1Impl(BufferedChannel bufferedChannel, Function3 function3, Function3 function32, Function3 function33) {
        this.f21920a = bufferedChannel;
        this.b = function3;
        this.f21921c = function32;
        this.d = function33;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: a, reason: from getter */
    public final Function3 getB() {
        return this.b;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: b */
    public final Object getF21918a() {
        return this.f21920a;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: c, reason: from getter */
    public final Function3 getD() {
        return this.d;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: d, reason: from getter */
    public final Function3 getF21921c() {
        return this.f21921c;
    }
}
