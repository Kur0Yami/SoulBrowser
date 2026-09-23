package com.bumptech.glide.signature;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class AndroidResourceSignature implements Key {
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final Key f2480c;

    public AndroidResourceSignature(int i, Key key) {
        this.b = i;
        this.f2480c = key;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        this.f2480c.a(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.b).array());
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof AndroidResourceSignature) {
            AndroidResourceSignature androidResourceSignature = (AndroidResourceSignature) obj;
            if (this.b == androidResourceSignature.b && this.f2480c.equals(androidResourceSignature.f2480c)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return Util.i(this.b, this.f2480c);
    }
}
