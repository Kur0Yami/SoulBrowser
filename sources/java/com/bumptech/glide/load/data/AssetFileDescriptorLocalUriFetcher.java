package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public final class AssetFileDescriptorLocalUriFetcher extends LocalUriFetcher<AssetFileDescriptor> {
    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class a() {
        return AssetFileDescriptor.class;
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final void c(Object obj) {
        ((AssetFileDescriptor) obj).close();
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    public final Object f(ContentResolver contentResolver, Uri uri) {
        AssetFileDescriptor openAssetFileDescriptor;
        boolean z = this.f2172c;
        ContentResolver contentResolver2 = this.g;
        if (z && MediaStoreUtil.b(uri) && MediaStoreUtil.a()) {
            openAssetFileDescriptor = MediaStoreUtil.c(contentResolver2, uri);
        } else {
            openAssetFileDescriptor = contentResolver2.openAssetFileDescriptor(uri, "r");
        }
        if (openAssetFileDescriptor != null) {
            return openAssetFileDescriptor;
        }
        throw new FileNotFoundException("FileDescriptor is null for: " + uri);
    }
}
