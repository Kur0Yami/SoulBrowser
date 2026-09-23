package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ThumbnailStreamOpener {
    public static final FileService e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final ThumbnailQuery f2178a;
    public final ArrayPool b;

    /* renamed from: c, reason: collision with root package name */
    public final ContentResolver f2179c;
    public final ArrayList d;

    public ThumbnailStreamOpener(ArrayList arrayList, ThumbnailQuery thumbnailQuery, ArrayPool arrayPool, ContentResolver contentResolver) {
        this.f2178a = thumbnailQuery;
        this.b = arrayPool;
        this.f2179c = contentResolver;
        this.d = arrayList;
    }
}
