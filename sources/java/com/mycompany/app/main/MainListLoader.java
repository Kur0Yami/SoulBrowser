package com.mycompany.app.main;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.view.GlideRequests;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MainListLoader {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16598a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f16599c;
    public ListLoadListener d;
    public GlideRequests e;
    public Handler f = new Handler(Looper.getMainLooper());
    public ExecutorService g;
    public boolean h;
    public MainItem.ChildItem i;
    public View j;
    public Bitmap k;
    public PackageManager l;

    /* loaded from: classes3.dex */
    public interface ListLoadListener {
        void a(MainItem.ChildItem childItem, View view);

        void b(MainItem.ChildItem childItem, View view, Bitmap bitmap);
    }

    /* loaded from: classes3.dex */
    public static class LoadItem {

        /* renamed from: a, reason: collision with root package name */
        public MainItem.ChildItem f16602a;
        public View b;
    }

    public MainListLoader(Context context, boolean z, ListLoadListener listLoadListener) {
        this.f16598a = context;
        this.b = z;
        this.d = listLoadListener;
    }

    public static Bitmap b(MainItem.ChildItem childItem) {
        int i;
        if (TextUtils.isEmpty(childItem.g)) {
            return null;
        }
        if (childItem.f16551c == 11 && ((i = childItem.f16550a) == 18 || i == 40)) {
            return MainUtil.n4(MainUtil.O1(childItem.g));
        }
        return ImageLoader.f().g().a(MemoryCacheUtils.a(2, childItem.g));
    }

    public static Bitmap c(String str, boolean z) {
        try {
            String d = d(str, z);
            if (!TextUtils.isEmpty(d)) {
                return ImageLoader.f().f20963a.i.a(d);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String d(String str, boolean z) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder t = a.t(str);
        if (z) {
            str2 = ".sec";
        } else {
            str2 = ".nor";
        }
        t.append(str2);
        return t.toString();
    }

    public static void g(String str, Bitmap bitmap, boolean z) {
        try {
            String d = d(str, z);
            if (!TextUtils.isEmpty(d)) {
                ImageLoader.f().f20963a.i.b(d, bitmap);
            }
        } catch (Exception unused) {
        }
    }

    public final void a() {
        if (this.f != null && !this.h) {
            this.h = true;
            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainListLoader.1
                /* JADX WARN: Code restructure failed: missing block: B:144:0x0069, code lost:
                
                    r3 = r4.b;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:145:0x006b, code lost:
                
                    r6 = r7;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v29, types: [com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions] */
                /* JADX WARN: Type inference failed for: r1v38, types: [com.bumptech.glide.RequestBuilder, com.bumptech.glide.request.BaseRequestOptions] */
                /* JADX WARN: Type inference failed for: r6v0 */
                /* JADX WARN: Type inference failed for: r6v1 */
                /* JADX WARN: Type inference failed for: r6v10 */
                /* JADX WARN: Type inference failed for: r6v19 */
                /* JADX WARN: Type inference failed for: r6v2, types: [com.mycompany.app.main.MainItem$ChildItem] */
                /* JADX WARN: Type inference failed for: r6v20 */
                /* JADX WARN: Type inference failed for: r6v21 */
                /* JADX WARN: Type inference failed for: r6v22 */
                /* JADX WARN: Type inference failed for: r6v23 */
                /* JADX WARN: Type inference failed for: r6v3 */
                /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
                /* JADX WARN: Type inference failed for: r6v5 */
                /* JADX WARN: Type inference failed for: r6v7 */
                /* JADX WARN: Type inference failed for: r6v9 */
                /* JADX WARN: Type inference failed for: r8v13, types: [com.bumptech.glide.request.RequestFutureTarget, com.bumptech.glide.request.target.Target, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r8v9, types: [com.bumptech.glide.request.RequestFutureTarget, com.bumptech.glide.request.target.Target, java.lang.Object] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 503
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainListLoader.AnonymousClass1.run():void");
                }
            };
            ExecutorService executorService = this.g;
            if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
                executorService = MainApp.i(this.f16598a);
                if (executorService == null) {
                    return;
                } else {
                    this.g = executorService;
                }
            }
            try {
                executorService.execute(runnable);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.mycompany.app.main.MainListLoader$LoadItem, java.lang.Object] */
    public final void e(MainItem.ChildItem childItem, View view) {
        if (view != null) {
            try {
                if (this.f16599c == null) {
                    this.f16599c = new ArrayList();
                }
                ?? obj = new Object();
                obj.f16602a = childItem;
                obj.b = view;
                this.f16599c.add(obj);
                a();
            } catch (Exception unused) {
            }
        }
    }

    public final void f() {
        if (this.e != null) {
            this.e = null;
        }
        this.f16599c = null;
        this.d = null;
        MainUtil.R6(this.f);
        this.f = null;
        this.g = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
    }
}
