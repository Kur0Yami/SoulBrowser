package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.Channel;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/selects/SelectClause2Impl;", "P", "Q", "Lkotlinx/coroutines/selects/SelectClause2;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SelectClause2Impl<P, Q> implements SelectClause2<P, Q> {

    /* renamed from: a, reason: collision with root package name */
    public final Channel f21922a;
    public final Function3 b;

    /* renamed from: c, reason: collision with root package name */
    public final Function3 f21923c;

    public SelectClause2Impl(Channel channel, Function3 function3, Function3 function32) {
        this.f21922a = channel;
        this.b = function3;
        this.f21923c = function32;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: a, reason: from getter */
    public final Function3 getB() {
        return this.b;
    }

    @Override // kotlinx.coroutines.selects.SelectClause
    /* renamed from: d, reason: from getter */
    public final Function3 getF21923c() {
        return this.f21923c;
    }
}
