package com.mycompany.app.web;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.AdSize;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.web.WebNestView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes3.dex */
public class WebHmgTask {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19278a = true;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public WebNestView f19279c;
    public HmgTaskListener d;
    public LoadTask e;
    public boolean f;
    public String g;
    public String h;

    /* loaded from: classes3.dex */
    public interface HmgTaskListener {
        void a();

        void b();

        void c(List list, List list2, int i);
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public String g;
        public List h;
        public List i;
        public int j;

        public LoadTask(WebHmgTask webHmgTask, String str, String str2) {
            WeakReference weakReference = new WeakReference(webHmgTask);
            this.e = weakReference;
            WebHmgTask webHmgTask2 = (WebHmgTask) weakReference.get();
            if (webHmgTask2 == null) {
                return;
            }
            Context context = webHmgTask2.b;
            this.f = str;
            this.g = str2;
            this.h = DataUrl.b(context).f12901a;
            this.i = DataUrl.b(context).b;
            this.j = -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x0046, code lost:
        
            if (r2 == r3.size()) goto L27;
         */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0061 A[Catch: Exception | LinkageError | OutOfMemoryError -> 0x013c, TryCatch #2 {Exception | LinkageError | OutOfMemoryError -> 0x013c, blocks: (B:10:0x0022, B:15:0x002e, B:19:0x0034, B:23:0x003e, B:26:0x004b, B:32:0x0061, B:35:0x007f, B:39:0x0087, B:41:0x0097, B:43:0x009d, B:48:0x0067, B:51:0x006e, B:53:0x0076, B:56:0x007b, B:57:0x00ca, B:61:0x00d0, B:66:0x00e4, B:66:0x00e4, B:75:0x00eb, B:75:0x00eb, B:78:0x00f2, B:78:0x00f2, B:70:0x00f8, B:70:0x00f8, B:70:0x00f8, B:74:0x00ff, B:74:0x00ff, B:74:0x00ff, B:81:0x0104, B:81:0x0104, B:81:0x0104, B:85:0x0109, B:85:0x0109, B:85:0x0109, B:89:0x010e, B:89:0x010e, B:89:0x010e, B:93:0x011e, B:93:0x011e, B:103:0x0125, B:103:0x0125, B:106:0x012c, B:106:0x012c, B:96:0x0130, B:96:0x0130, B:96:0x0130, B:100:0x0137, B:100:0x0137, B:100:0x0137, B:110:0x0052, B:112:0x0058), top: B:9:0x0022 }] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0087 A[Catch: Exception | LinkageError | OutOfMemoryError -> 0x013c, TryCatch #2 {Exception | LinkageError | OutOfMemoryError -> 0x013c, blocks: (B:10:0x0022, B:15:0x002e, B:19:0x0034, B:23:0x003e, B:26:0x004b, B:32:0x0061, B:35:0x007f, B:39:0x0087, B:41:0x0097, B:43:0x009d, B:48:0x0067, B:51:0x006e, B:53:0x0076, B:56:0x007b, B:57:0x00ca, B:61:0x00d0, B:66:0x00e4, B:66:0x00e4, B:75:0x00eb, B:75:0x00eb, B:78:0x00f2, B:78:0x00f2, B:70:0x00f8, B:70:0x00f8, B:70:0x00f8, B:74:0x00ff, B:74:0x00ff, B:74:0x00ff, B:81:0x0104, B:81:0x0104, B:81:0x0104, B:85:0x0109, B:85:0x0109, B:85:0x0109, B:89:0x010e, B:89:0x010e, B:89:0x010e, B:93:0x011e, B:93:0x011e, B:103:0x0125, B:103:0x0125, B:106:0x012c, B:106:0x012c, B:96:0x0130, B:96:0x0130, B:96:0x0130, B:100:0x0137, B:100:0x0137, B:100:0x0137, B:110:0x0052, B:112:0x0058), top: B:9:0x0022 }] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00ce  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x00d0 A[Catch: Exception | LinkageError | OutOfMemoryError -> 0x013c, TRY_LEAVE, TryCatch #2 {Exception | LinkageError | OutOfMemoryError -> 0x013c, blocks: (B:10:0x0022, B:15:0x002e, B:19:0x0034, B:23:0x003e, B:26:0x004b, B:32:0x0061, B:35:0x007f, B:39:0x0087, B:41:0x0097, B:43:0x009d, B:48:0x0067, B:51:0x006e, B:53:0x0076, B:56:0x007b, B:57:0x00ca, B:61:0x00d0, B:66:0x00e4, B:66:0x00e4, B:75:0x00eb, B:75:0x00eb, B:78:0x00f2, B:78:0x00f2, B:70:0x00f8, B:70:0x00f8, B:70:0x00f8, B:74:0x00ff, B:74:0x00ff, B:74:0x00ff, B:81:0x0104, B:81:0x0104, B:81:0x0104, B:85:0x0109, B:85:0x0109, B:85:0x0109, B:89:0x010e, B:89:0x010e, B:89:0x010e, B:93:0x011e, B:93:0x011e, B:103:0x0125, B:103:0x0125, B:106:0x012c, B:106:0x012c, B:96:0x0130, B:96:0x0130, B:96:0x0130, B:100:0x0137, B:100:0x0137, B:100:0x0137, B:110:0x0052, B:112:0x0058), top: B:9:0x0022 }] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x00fe  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x00ff A[Catch: Exception | LinkageError | OutOfMemoryError -> 0x013c, Exception | LinkageError | OutOfMemoryError -> 0x013c, Exception | LinkageError | OutOfMemoryError -> 0x013c, TryCatch #2 {Exception | LinkageError | OutOfMemoryError -> 0x013c, blocks: (B:10:0x0022, B:15:0x002e, B:19:0x0034, B:23:0x003e, B:26:0x004b, B:32:0x0061, B:35:0x007f, B:39:0x0087, B:41:0x0097, B:43:0x009d, B:48:0x0067, B:51:0x006e, B:53:0x0076, B:56:0x007b, B:57:0x00ca, B:61:0x00d0, B:66:0x00e4, B:66:0x00e4, B:75:0x00eb, B:75:0x00eb, B:78:0x00f2, B:78:0x00f2, B:70:0x00f8, B:70:0x00f8, B:70:0x00f8, B:74:0x00ff, B:74:0x00ff, B:74:0x00ff, B:81:0x0104, B:81:0x0104, B:81:0x0104, B:85:0x0109, B:85:0x0109, B:85:0x0109, B:89:0x010e, B:89:0x010e, B:89:0x010e, B:93:0x011e, B:93:0x011e, B:103:0x0125, B:103:0x0125, B:106:0x012c, B:106:0x012c, B:96:0x0130, B:96:0x0130, B:96:0x0130, B:100:0x0137, B:100:0x0137, B:100:0x0137, B:110:0x0052, B:112:0x0058), top: B:9:0x0022 }] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 317
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebHmgTask.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WebHmgTask webHmgTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webHmgTask = (WebHmgTask) weakReference.get()) == null) {
                return;
            }
            webHmgTask.e = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            WebHmgTask webHmgTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webHmgTask = (WebHmgTask) weakReference.get()) == null) {
                return;
            }
            webHmgTask.e = null;
            HmgTaskListener hmgTaskListener = webHmgTask.d;
            if (hmgTaskListener != null) {
                hmgTaskListener.c(this.h, this.i, this.j);
            }
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void f() {
            WebHmgTask webHmgTask;
            HmgTaskListener hmgTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webHmgTask = (WebHmgTask) weakReference.get()) != null && (hmgTaskListener = webHmgTask.d) != null) {
                hmgTaskListener.b();
            }
        }
    }

    public WebHmgTask(Context context, WebNestView webNestView, HmgTaskListener hmgTaskListener) {
        this.b = context;
        this.f19279c = webNestView;
        this.d = hmgTaskListener;
        if (webNestView == null) {
            return;
        }
        webNestView.setHtmlListener(new WebNestView.WebHtmlListener() { // from class: com.mycompany.app.web.WebHmgTask.1
            @Override // com.mycompany.app.web.WebNestView.WebHtmlListener
            public final void a(String str, String str2) {
                WebHmgTask webHmgTask = WebHmgTask.this;
                webHmgTask.g = str;
                webHmgTask.h = str2;
                WebNestView webNestView2 = webHmgTask.f19279c;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebHmgTask.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebHmgTask webHmgTask2 = WebHmgTask.this;
                        String str3 = webHmgTask2.g;
                        String str4 = webHmgTask2.h;
                        webHmgTask2.g = null;
                        webHmgTask2.h = null;
                        if (webHmgTask2.f19279c == null) {
                            HmgTaskListener hmgTaskListener2 = webHmgTask2.d;
                            if (hmgTaskListener2 != null) {
                                hmgTaskListener2.a();
                                return;
                            }
                            return;
                        }
                        Context context2 = webHmgTask2.b;
                        webHmgTask2.b();
                        if (URLUtil.isNetworkUrl(str3) && !TextUtils.isEmpty(str4)) {
                            LoadTask loadTask = new LoadTask(webHmgTask2, str3, str4);
                            webHmgTask2.e = loadTask;
                            loadTask.b(context2);
                        } else {
                            HmgTaskListener hmgTaskListener3 = webHmgTask2.d;
                            if (hmgTaskListener3 != null) {
                                hmgTaskListener3.c(null, null, -1);
                            }
                        }
                    }
                });
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int a(Document document) {
        Element selectFirst;
        int i = 0;
        try {
            selectFirst = document.selectFirst("select[id='mobile-single-page-select']");
        } catch (Exception unused) {
        }
        if (selectFirst == null) {
            return c(document);
        }
        Elements select = selectFirst.select("option");
        if (select != null && select.size() != 0) {
            int size = select.size();
            int i2 = 0;
            while (i2 < size) {
                T t = select.get(i2);
                i2++;
                Element element = (Element) t;
                if (element != null) {
                    Iterator<Attribute> it = element.attributes().iterator();
                    while (it.hasNext()) {
                        Attribute next = it.next();
                        if (next != null) {
                            String value = next.getValue();
                            if (!TextUtils.isEmpty(value)) {
                                i = Math.max(MainUtil.G6(value), i);
                            }
                        }
                    }
                }
            }
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int c(Document document) {
        int i = 0;
        try {
            Elements select = document.select("option");
            if (select != null && select.size() != 0) {
                int size = select.size();
                int i2 = 0;
                while (i2 < size) {
                    T t = select.get(i2);
                    i2++;
                    Element element = (Element) t;
                    if (element != null) {
                        Iterator<Attribute> it = element.attributes().iterator();
                        while (it.hasNext()) {
                            Attribute next = it.next();
                            if (next != null) {
                                String value = next.getValue();
                                if (!TextUtils.isEmpty(value) && !MainUtil.r(45, value)) {
                                    i = Math.max(MainUtil.G6(value), i);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return i;
    }

    public final void b() {
        this.f = false;
        LoadTask loadTask = this.e;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.e = null;
    }

    public final int d() {
        WebNestView webNestView = this.f19279c;
        if (webNestView == null) {
            return 0;
        }
        return webNestView.getProgress();
    }

    public final void e() {
        this.f = false;
        if (this.f19279c == null) {
            HmgTaskListener hmgTaskListener = this.d;
            if (hmgTaskListener != null) {
                hmgTaskListener.a();
                return;
            }
            return;
        }
        b();
        MainUtil.I(this.f19279c, "(function(){android.onViewHtml(window.location.href,document.body.innerHTML);})();", false);
    }

    public final void f(int i) {
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

    public final void g() {
        b();
        this.f19278a = false;
        WebNestView webNestView = this.f19279c;
        if (webNestView != null) {
            webNestView.setHtmlListener(null);
            this.f19279c = null;
        }
        this.d = null;
        this.f = false;
    }
}
