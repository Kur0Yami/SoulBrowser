package com.google.common.collect;

import com.google.common.base.Function;
import j$.util.DesugarCollections;
import java.util.Map;

/* loaded from: classes3.dex */
public final /* synthetic */ class e implements Function {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12427c;

    public /* synthetic */ e(int i) {
        this.f12427c = i;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f12427c) {
            case 0:
                return ((Range) obj).f12384c;
            case 1:
                return ((Range) obj).f;
            case 2:
                return ((Iterable) obj).iterator();
            default:
                return DesugarCollections.unmodifiableMap((Map) obj);
        }
    }
}
