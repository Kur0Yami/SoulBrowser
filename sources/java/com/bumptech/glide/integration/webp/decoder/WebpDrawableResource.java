package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.integration.webp.decoder.WebpFrameLoader;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.resource.drawable.DrawableResource;

/* loaded from: classes.dex */
public class WebpDrawableResource extends DrawableResource<WebpDrawable> implements Initializable {
    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        WebpDrawable webpDrawable = (WebpDrawable) this.f2396c;
        webpDrawable.stop();
        webpDrawable.h = true;
        WebpFrameLoader webpFrameLoader = webpDrawable.f2137c.b;
        RequestManager requestManager = webpFrameLoader.d;
        webpFrameLoader.f2143c.clear();
        Bitmap bitmap = webpFrameLoader.l;
        if (bitmap != null) {
            webpFrameLoader.e.d(bitmap);
            webpFrameLoader.l = null;
        }
        webpFrameLoader.f = false;
        WebpFrameLoader.DelayTarget delayTarget = webpFrameLoader.i;
        if (delayTarget != null) {
            requestManager.p(delayTarget);
            webpFrameLoader.i = null;
        }
        WebpFrameLoader.DelayTarget delayTarget2 = webpFrameLoader.k;
        if (delayTarget2 != null) {
            requestManager.p(delayTarget2);
            webpFrameLoader.k = null;
        }
        WebpFrameLoader.DelayTarget delayTarget3 = webpFrameLoader.m;
        if (delayTarget3 != null) {
            requestManager.p(delayTarget3);
            webpFrameLoader.m = null;
        }
        webpFrameLoader.f2142a.c();
        webpFrameLoader.j = true;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return WebpDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        WebpFrameLoader webpFrameLoader = ((WebpDrawable) this.f2396c).f2137c.b;
        return webpFrameLoader.f2142a.b.getSizeInBytes() + webpFrameLoader.n;
    }

    @Override // com.bumptech.glide.load.resource.drawable.DrawableResource, com.bumptech.glide.load.engine.Initializable
    public final void s() {
        ((WebpDrawable) this.f2396c).f2137c.b.l.prepareToDraw();
    }
}
