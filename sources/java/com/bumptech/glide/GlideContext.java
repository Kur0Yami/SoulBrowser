package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.collection.ArrayMap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.ImageViewTargetFactory;
import com.bumptech.glide.util.GlideSuppliers;
import java.util.List;

/* loaded from: classes.dex */
public class GlideContext extends ContextWrapper {
    public static final GenericTransitionOptions k = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayPool f2080a;
    public final GlideSuppliers.GlideSupplier b;

    /* renamed from: c, reason: collision with root package name */
    public final ImageViewTargetFactory f2081c;
    public final Glide.RequestOptionsFactory d;
    public final List e;
    public final ArrayMap f;
    public final Engine g;
    public final GlideExperiments h;
    public final int i;
    public RequestOptions j;

    public GlideContext(Context context, ArrayPool arrayPool, GlideSuppliers.GlideSupplier glideSupplier, ImageViewTargetFactory imageViewTargetFactory, Glide.RequestOptionsFactory requestOptionsFactory, ArrayMap arrayMap, List list, Engine engine, GlideExperiments glideExperiments, int i) {
        super(context.getApplicationContext());
        this.f2080a = arrayPool;
        this.f2081c = imageViewTargetFactory;
        this.d = requestOptionsFactory;
        this.e = list;
        this.f = arrayMap;
        this.g = engine;
        this.h = glideExperiments;
        this.i = i;
        this.b = GlideSuppliers.a(glideSupplier);
    }

    public final synchronized RequestOptions a() {
        try {
            if (this.j == null) {
                RequestOptions build = this.d.build();
                build.p = true;
                this.j = build;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.j;
    }

    public final Registry b() {
        return (Registry) this.b.get();
    }
}
