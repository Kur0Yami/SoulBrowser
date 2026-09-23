package com.bumptech.glide;

import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.data.DataRewinderRegistry;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.provider.EncoderRegistry;
import com.bumptech.glide.provider.ImageHeaderParserRegistry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ModelToResourceClassCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.provider.ResourceEncoderRegistry;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class Registry {

    /* renamed from: a, reason: collision with root package name */
    public final ModelLoaderRegistry f2089a;
    public final EncoderRegistry b;

    /* renamed from: c, reason: collision with root package name */
    public final ResourceDecoderRegistry f2090c;
    public final ResourceEncoderRegistry d;
    public final DataRewinderRegistry e;
    public final TranscoderRegistry f;
    public final ImageHeaderParserRegistry g;
    public final ModelToResourceClassCache h = new ModelToResourceClassCache();
    public final LoadPathCache i = new LoadPathCache();
    public final Pools.Pool j;

    /* loaded from: classes.dex */
    public static class MissingComponentException extends RuntimeException {
    }

    /* loaded from: classes.dex */
    public static final class NoImageHeaderParserException extends MissingComponentException {
    }

    /* loaded from: classes.dex */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
    }

    /* loaded from: classes.dex */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(Class cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
    }

    public Registry() {
        Pools.Pool b = FactoryPools.b();
        this.j = b;
        this.f2089a = new ModelLoaderRegistry(b);
        this.b = new EncoderRegistry();
        this.f2090c = new ResourceDecoderRegistry();
        this.d = new ResourceEncoderRegistry();
        this.e = new DataRewinderRegistry();
        this.f = new TranscoderRegistry();
        this.g = new ImageHeaderParserRegistry();
        List asList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(asList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = asList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        ResourceDecoderRegistry resourceDecoderRegistry = this.f2090c;
        synchronized (resourceDecoderRegistry) {
            try {
                ArrayList arrayList2 = new ArrayList(resourceDecoderRegistry.f2451a);
                resourceDecoderRegistry.f2451a.clear();
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    resourceDecoderRegistry.f2451a.add((String) obj);
                }
                int size2 = arrayList2.size();
                while (i < size2) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    String str = (String) obj2;
                    if (!arrayList.contains(str)) {
                        resourceDecoderRegistry.f2451a.add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(ResourceDecoder resourceDecoder, Class cls, Class cls2, String str) {
        this.f2090c.a(resourceDecoder, cls, cls2, str);
    }

    public final ArrayList b() {
        ArrayList arrayList;
        ImageHeaderParserRegistry imageHeaderParserRegistry = this.g;
        synchronized (imageHeaderParserRegistry) {
            arrayList = imageHeaderParserRegistry.f2447a;
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new RuntimeException("Failed to find image header parser.");
    }

    public final DataRewinder c(Object obj) {
        DataRewinder b;
        DataRewinderRegistry dataRewinderRegistry = this.e;
        synchronized (dataRewinderRegistry) {
            try {
                Preconditions.b(obj);
                DataRewinder.Factory factory = (DataRewinder.Factory) dataRewinderRegistry.f2166a.get(obj.getClass());
                if (factory == null) {
                    Iterator it = dataRewinderRegistry.f2166a.values().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DataRewinder.Factory factory2 = (DataRewinder.Factory) it.next();
                        if (factory2.a().isAssignableFrom(obj.getClass())) {
                            factory = factory2;
                            break;
                        }
                    }
                }
                if (factory == null) {
                    factory = DataRewinderRegistry.b;
                }
                b = factory.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }

    public final void d(ImageHeaderParser imageHeaderParser) {
        ImageHeaderParserRegistry imageHeaderParserRegistry = this.g;
        synchronized (imageHeaderParserRegistry) {
            imageHeaderParserRegistry.f2447a.add(imageHeaderParser);
        }
    }

    public final void e(DataRewinder.Factory factory) {
        DataRewinderRegistry dataRewinderRegistry = this.e;
        synchronized (dataRewinderRegistry) {
            dataRewinderRegistry.f2166a.put(factory.a(), factory);
        }
    }
}
