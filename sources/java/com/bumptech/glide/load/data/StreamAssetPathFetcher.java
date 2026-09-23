package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import java.io.InputStream;

/* loaded from: classes.dex */
public class StreamAssetPathFetcher extends AssetPathFetcher<InputStream> {
    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.AssetPathFetcher
    public final void c(Object obj) {
        ((InputStream) obj).close();
    }

    @Override // com.bumptech.glide.load.data.AssetPathFetcher
    public final Object f(AssetManager assetManager, String str) {
        return assetManager.open(str);
    }
}
