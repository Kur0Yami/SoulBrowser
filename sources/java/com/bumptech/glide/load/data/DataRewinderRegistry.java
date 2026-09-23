package com.bumptech.glide.load.data;

import com.bumptech.glide.load.data.DataRewinder;
import java.util.HashMap;

/* loaded from: classes.dex */
public class DataRewinderRegistry {
    public static final DataRewinder.Factory b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f2166a = new HashMap();

    /* renamed from: com.bumptech.glide.load.data.DataRewinderRegistry$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements DataRewinder.Factory<Object> {
        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        public final Class a() {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        public final DataRewinder b(Object obj) {
            return new DefaultRewinder(obj);
        }
    }

    /* loaded from: classes.dex */
    public static final class DefaultRewinder implements DataRewinder<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f2167a;

        public DefaultRewinder(Object obj) {
            this.f2167a = obj;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public final Object a() {
            return this.f2167a;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder
        public final void b() {
        }
    }
}
