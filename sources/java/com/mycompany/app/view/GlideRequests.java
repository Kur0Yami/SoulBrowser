package com.mycompany.app.view;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

/* loaded from: classes3.dex */
public class GlideRequests extends RequestManager {
    public final GlideRequest A() {
        return (GlideRequest) super.n();
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder b(Class cls) {
        return new RequestBuilder(this.f2094c, this, cls, this.f);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder d() {
        return (GlideRequest) super.d();
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder k() {
        return (GlideRequest) b(Drawable.class);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder n() {
        return (GlideRequest) super.n();
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder r(Drawable drawable) {
        return (GlideRequest) super.r(drawable);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder s(Integer num) {
        return (GlideRequest) super.s(num);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder t(Object obj) {
        return (GlideRequest) super.t(obj);
    }

    @Override // com.bumptech.glide.RequestManager
    public final RequestBuilder u(String str) {
        return (GlideRequest) super.u(str);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.bumptech.glide.request.BaseRequestOptions, com.mycompany.app.view.GlideOptions] */
    @Override // com.bumptech.glide.RequestManager
    public final void x(RequestOptions requestOptions) {
        if (requestOptions instanceof GlideOptions) {
            super.x(requestOptions);
        } else {
            super.x(new BaseRequestOptions().y(requestOptions));
        }
    }

    public final GlideRequest z() {
        return (GlideRequest) super.d();
    }
}
