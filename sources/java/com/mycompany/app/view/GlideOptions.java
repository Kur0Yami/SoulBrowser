package com.mycompany.app.view;

import android.content.res.Resources;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

/* loaded from: classes3.dex */
public final class GlideOptions extends RequestOptions implements Cloneable {
    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions a(BaseRequestOptions baseRequestOptions) {
        return (GlideOptions) super.a(baseRequestOptions);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions b() {
        return (GlideOptions) super.b();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: c */
    public final BaseRequestOptions clone() {
        return (GlideOptions) super.clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final Object clone() {
        return (GlideOptions) super.clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions d(Class cls) {
        return (GlideOptions) super.d(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions e(DiskCacheStrategy diskCacheStrategy) {
        return (GlideOptions) super.e(diskCacheStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions f(DownsampleStrategy downsampleStrategy) {
        return (GlideOptions) r(DownsampleStrategy.f, downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions i() {
        this.p = true;
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions j() {
        return (GlideOptions) super.j();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions k() {
        return (GlideOptions) super.k();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions l() {
        return (GlideOptions) super.l();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions n(int i, int i2) {
        return (GlideOptions) super.n(i, i2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions o() {
        return (GlideOptions) super.o();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions r(Option option, Object obj) {
        return (GlideOptions) super.r(option, obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions s(Key key) {
        return (GlideOptions) super.s(key);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions t(boolean z) {
        return (GlideOptions) super.t(z);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions u(Resources.Theme theme) {
        return (GlideOptions) super.u(theme);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions x() {
        return (GlideOptions) super.x();
    }

    public final GlideOptions y(RequestOptions requestOptions) {
        return (GlideOptions) super.a(requestOptions);
    }
}
