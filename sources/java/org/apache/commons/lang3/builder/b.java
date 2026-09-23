package org.apache.commons.lang3.builder;

import java.util.HashSet;

/* loaded from: classes4.dex */
public final /* synthetic */ class b extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22371a;
    public final /* synthetic */ a b;

    public /* synthetic */ b(a aVar, int i) {
        this.f22371a = i;
        this.b = aVar;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f22371a) {
            case 0:
                this.b.getClass();
                return new HashSet();
            default:
                this.b.getClass();
                return new HashSet();
        }
    }
}
