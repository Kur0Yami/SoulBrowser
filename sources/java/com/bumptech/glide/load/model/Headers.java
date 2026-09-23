package com.bumptech.glide.load.model;

import com.bumptech.glide.load.model.LazyHeaders;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public interface Headers {

    /* renamed from: a, reason: collision with root package name */
    public static final LazyHeaders f2292a;

    /* renamed from: com.bumptech.glide.load.model.Headers$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Headers {
        @Override // com.bumptech.glide.load.model.Headers
        public final Map a() {
            return Collections.EMPTY_MAP;
        }
    }

    static {
        LazyHeaders.Builder builder = new LazyHeaders.Builder();
        builder.f2294a = true;
        f2292a = new LazyHeaders(builder.b);
    }

    Map a();
}
