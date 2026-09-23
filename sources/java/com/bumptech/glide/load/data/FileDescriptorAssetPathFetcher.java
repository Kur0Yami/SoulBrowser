package com.bumptech.glide.load.data;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;

/* loaded from: classes.dex */
public class FileDescriptorAssetPathFetcher extends AssetPathFetcher<AssetFileDescriptor> {
    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return AssetFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.data.AssetPathFetcher
    public final void c(Object obj) {
        ((AssetFileDescriptor) obj).close();
    }

    @Override // com.bumptech.glide.load.data.AssetPathFetcher
    public final Object f(AssetManager assetManager, String str) {
        return assetManager.openFd(str);
    }
}
