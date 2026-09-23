package com.google.common.graph;

import com.google.common.base.Function;
import com.google.common.graph.AbstractBaseGraph;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12446c;

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f12446c) {
            case 0:
                int i = AbstractBaseGraph.AnonymousClass2.f12437c;
                return new EndpointPair(obj, null);
            case 1:
                int i2 = AbstractBaseGraph.AnonymousClass2.f12437c;
                new EndpointPair(null, obj);
                throw null;
            default:
                int i3 = AbstractBaseGraph.AnonymousClass2.f12437c;
                return new EndpointPair(obj, null);
        }
    }
}
