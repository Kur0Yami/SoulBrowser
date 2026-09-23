package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.provider.MediaStore;

/* loaded from: classes.dex */
public final class MediaStoreUtil {
    public static boolean a() {
        if (Build.VERSION.SDK_INT >= 30 && SdkExtensions.getExtensionVersion(30) >= 17) {
            return true;
        }
        return false;
    }

    public static boolean b(Uri uri) {
        if (uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority())) {
            return true;
        }
        return false;
    }

    public static AssetFileDescriptor c(ContentResolver contentResolver, Uri uri) {
        return MediaStore.openAssetFileDescriptor(contentResolver, uri, "r", null);
    }
}
