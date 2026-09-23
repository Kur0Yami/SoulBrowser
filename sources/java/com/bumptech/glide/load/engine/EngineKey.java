package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class EngineKey implements Key {
    public final Object b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2222c;
    public final int d;
    public final Class e;
    public final Class f;
    public final Key g;
    public final Map h;
    public final Options i;
    public int j;

    public EngineKey(Object obj, Key key, int i, int i2, Map map, Class cls, Class cls2, Options options) {
        Preconditions.c(obj, "Argument must not be null");
        this.b = obj;
        this.g = key;
        this.f2222c = i;
        this.d = i2;
        Preconditions.c(map, "Argument must not be null");
        this.h = map;
        Preconditions.c(cls, "Resource class must not be null");
        this.e = cls;
        Preconditions.c(cls2, "Transcode class must not be null");
        this.f = cls2;
        Preconditions.c(options, "Argument must not be null");
        this.i = options;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof EngineKey) {
            EngineKey engineKey = (EngineKey) obj;
            if (this.b.equals(engineKey.b) && this.g.equals(engineKey.g) && this.d == engineKey.d && this.f2222c == engineKey.f2222c && this.h.equals(engineKey.h) && this.e.equals(engineKey.e) && this.f.equals(engineKey.f) && this.i.equals(engineKey.i)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        if (this.j == 0) {
            int hashCode = this.b.hashCode();
            this.j = hashCode;
            int hashCode2 = ((((this.g.hashCode() + (hashCode * 31)) * 31) + this.f2222c) * 31) + this.d;
            this.j = hashCode2;
            int hashCode3 = this.h.hashCode() + (hashCode2 * 31);
            this.j = hashCode3;
            int hashCode4 = this.e.hashCode() + (hashCode3 * 31);
            this.j = hashCode4;
            int hashCode5 = this.f.hashCode() + (hashCode4 * 31);
            this.j = hashCode5;
            this.j = this.i.b.hashCode() + (hashCode5 * 31);
        }
        return this.j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.b + ", width=" + this.f2222c + ", height=" + this.d + ", resourceClass=" + this.e + ", transcodeClass=" + this.f + ", signature=" + this.g + ", hashCode=" + this.j + ", transformations=" + this.h + ", options=" + this.i + '}';
    }
}
