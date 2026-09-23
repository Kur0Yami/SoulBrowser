package com.bumptech.glide.load.resource;

import android.content.Context;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class UnitTransformation<T> implements Transformation<T> {
    public static final UnitTransformation b = new Object();

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource b(Context context, Resource resource, int i, int i2) {
        return resource;
    }
}
