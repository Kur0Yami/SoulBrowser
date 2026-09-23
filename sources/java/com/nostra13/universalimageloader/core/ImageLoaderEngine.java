package com.nostra13.universalimageloader.core;

import com.nostra13.universalimageloader.core.DefaultConfigurationFactory;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ImageLoaderEngine {

    /* renamed from: a, reason: collision with root package name */
    public final ImageLoaderConfiguration f20976a;
    public ThreadPoolExecutor b;

    /* renamed from: c, reason: collision with root package name */
    public ThreadPoolExecutor f20977c;
    public final Map e = DesugarCollections.synchronizedMap(new HashMap());
    public final WeakHashMap f = new WeakHashMap();
    public final AtomicBoolean g = new AtomicBoolean(false);
    public final AtomicBoolean h = new AtomicBoolean(false);
    public final AtomicBoolean i = new AtomicBoolean(false);
    public final Object j = new Object();
    public final ExecutorService d = Executors.newCachedThreadPool(new DefaultConfigurationFactory.DefaultThreadFactory(5, "uil-pool-d-"));

    public ImageLoaderEngine(ImageLoaderConfiguration imageLoaderConfiguration) {
        this.f20976a = imageLoaderConfiguration;
        this.b = imageLoaderConfiguration.b;
        this.f20977c = imageLoaderConfiguration.f20970c;
    }

    public final void a(ImageAware imageAware) {
        this.e.remove(Integer.valueOf(imageAware.getId()));
    }

    public final void b() {
        ImageLoaderConfiguration imageLoaderConfiguration = this.f20976a;
        if (!imageLoaderConfiguration.d && this.b.isShutdown()) {
            imageLoaderConfiguration.getClass();
            this.b = DefaultConfigurationFactory.a(imageLoaderConfiguration.f, imageLoaderConfiguration.g);
        }
        if (!imageLoaderConfiguration.e && this.f20977c.isShutdown()) {
            imageLoaderConfiguration.getClass();
            this.f20977c = DefaultConfigurationFactory.a(imageLoaderConfiguration.f, imageLoaderConfiguration.g);
        }
    }
}
