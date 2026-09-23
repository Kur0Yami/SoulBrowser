package com.nostra13.universalimageloader.cache.disc;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.utils.IoUtils;
import java.io.File;
import java.io.InputStream;

/* loaded from: classes3.dex */
public interface DiskCache {
    boolean a(String str, Bitmap bitmap);

    void b();

    boolean c(String str, InputStream inputStream, IoUtils.CopyListener copyListener);

    void clear();

    File get(String str);

    boolean remove(String str);
}
