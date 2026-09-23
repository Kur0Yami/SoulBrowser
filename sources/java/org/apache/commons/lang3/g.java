package org.apache.commons.lang3;

import j$.util.concurrent.ThreadLocalRandom;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Random;
import java.util.function.Supplier;
import org.apache.commons.lang3.function.Suppliers;

/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Supplier {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22384c;

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f22384c) {
            case 0:
                return RandomUtils.b;
            case 1:
                return ThreadLocalRandom.current();
            case 2:
                return new SecureRandom();
            case 3:
                return (Random) RandomUtils.f22349c.get();
            case 4:
                return RandomUtils.a();
            case 5:
                return new ArrayList();
            case 6:
                return "99.0";
            default:
                String str = SystemUtils.f22360a;
                return SystemProperties.a("user.region", Suppliers.f22383a);
        }
    }
}
