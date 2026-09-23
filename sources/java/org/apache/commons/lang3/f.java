package org.apache.commons.lang3;

import j$.util.function.BiConsumer$CC;
import java.util.HashMap;
import java.util.List;
import java.util.function.BiConsumer;

/* loaded from: classes4.dex */
public final /* synthetic */ class f implements BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22382a;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f22382a) {
            case 0:
                Class cls = (Class) obj;
                Class cls2 = (Class) obj2;
                HashMap hashMap = ClassUtils.f22343a;
                if (!cls.equals(cls2)) {
                    ClassUtils.f22344c.put(cls2, cls);
                    return;
                }
                return;
            default:
                ((List) obj).add(obj2);
                return;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.f22382a;
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
