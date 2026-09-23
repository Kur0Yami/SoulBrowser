package com.bumptech.glide.provider;

import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableEncoder;
import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ResourceEncoderRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2454a = new ArrayList();

    /* loaded from: classes.dex */
    public static final class Entry<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Class f2455a;
        public final ResourceEncoder b;

        public Entry(Class cls, ResourceEncoder resourceEncoder) {
            this.f2455a = cls;
            this.b = resourceEncoder;
        }
    }

    public final synchronized void a(Class cls, ResourceEncoder resourceEncoder) {
        this.f2454a.add(new Entry(cls, resourceEncoder));
    }

    public final synchronized ResourceEncoder b(Class cls) {
        int size = this.f2454a.size();
        for (int i = 0; i < size; i++) {
            Entry entry = (Entry) this.f2454a.get(i);
            if (entry.f2455a.isAssignableFrom(cls)) {
                return entry.b;
            }
        }
        return null;
    }

    public final synchronized void c(WebpDrawableEncoder webpDrawableEncoder) {
        this.f2454a.add(0, new Entry(WebpDrawable.class, webpDrawableEncoder));
    }
}
