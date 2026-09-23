package com.mycompany.app.view;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;

/* loaded from: classes3.dex */
public class GlideRequest<TranscodeType> extends RequestBuilder<TranscodeType> implements Cloneable {
    @Override // com.bumptech.glide.RequestBuilder
    /* renamed from: D */
    public final RequestBuilder clone() {
        return (GlideRequest) super.clone();
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder I(RequestListener requestListener) {
        return (GlideRequest) super.I(requestListener);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder J(Drawable drawable) {
        return (GlideRequest) super.J(drawable);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder K(Uri uri) {
        return (GlideRequest) super.K(uri);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder L(Integer num) {
        return (GlideRequest) super.L(num);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder M(Object obj) {
        return (GlideRequest) O(obj);
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder N(String str) {
        return (GlideRequest) O(str);
    }

    public final GlideRequest P() {
        return (GlideRequest) super.e(DiskCacheStrategy.f2204a);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions a(BaseRequestOptions baseRequestOptions) {
        return (GlideRequest) super.a(baseRequestOptions);
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: c */
    public final BaseRequestOptions clone() {
        return (GlideRequest) super.clone();
    }

    @Override // com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions
    public final Object clone() {
        return (GlideRequest) super.clone();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions d(Class cls) {
        return (GlideRequest) super.d(cls);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions e(DiskCacheStrategy diskCacheStrategy) {
        return (GlideRequest) super.e(diskCacheStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions f(DownsampleStrategy downsampleStrategy) {
        return (GlideRequest) r(DownsampleStrategy.f, downsampleStrategy);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions i() {
        this.p = true;
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions j() {
        return (GlideRequest) super.j();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions k() {
        return (GlideRequest) super.k();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions l() {
        return (GlideRequest) super.l();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions n(int i, int i2) {
        return (GlideRequest) super.n(i, i2);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions o() {
        return (GlideRequest) super.o();
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions r(Option option, Object obj) {
        return (GlideRequest) super.r(option, obj);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions s(Key key) {
        return (GlideRequest) super.s(key);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions t(boolean z) {
        return (GlideRequest) super.t(true);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions u(Resources.Theme theme) {
        return (GlideRequest) super.u(theme);
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final BaseRequestOptions x() {
        return (GlideRequest) super.x();
    }

    @Override // com.bumptech.glide.RequestBuilder
    public final RequestBuilder y(RequestListener requestListener) {
        return (GlideRequest) super.y(requestListener);
    }

    @Override // com.bumptech.glide.RequestBuilder
    /* renamed from: z */
    public final RequestBuilder a(BaseRequestOptions baseRequestOptions) {
        return (GlideRequest) super.a(baseRequestOptions);
    }
}
