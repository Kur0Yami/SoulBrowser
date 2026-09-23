package com.google.common.collect;

import com.google.common.collect.ImmutableRangeSet;
import java.util.Collections;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12423c;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.common.collect.MoreCollectors$ToOptionalState, java.lang.Object] */
    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f12423c) {
            case 0:
                int i = CollectCollectors.f12253a;
                return new Object();
            case 1:
                ?? obj = new Object();
                obj.f12366a = null;
                obj.b = Collections.EMPTY_LIST;
                return obj;
            case 2:
                return ImmutableSet.q();
            case 3:
                ImmutableRangeSet immutableRangeSet = ImmutableRangeSet.f;
                return new ImmutableRangeSet.Builder();
            default:
                return ImmutableList.r();
        }
    }
}
