package com.bumptech.glide.util;

/* loaded from: classes.dex */
public final class GlideSuppliers {

    /* loaded from: classes.dex */
    public interface GlideSupplier<T> {
        Object get();
    }

    public static GlideSupplier a(final GlideSupplier glideSupplier) {
        return new GlideSupplier<Object>() { // from class: com.bumptech.glide.util.GlideSuppliers.1

            /* renamed from: a, reason: collision with root package name */
            public volatile Object f2489a;

            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public final Object get() {
                if (this.f2489a == null) {
                    synchronized (this) {
                        try {
                            if (this.f2489a == null) {
                                Object obj = GlideSupplier.this.get();
                                Preconditions.c(obj, "Argument must not be null");
                                this.f2489a = obj;
                            }
                        } finally {
                        }
                    }
                }
                return this.f2489a;
            }
        };
    }
}
