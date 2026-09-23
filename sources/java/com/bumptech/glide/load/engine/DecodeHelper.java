package com.bumptech.glide.load.engine;

import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.util.MultiClassKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class DecodeHelper<Transcode> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2190a = new ArrayList();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public GlideContext f2191c;
    public Object d;
    public int e;
    public int f;
    public Class g;
    public DecodeJob.DiskCacheProvider h;
    public Options i;
    public Map j;
    public Class k;
    public boolean l;
    public boolean m;
    public Key n;
    public Priority o;
    public DiskCacheStrategy p;
    public boolean q;
    public boolean r;

    public final ArrayList a() {
        boolean z = this.m;
        ArrayList arrayList = this.b;
        if (!z) {
            this.m = true;
            arrayList.clear();
            ArrayList b = b();
            int size = b.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData loadData = (ModelLoader.LoadData) b.get(i);
                Key key = loadData.f2302a;
                List list = loadData.b;
                if (!arrayList.contains(key)) {
                    arrayList.add(loadData.f2302a);
                }
                for (int i2 = 0; i2 < list.size(); i2++) {
                    if (!arrayList.contains(list.get(i2))) {
                        arrayList.add((Key) list.get(i2));
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z = this.l;
        ArrayList arrayList = this.f2190a;
        if (!z) {
            this.l = true;
            arrayList.clear();
            Registry b = this.f2191c.b();
            List c2 = b.f2089a.c(this.d);
            int size = c2.size();
            for (int i = 0; i < size; i++) {
                ModelLoader.LoadData b2 = ((ModelLoader) c2.get(i)).b(this.d, this.e, this.f, this.i);
                if (b2 != null) {
                    arrayList.add(b2);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final LoadPath c(Class cls) {
        LoadPath loadPath;
        Class cls2;
        Class cls3;
        Class cls4;
        Class cls5 = cls;
        Registry b = this.f2191c.b();
        Class cls6 = this.g;
        Class cls7 = this.k;
        LoadPathCache loadPathCache = b.i;
        LoadPath loadPath2 = null;
        MultiClassKey multiClassKey = (MultiClassKey) loadPathCache.b.getAndSet(null);
        MultiClassKey multiClassKey2 = multiClassKey;
        if (multiClassKey == null) {
            multiClassKey2 = new Object();
        }
        multiClassKey2.f2495a = cls5;
        multiClassKey2.b = cls6;
        multiClassKey2.f2496c = cls7;
        synchronized (loadPathCache.f2449a) {
            loadPath = (LoadPath) loadPathCache.f2449a.get(multiClassKey2);
        }
        loadPathCache.b.set(multiClassKey2);
        b.i.getClass();
        if (LoadPathCache.f2448c.equals(loadPath)) {
            return null;
        }
        if (loadPath == null) {
            TranscoderRegistry transcoderRegistry = b.f;
            ArrayList arrayList = new ArrayList();
            ResourceDecoderRegistry resourceDecoderRegistry = b.f2090c;
            ArrayList d = resourceDecoderRegistry.d(cls5, cls6);
            int size = d.size();
            int i = 0;
            while (i < size) {
                int i2 = i + 1;
                Class cls8 = (Class) d.get(i);
                ArrayList b2 = transcoderRegistry.b(cls8, cls7);
                int size2 = b2.size();
                int i3 = 0;
                while (i3 < size2) {
                    Class cls9 = (Class) b2.get(i3);
                    arrayList.add(new DecodePath(cls5, cls8, cls9, resourceDecoderRegistry.b(cls5, cls8), transcoderRegistry.a(cls8, cls9), b.j));
                    cls5 = cls;
                    i3++;
                    size2 = size2;
                    size = size;
                    b2 = b2;
                }
                cls5 = cls;
                i = i2;
            }
            if (arrayList.isEmpty()) {
                cls2 = cls;
                cls3 = cls6;
                cls4 = cls7;
            } else {
                cls2 = cls;
                cls3 = cls6;
                cls4 = cls7;
                loadPath2 = new LoadPath(cls2, cls3, cls4, arrayList, b.j);
            }
            b.i.a(cls2, cls3, cls4, loadPath2);
            return loadPath2;
        }
        return loadPath;
    }

    public final Transformation d(Class cls) {
        Transformation transformation = (Transformation) this.j.get(cls);
        if (transformation == null) {
            Iterator it = this.j.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    transformation = (Transformation) entry.getValue();
                    break;
                }
            }
        }
        if (transformation == null) {
            if (this.j.isEmpty() && this.q) {
                throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
            }
            return UnitTransformation.b;
        }
        return transformation;
    }
}
