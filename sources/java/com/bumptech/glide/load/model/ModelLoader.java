package com.bumptech.glide.load.model;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.util.Preconditions;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public interface ModelLoader<Model, Data> {

    /* loaded from: classes.dex */
    public static class LoadData<Data> {

        /* renamed from: a, reason: collision with root package name */
        public final Key f2302a;
        public final List b;

        /* renamed from: c, reason: collision with root package name */
        public final DataFetcher f2303c;

        public LoadData(Key key, DataFetcher dataFetcher) {
            List list = Collections.EMPTY_LIST;
            Preconditions.c(key, "Argument must not be null");
            this.f2302a = key;
            Preconditions.c(list, "Argument must not be null");
            this.b = list;
            Preconditions.c(dataFetcher, "Argument must not be null");
            this.f2303c = dataFetcher;
        }
    }

    boolean a(Object obj);

    LoadData b(Object obj, int i, int i2, Options options);
}
