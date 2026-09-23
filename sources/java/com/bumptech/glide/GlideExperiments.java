package com.bumptech.glide;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class GlideExperiments {

    /* renamed from: a, reason: collision with root package name */
    public final Map f2082a;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f2083a = new HashMap();
    }

    /* loaded from: classes.dex */
    public interface Experiment {
    }

    public GlideExperiments(Builder builder) {
        this.f2082a = DesugarCollections.unmodifiableMap(new HashMap(builder.f2083a));
    }
}
