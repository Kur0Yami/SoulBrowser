package org.jsoup.internal;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22559c;

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f22559c) {
            case 0:
                SoftPool softPool = SimpleBufferedInput.j;
                return new byte[8192];
            case 1:
                return new SoftReference(new ArrayDeque());
            default:
                String[] strArr = StringUtil.f22554a;
                return new StringBuilder(1024);
        }
    }
}
