package com.mycompany.app.web;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public class WebSearch {
    public static WebSearch b;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f19406a;

    /* loaded from: classes3.dex */
    public static class WebSchItem {

        /* renamed from: a, reason: collision with root package name */
        public long f19407a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f19408c;
        public int d;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.mycompany.app.web.WebSearch, java.lang.Object] */
    public static WebSearch a() {
        if (b == null) {
            synchronized (WebSearch.class) {
                try {
                    if (b == null) {
                        b = new Object();
                    }
                } finally {
                }
            }
        }
        return b;
    }

    public final WebSchItem b(long j) {
        ArrayList arrayList;
        if (j > 0 && (arrayList = this.f19406a) != null && !arrayList.isEmpty()) {
            ArrayList arrayList2 = this.f19406a;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                WebSchItem webSchItem = (WebSchItem) obj;
                if (webSchItem != null && webSchItem.f19407a == j) {
                    return webSchItem;
                }
            }
            return null;
        }
        return null;
    }
}
