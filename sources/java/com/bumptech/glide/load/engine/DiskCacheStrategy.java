package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* loaded from: classes.dex */
public abstract class DiskCacheStrategy {

    /* renamed from: a, reason: collision with root package name */
    public static final DiskCacheStrategy f2204a = new Object();
    public static final DiskCacheStrategy b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final DiskCacheStrategy f2205c = new Object();

    /* renamed from: com.bumptech.glide.load.engine.DiskCacheStrategy$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends DiskCacheStrategy {
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean c(DataSource dataSource) {
            if (dataSource == DataSource.f) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            if (dataSource != DataSource.h && dataSource != DataSource.i) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DiskCacheStrategy$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends DiskCacheStrategy {
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean c(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DiskCacheStrategy$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends DiskCacheStrategy {
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean c(DataSource dataSource) {
            if (dataSource != DataSource.g && dataSource != DataSource.i) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DiskCacheStrategy$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 extends DiskCacheStrategy {
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean c(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            if (dataSource != DataSource.h && dataSource != DataSource.i) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.DiskCacheStrategy$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 extends DiskCacheStrategy {
        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean c(DataSource dataSource) {
            if (dataSource == DataSource.f) {
                return true;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.engine.DiskCacheStrategy
        public final boolean d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            if (((z && dataSource == DataSource.g) || dataSource == DataSource.f2146c) && encodeStrategy == EncodeStrategy.f) {
                return true;
            }
            return false;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(DataSource dataSource);

    public abstract boolean d(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy);
}
