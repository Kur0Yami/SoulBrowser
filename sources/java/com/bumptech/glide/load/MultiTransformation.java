package com.bumptech.glide.load;

import android.content.Context;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class MultiTransformation<T> implements Transformation<T> {
    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        throw null;
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource b(Context context, Resource resource, int i, int i2) {
        throw null;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (!(obj instanceof MultiTransformation)) {
            return false;
        }
        throw null;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        throw null;
    }
}
