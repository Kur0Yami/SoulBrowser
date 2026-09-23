package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class ObjectKey implements Key {
    public final Object b;

    public ObjectKey(Object obj) {
        Preconditions.c(obj, "Argument must not be null");
        this.b = obj;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(this.b.toString().getBytes(Key.f2160a));
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof ObjectKey) {
            return this.b.equals(((ObjectKey) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.b + '}';
    }
}
