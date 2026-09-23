package com.google.auth.oauth2;

import j$.util.function.BiConsumer$CC;
import java.util.HashMap;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12146a;
    public final /* synthetic */ HashMap b;

    public /* synthetic */ b(HashMap hashMap, int i) {
        this.f12146a = i;
        this.b = hashMap;
    }

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        String str = (String) obj;
        switch (this.f12146a) {
            case 0:
                boolean contains = Slf4jLoggingHelpers.b.contains(str);
                HashMap hashMap = this.b;
                if (contains) {
                    hashMap.put(str, Slf4jLoggingHelpers.a(String.valueOf(obj2)));
                    return;
                } else {
                    hashMap.put(str, obj2.toString());
                    return;
                }
            default:
                boolean contains2 = Slf4jLoggingHelpers.b.contains(str);
                HashMap hashMap2 = this.b;
                if (contains2) {
                    hashMap2.put(str, Slf4jLoggingHelpers.a(String.valueOf(obj2)));
                    return;
                } else {
                    hashMap2.put(str, obj2);
                    return;
                }
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.f12146a;
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
