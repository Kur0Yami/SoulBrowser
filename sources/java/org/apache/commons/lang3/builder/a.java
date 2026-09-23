package org.apache.commons.lang3.builder;

import java.util.HashSet;
import java.util.WeakHashMap;
import java.util.function.Supplier;
import org.jsoup.nodes.Entities;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22370c;

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f22370c) {
            case 0:
                return new HashSet();
            case 1:
                return new WeakHashMap();
            case 2:
                return null;
            default:
                char[] cArr = Entities.f22571a;
                return new char[2];
        }
    }
}
