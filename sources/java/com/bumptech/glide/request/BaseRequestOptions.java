package com.bumptech.glide.request;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.DrawableTransformation;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.load.resource.gif.GifDrawableTransformation;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.signature.EmptySignature;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import kotlin.io.ConstantsKt;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public abstract class BaseRequestOptions<T extends BaseRequestOptions<T>> implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public int f2456c;
    public boolean l;
    public boolean p;
    public Resources.Theme q;
    public boolean r;
    public boolean t;
    public DiskCacheStrategy f = DiskCacheStrategy.f2205c;
    public Priority g = Priority.g;
    public boolean h = true;
    public int i = -1;
    public int j = -1;
    public Key k = EmptySignature.b;
    public Options m = new Options();
    public CachedHashCodeArrayMap n = new SimpleArrayMap(0);
    public Class o = Object.class;
    public boolean s = true;

    public static boolean h(int i, int i2) {
        return (i & i2) != 0;
    }

    public BaseRequestOptions a(BaseRequestOptions baseRequestOptions) {
        if (this.r) {
            return clone().a(baseRequestOptions);
        }
        int i = baseRequestOptions.f2456c;
        if (h(baseRequestOptions.f2456c, 1048576)) {
            this.t = baseRequestOptions.t;
        }
        if (h(baseRequestOptions.f2456c, 4)) {
            this.f = baseRequestOptions.f;
        }
        if (h(baseRequestOptions.f2456c, 8)) {
            this.g = baseRequestOptions.g;
        }
        if (h(baseRequestOptions.f2456c, 16)) {
            this.f2456c &= -33;
        }
        if (h(baseRequestOptions.f2456c, 32)) {
            this.f2456c &= -17;
        }
        if (h(baseRequestOptions.f2456c, 64)) {
            this.f2456c &= -129;
        }
        if (h(baseRequestOptions.f2456c, Uuid.SIZE_BITS)) {
            this.f2456c &= -65;
        }
        if (h(baseRequestOptions.f2456c, 256)) {
            this.h = baseRequestOptions.h;
        }
        if (h(baseRequestOptions.f2456c, 512)) {
            this.j = baseRequestOptions.j;
            this.i = baseRequestOptions.i;
        }
        if (h(baseRequestOptions.f2456c, 1024)) {
            this.k = baseRequestOptions.k;
        }
        if (h(baseRequestOptions.f2456c, ConstantsKt.DEFAULT_BLOCK_SIZE)) {
            this.o = baseRequestOptions.o;
        }
        if (h(baseRequestOptions.f2456c, 8192)) {
            this.f2456c &= -16385;
        }
        if (h(baseRequestOptions.f2456c, 16384)) {
            this.f2456c &= -8193;
        }
        if (h(baseRequestOptions.f2456c, 32768)) {
            this.q = baseRequestOptions.q;
        }
        if (h(baseRequestOptions.f2456c, 131072)) {
            this.l = baseRequestOptions.l;
        }
        if (h(baseRequestOptions.f2456c, 2048)) {
            this.n.putAll(baseRequestOptions.n);
            this.s = baseRequestOptions.s;
        }
        this.f2456c |= baseRequestOptions.f2456c;
        this.m.b.g(baseRequestOptions.m.b);
        q();
        return this;
    }

    public BaseRequestOptions b() {
        if (this.p && !this.r) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.r = true;
        return i();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.bumptech.glide.util.CachedHashCodeArrayMap, androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    @Override // 
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public BaseRequestOptions clone() {
        try {
            BaseRequestOptions baseRequestOptions = (BaseRequestOptions) super.clone();
            Options options = new Options();
            baseRequestOptions.m = options;
            options.b.g(this.m.b);
            ?? simpleArrayMap = new SimpleArrayMap(0);
            baseRequestOptions.n = simpleArrayMap;
            simpleArrayMap.putAll(this.n);
            baseRequestOptions.p = false;
            baseRequestOptions.r = false;
            return baseRequestOptions;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public BaseRequestOptions d(Class cls) {
        if (this.r) {
            return clone().d(cls);
        }
        this.o = cls;
        this.f2456c |= ConstantsKt.DEFAULT_BLOCK_SIZE;
        q();
        return this;
    }

    public BaseRequestOptions e(DiskCacheStrategy diskCacheStrategy) {
        if (this.r) {
            return clone().e(diskCacheStrategy);
        }
        this.f = diskCacheStrategy;
        this.f2456c |= 4;
        q();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof BaseRequestOptions) {
            return g((BaseRequestOptions) obj);
        }
        return false;
    }

    public BaseRequestOptions f(DownsampleStrategy downsampleStrategy) {
        return r(DownsampleStrategy.f, downsampleStrategy);
    }

    public final boolean g(BaseRequestOptions baseRequestOptions) {
        baseRequestOptions.getClass();
        if (Float.compare(1.0f, 1.0f) == 0) {
            char[] cArr = Util.f2497a;
            if (this.h == baseRequestOptions.h && this.i == baseRequestOptions.i && this.j == baseRequestOptions.j && this.l == baseRequestOptions.l && this.f.equals(baseRequestOptions.f) && this.g == baseRequestOptions.g && this.m.equals(baseRequestOptions.m) && this.n.equals(baseRequestOptions.n) && this.o.equals(baseRequestOptions.o) && this.k.equals(baseRequestOptions.k) && Util.b(this.q, baseRequestOptions.q)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return Util.i(Util.i(Util.i(Util.i(Util.i(Util.i(Util.i(Util.h(0, Util.h(0, Util.h(1, Util.h(this.l ? 1 : 0, Util.h(this.j, Util.h(this.i, Util.h(this.h ? 1 : 0, Util.i(Util.h(0, Util.i(Util.h(0, Util.i(Util.h(0, Util.g(1.0f, 17)), null)), null)), null)))))))), this.f), this.g), this.m), this.n), this.o), this.k), this.q);
    }

    public BaseRequestOptions i() {
        this.p = true;
        return this;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.BitmapTransformation, java.lang.Object] */
    public BaseRequestOptions j() {
        return m(DownsampleStrategy.f2358c, new Object());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.BitmapTransformation, java.lang.Object] */
    public BaseRequestOptions k() {
        BaseRequestOptions m = m(DownsampleStrategy.b, new Object());
        m.s = true;
        return m;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.bumptech.glide.load.resource.bitmap.BitmapTransformation, java.lang.Object] */
    public BaseRequestOptions l() {
        BaseRequestOptions m = m(DownsampleStrategy.f2357a, new Object());
        m.s = true;
        return m;
    }

    public final BaseRequestOptions m(DownsampleStrategy downsampleStrategy, BitmapTransformation bitmapTransformation) {
        if (this.r) {
            return clone().m(downsampleStrategy, bitmapTransformation);
        }
        f(downsampleStrategy);
        return v(bitmapTransformation, false);
    }

    public BaseRequestOptions n(int i, int i2) {
        if (this.r) {
            return clone().n(i, i2);
        }
        this.j = i;
        this.i = i2;
        this.f2456c |= 512;
        q();
        return this;
    }

    public BaseRequestOptions o() {
        if (this.r) {
            return clone().o();
        }
        this.g = Priority.h;
        this.f2456c |= 8;
        q();
        return this;
    }

    public final BaseRequestOptions p(Option option) {
        if (this.r) {
            return clone().p(option);
        }
        this.m.b.remove(option);
        q();
        return this;
    }

    public final void q() {
        if (!this.p) {
        } else {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    public BaseRequestOptions r(Option option, Object obj) {
        if (this.r) {
            return clone().r(option, obj);
        }
        Preconditions.b(option);
        Preconditions.b(obj);
        this.m.b.put(option, obj);
        q();
        return this;
    }

    public BaseRequestOptions s(Key key) {
        if (this.r) {
            return clone().s(key);
        }
        this.k = key;
        this.f2456c |= 1024;
        q();
        return this;
    }

    public BaseRequestOptions t(boolean z) {
        if (this.r) {
            return clone().t(true);
        }
        this.h = !z;
        this.f2456c |= 256;
        q();
        return this;
    }

    public BaseRequestOptions u(Resources.Theme theme) {
        if (this.r) {
            return clone().u(theme);
        }
        this.q = theme;
        if (theme != null) {
            this.f2456c |= 32768;
            return r(ResourceDrawableDecoder.b, theme);
        }
        this.f2456c &= -32769;
        return p(ResourceDrawableDecoder.b);
    }

    public final BaseRequestOptions v(Transformation transformation, boolean z) {
        if (this.r) {
            return clone().v(transformation, z);
        }
        DrawableTransformation drawableTransformation = new DrawableTransformation(transformation, z);
        w(Bitmap.class, transformation, z);
        w(Drawable.class, drawableTransformation, z);
        w(BitmapDrawable.class, drawableTransformation, z);
        w(GifDrawable.class, new GifDrawableTransformation(transformation), z);
        q();
        return this;
    }

    public final BaseRequestOptions w(Class cls, Transformation transformation, boolean z) {
        if (this.r) {
            return clone().w(cls, transformation, z);
        }
        Preconditions.b(transformation);
        this.n.put(cls, transformation);
        int i = this.f2456c;
        this.f2456c = 67584 | i;
        this.s = false;
        if (z) {
            this.f2456c = i | 198656;
            this.l = true;
        }
        q();
        return this;
    }

    public BaseRequestOptions x() {
        if (this.r) {
            return clone().x();
        }
        this.t = true;
        this.f2456c |= 1048576;
        q();
        return this;
    }
}
