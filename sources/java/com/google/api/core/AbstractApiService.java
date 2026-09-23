package com.google.api.core;

import com.google.api.core.ApiService;
import com.google.common.collect.ImmutableMap;
import com.google.common.util.concurrent.AbstractService;
import com.google.common.util.concurrent.Service;

/* loaded from: classes3.dex */
public abstract class AbstractApiService implements ApiService {

    /* renamed from: com.google.api.core.AbstractApiService$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Service.Listener {
    }

    /* loaded from: classes3.dex */
    public class InnerService extends AbstractService {
    }

    static {
        ImmutableMap.Builder a2 = ImmutableMap.a();
        a2.d(Service.State.j, ApiService.State.f12095c);
        a2.d(Service.State.f12596c, ApiService.State.f);
        a2.d(Service.State.g, ApiService.State.g);
        a2.d(Service.State.f, ApiService.State.h);
        a2.d(Service.State.h, ApiService.State.i);
        a2.d(Service.State.i, ApiService.State.j);
        a2.c();
    }
}
