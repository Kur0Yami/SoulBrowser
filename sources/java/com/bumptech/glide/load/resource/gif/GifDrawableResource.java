package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.load.resource.gif.GifFrameLoader;

/* loaded from: classes.dex */
public class GifDrawableResource extends DrawableResource<GifDrawable> implements Initializable {
    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        GifDrawable gifDrawable = (GifDrawable) this.f2396c;
        gifDrawable.stop();
        gifDrawable.h = true;
        GifFrameLoader gifFrameLoader = gifDrawable.f2402c.f2403a;
        RequestManager requestManager = gifFrameLoader.d;
        gifFrameLoader.f2405c.clear();
        Bitmap bitmap = gifFrameLoader.l;
        if (bitmap != null) {
            gifFrameLoader.e.d(bitmap);
            gifFrameLoader.l = null;
        }
        gifFrameLoader.f = false;
        GifFrameLoader.DelayTarget delayTarget = gifFrameLoader.i;
        if (delayTarget != null) {
            requestManager.p(delayTarget);
            gifFrameLoader.i = null;
        }
        GifFrameLoader.DelayTarget delayTarget2 = gifFrameLoader.k;
        if (delayTarget2 != null) {
            requestManager.p(delayTarget2);
            gifFrameLoader.k = null;
        }
        GifFrameLoader.DelayTarget delayTarget3 = gifFrameLoader.n;
        if (delayTarget3 != null) {
            requestManager.p(delayTarget3);
            gifFrameLoader.n = null;
        }
        StandardGifDecoder standardGifDecoder = gifFrameLoader.f2404a;
        GifDecoder.BitmapProvider bitmapProvider = standardGifDecoder.f2114c;
        standardGifDecoder.l = null;
        byte[] bArr = standardGifDecoder.i;
        if (bArr != null) {
            bitmapProvider.d(bArr);
        }
        int[] iArr = standardGifDecoder.j;
        if (iArr != null) {
            bitmapProvider.f(iArr);
        }
        Bitmap bitmap2 = standardGifDecoder.m;
        if (bitmap2 != null) {
            bitmapProvider.c(bitmap2);
        }
        standardGifDecoder.m = null;
        standardGifDecoder.d = null;
        standardGifDecoder.s = null;
        byte[] bArr2 = standardGifDecoder.e;
        if (bArr2 != null) {
            bitmapProvider.d(bArr2);
        }
        gifFrameLoader.j = true;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return GifDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        GifFrameLoader gifFrameLoader = ((GifDrawable) this.f2396c).f2402c.f2403a;
        StandardGifDecoder standardGifDecoder = gifFrameLoader.f2404a;
        return (standardGifDecoder.j.length * 4) + standardGifDecoder.d.limit() + standardGifDecoder.i.length + gifFrameLoader.o;
    }

    @Override // com.bumptech.glide.load.resource.drawable.DrawableResource, com.bumptech.glide.load.engine.Initializable
    public final void s() {
        ((GifDrawable) this.f2396c).c().prepareToDraw();
    }
}
