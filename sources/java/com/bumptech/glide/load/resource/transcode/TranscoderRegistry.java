package com.bumptech.glide.load.resource.transcode;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class TranscoderRegistry {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2415a = new ArrayList();

    /* loaded from: classes.dex */
    public static final class Entry<Z, R> {

        /* renamed from: a, reason: collision with root package name */
        public final Class f2416a;
        public final Class b;

        /* renamed from: c, reason: collision with root package name */
        public final ResourceTranscoder f2417c;

        public Entry(Class cls, Class cls2, ResourceTranscoder resourceTranscoder) {
            this.f2416a = cls;
            this.b = cls2;
            this.f2417c = resourceTranscoder;
        }
    }

    public final synchronized ResourceTranscoder a(Class cls, Class cls2) {
        boolean z;
        if (cls2.isAssignableFrom(cls)) {
            return UnitTranscoder.f2418a;
        }
        ArrayList arrayList = this.f2415a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Entry entry = (Entry) obj;
            if (entry.f2416a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.b)) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return entry.f2417c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public final synchronized ArrayList b(Class cls, Class cls2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        ArrayList arrayList2 = this.f2415a;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            Entry entry = (Entry) obj;
            if (entry.f2416a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.b)) {
                z = true;
            } else {
                z = false;
            }
            if (z && !arrayList.contains(entry.b)) {
                arrayList.add(entry.b);
            }
        }
        return arrayList;
    }

    public final synchronized void c(Class cls, Class cls2, ResourceTranscoder resourceTranscoder) {
        this.f2415a.add(new Entry(cls, cls2, resourceTranscoder));
    }
}
