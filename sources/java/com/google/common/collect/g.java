package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.collect.Multimaps;

/* loaded from: classes3.dex */
public final /* synthetic */ class g implements Function {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12429c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Multimaps.TransformedEntriesMultimap g;

    public /* synthetic */ g(Multimaps.TransformedEntriesMultimap transformedEntriesMultimap, Object obj, int i) {
        this.f12429c = i;
        this.g = transformedEntriesMultimap;
        this.f = obj;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f12429c) {
            case 0:
                return ((com.google.common.net.a) ((Multimaps.TransformedEntriesListMultimap) this.g).j.f).apply(obj);
            default:
                return ((com.google.common.net.a) this.g.j.f).apply(obj);
        }
    }
}
