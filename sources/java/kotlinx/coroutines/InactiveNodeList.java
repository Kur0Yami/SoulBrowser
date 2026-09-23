package kotlinx.coroutines;

import kotlin.Metadata;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/coroutines/InactiveNodeList;", "Lkotlinx/coroutines/Incomplete;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class InactiveNodeList implements Incomplete {

    /* renamed from: c, reason: collision with root package name */
    public final NodeList f21592c;

    public InactiveNodeList(NodeList nodeList) {
        this.f21592c = nodeList;
    }

    @Override // kotlinx.coroutines.Incomplete
    /* renamed from: b, reason: from getter */
    public final NodeList getF21592c() {
        return this.f21592c;
    }

    @Override // kotlinx.coroutines.Incomplete
    /* renamed from: isActive */
    public final boolean getF21587c() {
        return false;
    }
}
