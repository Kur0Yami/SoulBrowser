package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.net.Uri;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.data.mediastore.ThumbFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;

/* loaded from: classes.dex */
public class MediaStoreVideoThumbLoader implements ModelLoader<Uri, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2334a;

    /* loaded from: classes.dex */
    public static class Factory implements ModelLoaderFactory<Uri, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2335a;

        public Factory(Context context) {
            this.f2335a = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreVideoThumbLoader(this.f2335a);
        }
    }

    public MediaStoreVideoThumbLoader(Context context) {
        this.f2334a = context.getApplicationContext();
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        if (MediaStoreUtil.b(uri) && uri.getPathSegments().contains("video")) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        Long l;
        Uri uri = (Uri) obj;
        if (i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE && i <= 512 && i2 <= 384 && (l = (Long) options.c(VideoDecoder.d)) != null && l.longValue() == -1) {
            return new ModelLoader.LoadData(new ObjectKey(uri), ThumbFetcher.g(this.f2334a, uri));
        }
        return null;
    }
}
