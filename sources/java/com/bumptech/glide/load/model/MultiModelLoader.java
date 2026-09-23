package com.bumptech.glide.load.model;

import androidx.core.util.Pools;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MultiModelLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2307a;
    public final Pools.Pool b;

    /* loaded from: classes.dex */
    public static class MultiFetcher<Data> implements DataFetcher<Data>, DataFetcher.DataCallback<Data> {

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f2308c;
        public final Pools.Pool f;
        public int g;
        public Priority h;
        public DataFetcher.DataCallback i;
        public List j;
        public boolean k;

        public MultiFetcher(ArrayList arrayList, Pools.Pool pool) {
            this.f = pool;
            if (!arrayList.isEmpty()) {
                this.f2308c = arrayList;
                this.g = 0;
                return;
            }
            throw new IllegalArgumentException("Must not be empty.");
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return ((DataFetcher) this.f2308c.get(0)).a();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            List list = this.j;
            if (list != null) {
                this.f.a(list);
            }
            this.j = null;
            ArrayList arrayList = this.f2308c;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((DataFetcher) obj).b();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public final void c(Exception exc) {
            List list = this.j;
            Preconditions.c(list, "Argument must not be null");
            list.add(exc);
            g();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void cancel() {
            this.k = true;
            ArrayList arrayList = this.f2308c;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((DataFetcher) obj).cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final DataSource d() {
            return ((DataFetcher) this.f2308c.get(0)).d();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
            this.h = priority;
            this.i = dataCallback;
            this.j = (List) this.f.b();
            ((DataFetcher) this.f2308c.get(this.g)).e(priority, this);
            if (this.k) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public final void f(Object obj) {
            if (obj != null) {
                this.i.f(obj);
            } else {
                g();
            }
        }

        public final void g() {
            if (this.k) {
                return;
            }
            if (this.g < this.f2308c.size() - 1) {
                this.g++;
                e(this.h, this.i);
            } else {
                Preconditions.b(this.j);
                this.i.c(new GlideException("Fetch failed", new ArrayList(this.j)));
            }
        }
    }

    public MultiModelLoader(ArrayList arrayList, Pools.Pool pool) {
        this.f2307a = arrayList;
        this.b = pool;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        ArrayList arrayList = this.f2307a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj2 = arrayList.get(i);
            i++;
            if (((ModelLoader) obj2).a(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        ModelLoader.LoadData b;
        ArrayList arrayList = this.f2307a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        Key key = null;
        for (int i3 = 0; i3 < size; i3++) {
            ModelLoader modelLoader = (ModelLoader) arrayList.get(i3);
            if (modelLoader.a(obj) && (b = modelLoader.b(obj, i, i2, options)) != null) {
                key = b.f2302a;
                arrayList2.add(b.f2303c);
            }
        }
        if (arrayList2.isEmpty() || key == null) {
            return null;
        }
        return new ModelLoader.LoadData(key, new MultiFetcher(arrayList2, this.b));
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f2307a.toArray()) + '}';
    }
}
