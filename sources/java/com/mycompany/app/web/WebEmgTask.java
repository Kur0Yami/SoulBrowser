package com.mycompany.app.web;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.AdSize;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebNestView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class WebEmgTask {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19161a = true;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public WebNestView f19162c;
    public EmgTaskListener d;
    public LoadTask e;
    public boolean f;
    public String g;
    public String h;

    /* loaded from: classes3.dex */
    public interface EmgTaskListener {
        void a();

        void b();

        void c(ArrayList arrayList, int i, int i2, String str);
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public String g;
        public ArrayList h;
        public int i;
        public int j;
        public String k;

        public LoadTask(WebEmgTask webEmgTask, String str, String str2) {
            WeakReference weakReference = new WeakReference(webEmgTask);
            this.e = weakReference;
            if (((WebEmgTask) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = str2;
            this.h = new ArrayList();
            this.i = -1;
            this.j = -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:135:0x00e8, code lost:
        
            continue;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 293
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebEmgTask.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WebEmgTask webEmgTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webEmgTask = (WebEmgTask) weakReference.get()) == null) {
                return;
            }
            webEmgTask.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.k = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            WebEmgTask webEmgTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webEmgTask = (WebEmgTask) weakReference.get()) == null) {
                return;
            }
            webEmgTask.e = null;
            EmgTaskListener emgTaskListener = webEmgTask.d;
            if (emgTaskListener != null) {
                emgTaskListener.c(this.h, this.i - 1, this.j, this.k);
            }
            this.f = null;
            this.g = null;
            this.h = null;
            this.k = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void f() {
            WebEmgTask webEmgTask;
            EmgTaskListener emgTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webEmgTask = (WebEmgTask) weakReference.get()) != null && (emgTaskListener = webEmgTask.d) != null) {
                emgTaskListener.b();
            }
        }
    }

    public WebEmgTask(Context context, WebNestView webNestView, EmgTaskListener emgTaskListener) {
        this.b = context;
        this.f19162c = webNestView;
        this.d = emgTaskListener;
        if (webNestView == null) {
            return;
        }
        webNestView.setHtmlListener(new WebNestView.WebHtmlListener() { // from class: com.mycompany.app.web.WebEmgTask.1
            @Override // com.mycompany.app.web.WebNestView.WebHtmlListener
            public final void a(String str, String str2) {
                WebEmgTask webEmgTask = WebEmgTask.this;
                webEmgTask.g = str;
                webEmgTask.h = str2;
                WebNestView webNestView2 = webEmgTask.f19162c;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebEmgTask.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebEmgTask webEmgTask2 = WebEmgTask.this;
                        String str3 = webEmgTask2.g;
                        String str4 = webEmgTask2.h;
                        webEmgTask2.g = null;
                        webEmgTask2.h = null;
                        if (webEmgTask2.f19162c == null) {
                            EmgTaskListener emgTaskListener2 = webEmgTask2.d;
                            if (emgTaskListener2 != null) {
                                emgTaskListener2.a();
                                return;
                            }
                            return;
                        }
                        Context context2 = webEmgTask2.b;
                        webEmgTask2.f = false;
                        LoadTask loadTask = webEmgTask2.e;
                        if (loadTask != null) {
                            loadTask.f12839c = true;
                        }
                        webEmgTask2.e = null;
                        if (URLUtil.isNetworkUrl(str3) && !TextUtils.isEmpty(str4)) {
                            LoadTask loadTask2 = new LoadTask(webEmgTask2, str3, str4);
                            webEmgTask2.e = loadTask2;
                            loadTask2.b(context2);
                        } else {
                            EmgTaskListener emgTaskListener3 = webEmgTask2.d;
                            if (emgTaskListener3 != null) {
                                emgTaskListener3.c(null, -1, -1, null);
                            }
                        }
                    }
                });
            }
        });
    }

    public final int a() {
        WebNestView webNestView = this.f19162c;
        if (webNestView == null) {
            return 0;
        }
        return webNestView.getProgress();
    }

    public final void b() {
        this.f = false;
        WebNestView webNestView = this.f19162c;
        if (webNestView == null) {
            EmgTaskListener emgTaskListener = this.d;
            if (emgTaskListener != null) {
                emgTaskListener.a();
                return;
            }
            return;
        }
        this.f = false;
        LoadTask loadTask = this.e;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.e = null;
        MainUtil.I(webNestView, "(function(){android.onViewHtml(window.location.href,document.body.innerHTML);})();", false);
    }

    public final void c(int i) {
        boolean z = true;
        switch (i) {
            case -15:
            case -14:
            case -13:
            case -12:
            case -11:
            case -10:
            case -9:
            case -8:
            case -7:
            case -6:
            case -5:
            case -4:
            case -3:
            case AdSize.AUTO_HEIGHT /* -2 */:
            case -1:
                break;
            default:
                z = false;
                break;
        }
        this.f = z;
    }

    public final void d() {
        this.f = false;
        LoadTask loadTask = this.e;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.e = null;
        this.f19161a = false;
        WebNestView webNestView = this.f19162c;
        if (webNestView != null) {
            webNestView.setHtmlListener(null);
            this.f19162c = null;
        }
        this.d = null;
        this.f = false;
    }
}
