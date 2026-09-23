package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefZone;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import net.dankito.readability4j.Article;
import net.dankito.readability4j.Readability4J;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Attribute;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.CDataNode;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;
import org.jsoup.select.NodeTraversor;
import org.jsoup.select.NodeVisitor;
import org.jsoup.select.d;

/* loaded from: classes3.dex */
public class WebReadTask {
    public boolean A;
    public String B;
    public String C;
    public String D;

    /* renamed from: a, reason: collision with root package name */
    public MainActivity f19383a;
    public Context b;

    /* renamed from: c, reason: collision with root package name */
    public WebReadListener f19384c;
    public final boolean d;
    public final boolean e;
    public boolean f;
    public String g;
    public String h;
    public String i;
    public String j;
    public ArrayList k;
    public String l;
    public int m;
    public LoadTask n;
    public ArrayList o;
    public boolean p;
    public boolean q;
    public ReadWebListener r;
    public ViewGroup s;
    public WebNestView t;
    public boolean u;
    public boolean v;
    public int w;
    public int x;
    public boolean y;
    public WebClean z;

    /* renamed from: com.mycompany.app.web.WebReadTask$10, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass10 implements Runnable {
        public AnonymousClass10() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebReadTask webReadTask = WebReadTask.this;
            String str = webReadTask.D;
            webReadTask.D = null;
            if (webReadTask.t == null) {
                return;
            }
            ReadWebListener readWebListener = webReadTask.r;
            if (readWebListener != null) {
                readWebListener.b();
            }
            webReadTask.j(str);
        }
    }

    /* renamed from: com.mycompany.app.web.WebReadTask$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.web.WebReadTask$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                WebReadTask webReadTask = WebReadTask.this;
                WebNestView webNestView = webReadTask.t;
                if (webNestView != null) {
                    webNestView.setWebViewClient(new LocalWebViewClient());
                    webNestView.setWebChromeClient(new LocalChromeClient());
                    ViewGroup viewGroup = webReadTask.s;
                    if (viewGroup == null) {
                        return;
                    }
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            WebReadTask webReadTask2 = WebReadTask.this;
                            WebNestView webNestView2 = webReadTask2.t;
                            if (webNestView2 != null) {
                                webReadTask2.y = true;
                                webNestView2.addJavascriptInterface(new WebAppInterface(), "android");
                                ViewGroup viewGroup2 = WebReadTask.this.s;
                                if (viewGroup2 == null) {
                                    return;
                                }
                                viewGroup2.post(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        WebReadTask webReadTask3 = WebReadTask.this;
                                        if (webReadTask3.t == null) {
                                            return;
                                        }
                                        ReadWebListener readWebListener = webReadTask3.r;
                                        if (readWebListener != null) {
                                            readWebListener.a(0);
                                        }
                                        WebReadTask webReadTask4 = WebReadTask.this;
                                        webReadTask4.t.z(webReadTask4.g, null);
                                    }
                                });
                            }
                        }
                    });
                }
            }
        }

        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebReadTask webReadTask = WebReadTask.this;
            WebNestView webNestView = webReadTask.t;
            if (webNestView != null) {
                WebSettings settings = webNestView.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setDomStorageEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                settings.setDatabaseEnabled(true);
                settings.setMixedContentMode(0);
                if (Build.VERSION.SDK_INT < 30) {
                    settings.setAllowFileAccessFromFileURLs(true);
                    settings.setAllowUniversalAccessFromFileURLs(true);
                }
                settings.setAllowFileAccess(true);
                MainApp.L(webReadTask.b, true);
                MainApp.O(webReadTask.b, webNestView, true);
                webNestView.setOverScrollMode(2);
                ViewGroup viewGroup = webReadTask.s;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.post(new AnonymousClass1());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public String h;
        public ArrayList i;

        public LoadTask(WebReadTask webReadTask, String str) {
            WeakReference weakReference = new WeakReference(webReadTask);
            this.e = weakReference;
            WebReadTask webReadTask2 = (WebReadTask) weakReference.get();
            if (webReadTask2 == null) {
                return;
            }
            this.f = webReadTask2.g;
            this.g = str;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            WebReadTask webReadTask;
            Document document;
            Article article;
            String x4;
            String str = this.f;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webReadTask = (WebReadTask) weakReference.get()) != null) {
                boolean z = webReadTask.e;
                if (!this.f12839c) {
                    String str2 = null;
                    try {
                        document = Jsoup.parse(this.g, str);
                    } catch (Exception | LinkageError | OutOfMemoryError unused) {
                        document = null;
                    }
                    try {
                        String s = WebReadTask.s(document);
                        if (MainUtil.n6(s)) {
                            webReadTask.f = false;
                            WebReadListener webReadListener = webReadTask.f19384c;
                            if (webReadListener != null) {
                                webReadListener.c();
                            }
                            if (s.startsWith("https://www.youtube.com/watch?v=sb_read_")) {
                                x4 = s.substring(40);
                                WebReadTask.g(webReadTask, document, x4);
                            } else {
                                x4 = MainUtil.x4(s);
                                WebReadTask.f(webReadTask, document, x4);
                            }
                            String str3 = x4;
                            ArrayList e = WebReadTask.e(webReadTask);
                            this.i = e;
                            this.h = WebReadTask.h(e, webReadTask.e, true, false, str3, webReadTask.m);
                            if (z) {
                                this.i = WebReadTask.i(this.i);
                                return;
                            }
                            return;
                        }
                        if (TextUtils.isEmpty(webReadTask.j)) {
                            String n = WebReadTask.n(document, false);
                            if (!TextUtils.isEmpty(n)) {
                                webReadTask.j = n;
                                WebReadListener webReadListener2 = webReadTask.f19384c;
                                if (webReadListener2 != null) {
                                    webReadListener2.d(n);
                                }
                            }
                        }
                        try {
                            article = new Readability4J(str, document).a();
                            try {
                                if (TextUtils.isEmpty(webReadTask.i)) {
                                    webReadTask.i = article.f21952a;
                                }
                            } catch (Exception unused2) {
                            }
                        } catch (Exception unused3) {
                            article = null;
                        }
                        if (z) {
                            ArrayList c2 = WebReadTask.c(webReadTask, article);
                            this.i = c2;
                            this.h = WebReadTask.h(c2, true, false, webReadTask.f, null, 0);
                            this.i = WebReadTask.i(this.i);
                            return;
                        }
                        try {
                            Elements select = document.select("meta[name=theme-color]");
                            if (select != null && select.size() != 0) {
                                String nodes = select.toString();
                                if (!TextUtils.isEmpty(nodes) && nodes.startsWith("<meta")) {
                                    if (nodes.endsWith(">")) {
                                        str2 = nodes;
                                    }
                                }
                            }
                        } catch (Exception unused4) {
                        }
                        this.h = WebReadTask.b(webReadTask, article, str2);
                    } catch (Exception unused5) {
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WebReadTask webReadTask;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webReadTask = (WebReadTask) weakReference.get()) != null) {
                webReadTask.n = null;
                WebReadListener webReadListener = webReadTask.f19384c;
                if (webReadListener != null) {
                    webReadListener.a();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final WebReadTask webReadTask;
            ArrayList arrayList;
            int i;
            WeakReference weakReference = this.e;
            if (weakReference != null && (webReadTask = (WebReadTask) weakReference.get()) != null) {
                webReadTask.n = null;
                if (webReadTask.d && (((arrayList = this.i) == null || arrayList.size() < 3) && webReadTask.t != null && (i = webReadTask.x) < 2)) {
                    webReadTask.x = i + 1;
                    ReadWebListener readWebListener = webReadTask.r;
                    if (readWebListener != null) {
                        readWebListener.b();
                    }
                    webReadTask.t.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.9
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebReadTask.this.y();
                        }
                    }, 200L);
                    return;
                }
                webReadTask.A();
                WebReadListener webReadListener = webReadTask.f19384c;
                if (webReadListener != null) {
                    webReadListener.b(this.f, webReadTask.i, this.h, this.i);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            ReadWebListener readWebListener;
            WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.t != null && (readWebListener = webReadTask.r) != null) {
                readWebListener.a(i);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ReadItem {

        /* renamed from: a, reason: collision with root package name */
        public int f19403a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f19404c;
        public String d;
        public StringBuilder e;
        public int f;
        public int g;
        public String h;
        public int i;
        public boolean j;
    }

    /* loaded from: classes3.dex */
    public interface ReadWebListener {
        void a(int i);

        void b();
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onDocHtml(String str) {
            WebReadTask webReadTask = WebReadTask.this;
            webReadTask.D = str;
            ViewGroup viewGroup = webReadTask.s;
            if (viewGroup == null) {
                return;
            }
            viewGroup.post(new AnonymousClass10());
        }
    }

    /* loaded from: classes3.dex */
    public interface WebReadListener {
        void a();

        void b(String str, String str2, String str3, ArrayList arrayList);

        void c();

        void d(String str);
    }

    public WebReadTask(MainActivity mainActivity, Context context, boolean z, boolean z2, boolean z3, WebReadListener webReadListener) {
        this.f19383a = mainActivity;
        this.b = context;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.f19384c = webReadListener;
    }

    public static void a(WebReadTask webReadTask, String str) {
        if (webReadTask.t != null) {
            if (MainUtil.D5(str)) {
                if (webReadTask.y) {
                    webReadTask.y = false;
                    WebNestView webNestView = webReadTask.t;
                    if (webNestView != null) {
                        webNestView.post(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebReadTask webReadTask2 = WebReadTask.this;
                                WebNestView webNestView2 = webReadTask2.t;
                                if (webNestView2 == null) {
                                    return;
                                }
                                webReadTask2.y = false;
                                webNestView2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!webReadTask.y) {
                webReadTask.y = true;
                WebNestView webNestView2 = webReadTask.t;
                if (webNestView2 == null) {
                    return;
                }
                webNestView2.post(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebReadTask webReadTask2 = WebReadTask.this;
                        WebNestView webNestView3 = webReadTask2.t;
                        if (webNestView3 == null) {
                            return;
                        }
                        webReadTask2.y = true;
                        webNestView3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x019e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(com.mycompany.app.web.WebReadTask r16, net.dankito.readability4j.Article r17, java.lang.String r18) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebReadTask.b(com.mycompany.app.web.WebReadTask, net.dankito.readability4j.Article, java.lang.String):java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r12v20, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v21, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    public static ArrayList c(WebReadTask webReadTask, Article article) {
        ReadItem readItem;
        ReadItem readItem2;
        int length;
        webReadTask.o = new ArrayList();
        if (article != null) {
            try {
                Element element = article.b;
                if (element != null) {
                    webReadTask.B(element);
                    webReadTask.p = !TextUtils.isEmpty(webReadTask.i);
                    webReadTask.q = !TextUtils.isEmpty(webReadTask.j);
                    NodeTraversor.traverse(new NodeVisitor() { // from class: com.mycompany.app.web.WebReadTask.1
                        /* JADX WARN: Type inference failed for: r12v6, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r13v9, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
                        @Override // org.jsoup.select.NodeVisitor
                        /* renamed from: head */
                        public final void mo2head(Node node, int i) {
                            boolean z;
                            char charAt;
                            boolean z2;
                            boolean z3 = node instanceof TextNode;
                            WebReadTask webReadTask2 = WebReadTask.this;
                            if (z3) {
                                TextNode textNode = (TextNode) node;
                                String wholeText = textNode.getWholeText();
                                if (!TextUtils.isEmpty(wholeText)) {
                                    String trim = wholeText.trim();
                                    if (!TextUtils.isEmpty(trim)) {
                                        if (webReadTask2.p) {
                                            webReadTask2.p = false;
                                            String str = webReadTask2.i;
                                            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(trim) || str.length() < trim.length()) {
                                                z2 = false;
                                            } else {
                                                z2 = str.startsWith(trim);
                                            }
                                            if (z2) {
                                                return;
                                            }
                                        }
                                        StringBuilder d = WebReadTask.d(webReadTask2, true);
                                        if (d != null) {
                                            Node parentNode = textNode.parentNode();
                                            if (parentNode instanceof Element) {
                                                Element element2 = (Element) parentNode;
                                                int i2 = 0;
                                                while (!element2.tag().preserveWhitespace()) {
                                                    element2 = element2.parent();
                                                    i2++;
                                                    if (i2 < 6 && element2 != null) {
                                                    }
                                                }
                                                d.append(trim);
                                                return;
                                            }
                                            if (!(textNode instanceof CDataNode)) {
                                                if (d.length() == 0 || ((charAt = d.charAt(d.length() - 1)) != ' ' && charAt != '\n')) {
                                                    z = false;
                                                } else {
                                                    z = true;
                                                }
                                                int length2 = trim.length();
                                                int i3 = 0;
                                                boolean z4 = false;
                                                boolean z5 = false;
                                                while (i3 < length2) {
                                                    int codePointAt = trim.codePointAt(i3);
                                                    if (codePointAt != 32 && codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13 && codePointAt != 160) {
                                                        if (codePointAt != 8203 && codePointAt != 173) {
                                                            d.appendCodePoint(codePointAt);
                                                            z4 = true;
                                                            z5 = false;
                                                        }
                                                    } else if ((!z || z4) && !z5) {
                                                        d.append(' ');
                                                        z5 = true;
                                                    }
                                                    i3 += Character.charCount(codePointAt);
                                                }
                                                return;
                                            }
                                            d.append(trim);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (node instanceof Element) {
                                Element element3 = (Element) node;
                                String tagName = element3.tagName();
                                if (!"img".equals(tagName) && (!webReadTask2.d || !"amp-img".equals(tagName))) {
                                    StringBuilder d2 = WebReadTask.d(webReadTask2, false);
                                    if (d2 != null && d2.length() > 0) {
                                        if (element3.isBlock() || "br".equals(tagName)) {
                                            if (d2.length() == 0 || d2.charAt(d2.length() - 1) != '\n') {
                                                ?? obj = new Object();
                                                obj.f19403a = 0;
                                                webReadTask2.o.add(obj);
                                                return;
                                            }
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (webReadTask2.o != null) {
                                    String q = WebReadTask.q(element3);
                                    if (!TextUtils.isEmpty(q)) {
                                        if (TextUtils.isEmpty(webReadTask2.j)) {
                                            webReadTask2.j = q;
                                            WebReadListener webReadListener = webReadTask2.f19384c;
                                            if (webReadListener != null) {
                                                webReadListener.d(q);
                                            }
                                            webReadTask2.q = false;
                                            return;
                                        }
                                        if (webReadTask2.q) {
                                            webReadTask2.q = false;
                                            return;
                                        }
                                        ?? obj2 = new Object();
                                        obj2.f19403a = 3;
                                        obj2.f19404c = q;
                                        webReadTask2.o.add(obj2);
                                    }
                                }
                            }
                        }

                        @Override // org.jsoup.select.NodeVisitor
                        /* renamed from: tail */
                        public final void mo3tail(Node node, int i) {
                            char charAt;
                            if (node instanceof Element) {
                                Element element2 = (Element) node;
                                StringBuilder d = WebReadTask.d(WebReadTask.this, true);
                                if (d != null && element2.isBlock() && (node.nextSibling() instanceof TextNode)) {
                                    if (d.length() == 0 || ((charAt = d.charAt(d.length() - 1)) != ' ' && charAt != '\n')) {
                                        d.append(' ');
                                    }
                                }
                            }
                        }

                        @Override // org.jsoup.select.NodeVisitor, org.jsoup.select.NodeFilter
                        public final /* synthetic */ void traverse(Node node) {
                            d.b(this, node);
                        }
                    }, element);
                }
            } catch (Exception unused) {
            }
        }
        if (!TextUtils.isEmpty(webReadTask.j)) {
            ?? obj = new Object();
            obj.f19403a = 3;
            obj.f19404c = webReadTask.j;
            webReadTask.o.add(0, obj);
        }
        if (!TextUtils.isEmpty(webReadTask.i)) {
            ?? obj2 = new Object();
            obj2.f19403a = 1;
            obj2.b = webReadTask.i;
            webReadTask.o.add(0, obj2);
        }
        ArrayList arrayList = webReadTask.o;
        if (arrayList == null || arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = webReadTask.o;
        int size = arrayList3.size();
        int i = 0;
        while (i < size) {
            Object obj3 = arrayList3.get(i);
            i++;
            ReadItem readItem3 = (ReadItem) obj3;
            if (readItem3 != null && readItem3.f19403a != 0) {
                StringBuilder sb = readItem3.e;
                if (sb == null) {
                    arrayList2.add(readItem3);
                } else {
                    String sb2 = sb.toString();
                    readItem3.e = null;
                    if (!TextUtils.isEmpty(sb2)) {
                        String trim = sb2.trim();
                        if (TextUtils.isEmpty(trim) || (trim.startsWith("Your browser does") && (trim.startsWith("n't support", 17) || trim.startsWith(" not support", 17)))) {
                            trim = null;
                        }
                        if (!TextUtils.isEmpty(trim)) {
                            readItem3.b = trim;
                            arrayList2.add(readItem3);
                        }
                    }
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList2.size();
        boolean z = false;
        for (int i2 = 0; i2 < size2; i2++) {
            ReadItem readItem4 = (ReadItem) arrayList2.get(i2);
            if (readItem4 != null && readItem4.f19403a == 2) {
                int i3 = i2 - 1;
                if (i3 >= 0 && i3 < arrayList2.size()) {
                    readItem2 = (ReadItem) arrayList2.get(i3);
                } else {
                    readItem2 = null;
                }
                if (readItem2 == null || readItem2.f19403a != 2 || !MainUtil.q5(readItem4.b, readItem2.b)) {
                    String str = readItem4.b;
                    if (str != null && (length = str.length()) != 0 && length <= 40) {
                        int i4 = length - 1;
                        if (str.charAt(i4) != '.' && str.charAt(i4) != '?' && str.charAt(i4) != 12290) {
                            readItem4.j = true;
                            z = true;
                        }
                    }
                }
            }
            arrayList4.add(readItem4);
        }
        if (arrayList4.isEmpty()) {
            return null;
        }
        if (z) {
            int size3 = arrayList4.size();
            int i5 = 0;
            while (true) {
                if (i5 >= size3) {
                    break;
                }
                ReadItem readItem5 = (ReadItem) arrayList4.get(i5);
                if (readItem5 != null && readItem5.f19403a == 2) {
                    if ("\"".equals(readItem5.b)) {
                        arrayList4.remove(i5);
                    }
                } else {
                    i5++;
                }
            }
            if (arrayList4.isEmpty()) {
                return null;
            }
            int size4 = arrayList4.size() - 1;
            while (true) {
                if (size4 <= -1) {
                    break;
                }
                ReadItem readItem6 = (ReadItem) arrayList4.get(size4);
                if (readItem6 == null || readItem6.f19403a != 2) {
                    size4--;
                } else if ("\"".equals(readItem6.b)) {
                    arrayList4.remove(size4);
                }
            }
            if (arrayList4.isEmpty()) {
                return null;
            }
            int size5 = arrayList4.size();
            for (int i6 = 0; i6 < size5; i6++) {
                ReadItem readItem7 = (ReadItem) arrayList4.get(i6);
                if (readItem7 != null && readItem7.j) {
                    int i7 = i6 + 1;
                    if (i7 >= 0 && i7 < arrayList4.size()) {
                        readItem = (ReadItem) arrayList4.get(i7);
                    } else {
                        readItem = null;
                    }
                    if (readItem == null || !readItem.j) {
                        readItem7.j = false;
                    }
                }
            }
        }
        return arrayList4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        if (r4 != 2) goto L21;
     */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.StringBuilder d(com.mycompany.app.web.WebReadTask r3, boolean r4) {
        /*
            java.util.ArrayList r0 = r3.o
            r1 = 0
            if (r0 != 0) goto L6
            goto L25
        L6:
            int r0 = r0.size()
            if (r0 <= 0) goto L17
            java.util.ArrayList r2 = r3.o
            int r0 = r0 + (-1)
            java.lang.Object r0 = r2.get(r0)
            com.mycompany.app.web.WebReadTask$ReadItem r0 = (com.mycompany.app.web.WebReadTask.ReadItem) r0
            goto L18
        L17:
            r0 = r1
        L18:
            r2 = 2
            if (r4 != 0) goto L26
            if (r0 == 0) goto L25
            int r3 = r0.f19403a
            if (r3 == r2) goto L22
            goto L25
        L22:
            java.lang.StringBuilder r3 = r0.e
            return r3
        L25:
            return r1
        L26:
            if (r0 == 0) goto L2c
            int r4 = r0.f19403a
            if (r4 == r2) goto L38
        L2c:
            com.mycompany.app.web.WebReadTask$ReadItem r0 = new com.mycompany.app.web.WebReadTask$ReadItem
            r0.<init>()
            r0.f19403a = r2
            java.util.ArrayList r3 = r3.o
            r3.add(r0)
        L38:
            java.lang.StringBuilder r3 = r0.e
            if (r3 != 0) goto L43
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r0.e = r3
        L43:
            java.lang.StringBuilder r3 = r0.e
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebReadTask.d(com.mycompany.app.web.WebReadTask, boolean):java.lang.StringBuilder");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v3, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v2, types: [com.mycompany.app.web.WebReadTask$ReadItem] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4, types: [com.mycompany.app.web.WebReadTask$ReadItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5 */
    public static ArrayList e(WebReadTask webReadTask) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(webReadTask.i)) {
            ?? obj = new Object();
            obj.f19403a = 1;
            obj.b = webReadTask.i;
            arrayList.add(obj);
        }
        if (!TextUtils.isEmpty(webReadTask.l)) {
            ?? obj2 = new Object();
            obj2.f19403a = 4;
            obj2.d = webReadTask.l;
            arrayList.add(obj2);
        } else if (!TextUtils.isEmpty(webReadTask.j)) {
            ?? obj3 = new Object();
            obj3.f19403a = 3;
            obj3.f19404c = webReadTask.j;
            arrayList.add(obj3);
        }
        ArrayList arrayList2 = webReadTask.k;
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            ArrayList arrayList3 = webReadTask.k;
            int size = arrayList3.size();
            int i = 0;
            while (i < size) {
                Object obj4 = arrayList3.get(i);
                i++;
                String str = (String) obj4;
                if (!TextUtils.isEmpty(str)) {
                    String[] split2 = str.split("\n");
                    if (split2 != null && split2.length >= 2) {
                        int length = split2.length;
                        ReadItem readItem = 0;
                        int i2 = 0;
                        while (i2 < length) {
                            String str2 = split2[i2];
                            if (!TextUtils.isEmpty(str2)) {
                                readItem = new Object();
                                readItem.f19403a = 2;
                                readItem.b = str2;
                                readItem.j = true;
                                arrayList.add(readItem);
                            }
                            i2++;
                            readItem = readItem;
                        }
                        if (readItem != 0) {
                            readItem.j = false;
                        }
                    } else {
                        ?? obj5 = new Object();
                        obj5.f19403a = 2;
                        obj5.b = str;
                        arrayList.add(obj5);
                    }
                }
            }
        }
        return arrayList;
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:157)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:480)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:381)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:90)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:61)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:325)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:51)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    public static void f(com.mycompany.app.web.WebReadTask r8, org.jsoup.nodes.Document r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebReadTask.f(com.mycompany.app.web.WebReadTask, org.jsoup.nodes.Document, java.lang.String):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void g(WebReadTask webReadTask, Document document, String str) {
        Elements select;
        String str2;
        int G6;
        if (document != null && (select = document.select("p")) != null && select.size() != 0) {
            int size = select.size();
            int i = 0;
            Element element = null;
            boolean z = true;
            int i2 = 0;
            ArrayList arrayList = null;
            while (i2 < size) {
                T t = select.get(i2);
                i2++;
                Element element2 = (Element) t;
                if (element2 != null) {
                    String html = element2.html();
                    if (!TextUtils.isEmpty(html)) {
                        String replace = html.replace("\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        if (z) {
                            webReadTask.i = replace;
                            z = false;
                        } else {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(replace);
                        }
                    }
                }
            }
            webReadTask.k = arrayList;
            if (TextUtils.isEmpty(webReadTask.i)) {
                webReadTask.i = "YouTube";
            }
            Elements select2 = document.select("iframe");
            if (select2 != null && select2.size() != 0) {
                int size2 = select2.size();
                while (true) {
                    if (i < size2) {
                        T t2 = select2.get(i);
                        i++;
                        Element element3 = (Element) t2;
                        if (element3 != null) {
                            str2 = element3.attr("src");
                            if (URLUtil.isNetworkUrl(str2)) {
                                element = element3;
                                break;
                            }
                        }
                    } else {
                        str2 = null;
                        break;
                    }
                }
                if (element != null) {
                    if (TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                        str2 = a.C("https://www.youtube.com/embed/", str);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        webReadTask.l = str2;
                        int G62 = MainUtil.G6(element.attr("width"));
                        if (G62 > 0 && (G6 = MainUtil.G6(element.attr("height"))) > 0) {
                            webReadTask.m = Math.round((G6 / G62) * 100.0f);
                        }
                    }
                }
            }
        }
    }

    public static String h(ArrayList arrayList, boolean z, boolean z2, boolean z3, String str, int i) {
        StringBuilder o;
        String str2;
        String str3;
        String str4;
        int i2 = i;
        if (arrayList != null && !arrayList.isEmpty()) {
            boolean z4 = false;
            if (z2) {
                if (MainApp.K1) {
                    str4 = "white;}";
                } else {
                    str4 = "black;}";
                }
                if (i2 <= 0) {
                    i2 = 56;
                } else if (i2 > 100) {
                    i2 = 100;
                }
                o = new StringBuilder();
                o.append("<!DOCTYPE html><html dir='auto'><head><meta charset=\"utf-8\"/><meta property='og:url' content='https://www.youtube.com/watch?v=sb_read_");
                o.append(str);
                o.append("'>");
                if (z) {
                    o.append("<meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>");
                    if (MainApp.K1) {
                        o.append("::selection{background:#1976d2;color:white;}");
                    } else {
                        o.append("::selection{background:#b3e5fc;color:black;}");
                    }
                    o.append("font{background:transparent !important;box-shadow:none !important;}@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-family:soul_user_font !important;}");
                    if (MainUtil.C6()) {
                        o.append("body{margin:0;padding:48px 0 80px 0;}");
                    } else {
                        o.append("body{margin:0;padding:20px 0 80px 0;}");
                    }
                    o.append("img{padding:0 16px 0 16px;margin:0 auto 20px auto;display:block;max-width:100%;height:auto;user-select:none;}iframe{margin:40px auto 40px auto;display:block;width:100vw;height:");
                    o.append(i2);
                    o.append("vw;user-select:none;}p{padding:0 16px 0 16px;margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:");
                    o.append(str4);
                    o.append("</style>");
                    if (PrefRead.p) {
                        o.append("<style id='sb_bold_style'>body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-weight:bold !important;}</style>");
                    }
                    o.append("</head><body>");
                } else {
                    o.append("<meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=5.0,user-scalable=yes'/>");
                    if (PrefZone.k || PrefZone.m) {
                        o.append("<style id='sb_font_style'>");
                        if (PrefZone.k) {
                            o.append("@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}");
                        }
                        o.append("body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){");
                        if (PrefZone.k) {
                            o.append("font-family:soul_user_font !important;");
                        }
                        if (PrefZone.m) {
                            o.append("font-weight:bold !important;");
                        }
                        o.append("}</style>");
                    }
                    o.append("<style>");
                    if (MainUtil.C6()) {
                        o.append("body{margin:0;padding:48px 0 40px 0;}");
                    } else {
                        o.append("body{margin:0;padding:20px 0 40px 0;}");
                    }
                    o.append("img{padding:0 16px 0 16px;margin:0 auto 20px auto;display:block;max-width:100%;height:auto;}iframe{margin:40px auto 40px auto;display:block;width:100vw;height:");
                    o.append(i2);
                    o.append("vw;}p{padding:0 16px 0 16px;margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;}</style></head><body>");
                }
            } else {
                o = o(false, z3);
            }
            int size = arrayList.size();
            int i3 = 0;
            int i4 = 0;
            boolean z5 = true;
            while (i4 < size) {
                Object obj = arrayList.get(i4);
                i4++;
                ReadItem readItem = (ReadItem) obj;
                if (readItem != null) {
                    int i5 = readItem.f19403a;
                    if (i5 != 1 && i5 != 3) {
                        z5 = z4;
                    }
                    if (i5 == 1) {
                        if (!TextUtils.isEmpty(readItem.b)) {
                            if (!MainApp.K1) {
                                str3 = "black;'>";
                            } else {
                                str3 = "white;'>";
                            }
                            readItem.f = i3;
                            o.append("<p id='");
                            o.append(i3);
                            if (z2) {
                                o.append("'style='padding:0 16px 0 16px;margin:0 auto 20px auto;line-height:1.4;word-wrap:break-word;font-size:24px;font-weight:bold;color:");
                            } else {
                                o.append("'style='margin:0 auto 20px auto;line-height:1.4;word-wrap:break-word;font-size:24px;font-weight:bold;color:");
                            }
                            o.append(str3);
                            o.append(readItem.b.replace("\n", "<br>"));
                            o.append("</p>");
                            i3++;
                        }
                    } else if (i5 == 2) {
                        if (!TextUtils.isEmpty(readItem.b)) {
                            readItem.f = i3;
                            o.append("<p id='");
                            o.append(i3);
                            if (readItem.j) {
                                if (!MainApp.K1) {
                                    str2 = "black;'>";
                                } else {
                                    str2 = "white;'>";
                                }
                                if (z2) {
                                    o.append("'style='padding:0 16px 0 16px;margin:0 auto 0 auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:");
                                } else {
                                    o.append("'style='margin:0 auto 0 auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:");
                                }
                                o.append(str2);
                            } else {
                                o.append("'>");
                            }
                            o.append(readItem.b.replace("\n", "<br>"));
                            o.append("</p>");
                            i3++;
                        }
                    } else if (i5 == 3) {
                        if (!TextUtils.isEmpty(readItem.f19404c)) {
                            readItem.f19404c = readItem.f19404c.replace("http://", "https://");
                            if (z5) {
                                if (z2) {
                                    o.append("<img style='padding:0 16px 0 16px;margin:0 auto 24px auto;display:block;max-width:100%;width:100%;height:auto;user-select:none;' src='");
                                } else {
                                    o.append("<img style='margin:0 auto 24px auto;display:block;max-width:100%;width:100%;height:auto;user-select:none;' src='");
                                }
                                z5 = false;
                            } else {
                                o.append("<img src='");
                            }
                            o.append(readItem.f19404c);
                            o.append("' onerror=\"this.style.display='none';\"></img>");
                        }
                    } else if (i5 == 4 && !TextUtils.isEmpty(readItem.d)) {
                        o.append("<iframe src='");
                        o.append(readItem.d);
                        o.append("' frameborder='0'></iframe>");
                    }
                    z4 = false;
                }
            }
            o.append("</body></html>");
            return o.toString();
        }
        return null;
    }

    public static ArrayList i(ArrayList arrayList) {
        int i;
        ArrayList arrayList2 = null;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                ReadItem readItem = (ReadItem) obj;
                if (readItem != null && ((i = readItem.f19403a) == 1 || i == 2)) {
                    if (!TextUtils.isEmpty(readItem.b)) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(readItem);
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String k(Document document) {
        if (document == null) {
            return null;
        }
        try {
            Elements select = document.select("amp-img");
            if (select != null && select.size() != 0) {
                int size = select.size();
                int i = 0;
                while (i < size) {
                    T t = select.get(i);
                    i++;
                    Element element = (Element) t;
                    if (element != null) {
                        String q = q(element);
                        if (!TextUtils.isEmpty(q)) {
                            return q;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String l(Document document) {
        if (document == null) {
            return null;
        }
        try {
            Elements select = document.select("figure");
            if (select != null && select.size() != 0) {
                int size = select.size();
                int i = 0;
                while (i < size) {
                    T t = select.get(i);
                    i++;
                    Element element = (Element) t;
                    if (element != null) {
                        String m = m(element);
                        if (!TextUtils.isEmpty(m)) {
                            return m;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String m(Element element) {
        Elements children;
        if (element == null || (children = element.children()) == null) {
            return null;
        }
        int size = children.size();
        int i = 0;
        while (i < size) {
            T t = children.get(i);
            i++;
            Element element2 = (Element) t;
            String q = q(element2);
            if (!TextUtils.isEmpty(q)) {
                return q;
            }
            String m = m(element2);
            if (!TextUtils.isEmpty(m)) {
                return m;
            }
        }
        return null;
    }

    public static String n(Document document, boolean z) {
        String l;
        String str = null;
        if (document == null) {
            return null;
        }
        if (z) {
            String s = s(document);
            if (MainUtil.n6(s)) {
                String w4 = MainUtil.w4(s);
                if (TextUtils.isEmpty(w4)) {
                    l = null;
                } else {
                    l = a.l("https://img.youtube.com/vi/", w4, "/0.jpg");
                }
                if (!TextUtils.isEmpty(l)) {
                    return l;
                }
            }
        }
        try {
            Elements select = document.select("meta[property=og:image]");
            if (select != null && select.size() != 0) {
                String attr = select.attr("content");
                if (x(attr)) {
                    str = attr;
                }
            }
        } catch (Exception unused) {
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        String l2 = l(document);
        if (!TextUtils.isEmpty(l2)) {
            return l2;
        }
        String t = t(document);
        if (!TextUtils.isEmpty(t)) {
            return t;
        }
        String r = r(document);
        if (!TextUtils.isEmpty(r)) {
            return r;
        }
        return k(document);
    }

    public static StringBuilder o(boolean z, boolean z2) {
        String str;
        if (MainApp.K1) {
            str = "white;}";
        } else {
            str = "black;}";
        }
        StringBuilder t = a.t("<!DOCTYPE html><html dir='auto'><head><meta charset=\"utf-8\"/><meta name='viewport' content='width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no'/><style>");
        if (MainApp.K1) {
            t.append("::selection{background:#1976d2;color:white;}");
        } else {
            t.append("::selection{background:#b3e5fc;color:black;}");
        }
        t.append("font{background:transparent !important;box-shadow:none !important;}");
        if (z) {
            t.append("body{margin:0;padding:16px 16px 40px 16px;}");
        } else {
            t.append("@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-family:soul_user_font !important;}");
            if (z2) {
                if (MainUtil.C6()) {
                    t.append("body{margin:0;padding:48px 16px 440px 16px;}");
                } else {
                    t.append("body{margin:0;padding:20px 16px 440px 16px;}");
                }
            } else if (MainUtil.C6()) {
                t.append("body{margin:0;padding:48px 16px 80px 16px;}");
            } else {
                t.append("body{margin:0;padding:20px 16px 80px 16px;}");
            }
            t.append("img{margin:0 auto 20px auto;display:block;max-width:100%;height:auto;user-select:none;}");
        }
        a.y(t, "p{margin:0 auto 32px auto;line-height:1.6;word-wrap:break-word;font-size:18px;color:", str, "</style>");
        if (PrefRead.p) {
            t.append("<style id='sb_bold_style'>body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-weight:bold !important;}</style>");
        }
        t.append("</head><body>");
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String p(Element element, boolean z) {
        Elements children;
        String q;
        if (element != null && (children = element.children()) != null) {
            int size = children.size();
            int i = 0;
            while (i < size) {
                T t = children.get(i);
                i++;
                Element element2 = (Element) t;
                if (z) {
                    q = u(element2);
                } else {
                    q = q(element2);
                }
                if (!TextUtils.isEmpty(q)) {
                    return a.l("<img src='", q.replace("http://", "https://"), "' onerror=\"this.style.display='none';\"></img>");
                }
                String p = p(element2, z);
                if (!TextUtils.isEmpty(p)) {
                    return p;
                }
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static String q(Element element) {
        Attributes attributes;
        if (element == null || (attributes = element.attributes()) == null) {
            return null;
        }
        if ("amp-img".equals(element.tagName())) {
            Iterator<Attribute> it = attributes.iterator();
            while (it.hasNext()) {
                Attribute next = it.next();
                if (next != null) {
                    String key = next.getKey();
                    if ("placeholder".equals(key)) {
                        return null;
                    }
                    if ("width".equals(key) || "height".equals(key)) {
                        if (MainUtil.G6(next.getValue()) < 40) {
                            return null;
                        }
                    }
                }
            }
        }
        Iterator<Attribute> it2 = attributes.iterator();
        while (it2.hasNext()) {
            Attribute next2 = it2.next();
            if (next2 != null) {
                String w3 = MainUtil.w3(next2.getValue());
                if (x(w3)) {
                    return w3;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String r(Document document) {
        if (document == null) {
            return null;
        }
        try {
            Elements select = document.select("img");
            if (select != null && select.size() != 0) {
                int size = select.size();
                int i = 0;
                while (i < size) {
                    T t = select.get(i);
                    i++;
                    Element element = (Element) t;
                    if (element != null) {
                        String q = q(element);
                        if (!TextUtils.isEmpty(q)) {
                            return q;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String s(Document document) {
        if (document == null) {
            return null;
        }
        try {
            Elements select = document.select("meta[property=og:url]");
            if (select != null && select.size() != 0) {
                String attr = select.attr("content");
                if (URLUtil.isNetworkUrl(attr)) {
                    return attr;
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String t(Document document) {
        if (document == null) {
            return null;
        }
        try {
            Elements select = document.select("picture");
            if (select != null && select.size() != 0) {
                int size = select.size();
                int i = 0;
                while (i < size) {
                    T t = select.get(i);
                    i++;
                    Element element = (Element) t;
                    if (element != null) {
                        String m = m(element);
                        if (!TextUtils.isEmpty(m)) {
                            return m;
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static String u(Element element) {
        Attributes attributes;
        if (element == null || (attributes = element.attributes()) == null) {
            return null;
        }
        Iterator<Attribute> it = attributes.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Attribute next = it.next();
            if (next != null && "poster".equals(next.getKey())) {
                String w3 = MainUtil.w3(next.getValue());
                if (x(w3)) {
                    return w3;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static JSONObject v(Document document) {
        Elements select;
        String str = null;
        if (document == null || (select = document.select("script")) == null || select.size() == 0) {
            return null;
        }
        int size = select.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            T t = select.get(i);
            i++;
            Element element = (Element) t;
            if (element != null) {
                str = element.html();
                if (!TextUtils.isEmpty(str) && str.startsWith("var ytInitialPlayerResponse = {\"responseContext")) {
                    str = str.substring(30);
                    break;
                }
            }
        }
        return MainUtil.B0(str);
    }

    public static boolean x(String str) {
        if (!URLUtil.isNetworkUrl(str) || str.endsWith("icon.png") || str.endsWith("logo.png") || str.endsWith("svg") || str.startsWith("https://news.google.com") || str.startsWith("https://imgmo.seoul.co.kr/img//mexpand")) {
            return false;
        }
        String b1 = MainUtil.b1(null, str);
        if (b1 != null && b1.length() < 10) {
            if (b1.contains("icon") || b1.contains("logo")) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final void A() {
        if (this.t == null) {
            return;
        }
        ReadWebListener readWebListener = this.r;
        if (readWebListener != null) {
            readWebListener.a(100);
        }
        if (this.u) {
            this.u = false;
            this.t.stopLoading();
        }
        MainUtil.P6(this.t);
        this.t = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void B(Element element) {
        Elements select;
        if (element != null) {
            Elements select2 = element.select("figure");
            int i = 0;
            if (select2 != null && select2.size() != 0) {
                int size = select2.size();
                int i2 = 0;
                while (i2 < size) {
                    T t = select2.get(i2);
                    i2++;
                    Element element2 = (Element) t;
                    if (element2 != null) {
                        element2.html(p(element2, false));
                    }
                }
            }
            Elements select3 = element.select("picture");
            if (select3 != null && select3.size() != 0) {
                int size2 = select3.size();
                int i3 = 0;
                while (i3 < size2) {
                    T t2 = select3.get(i3);
                    i3++;
                    Element element3 = (Element) t2;
                    if (element3 != null) {
                        element3.html(p(element3, false));
                    }
                }
            }
            if (this.e && (select = element.select("video")) != null && select.size() != 0) {
                int size3 = select.size();
                while (i < size3) {
                    T t3 = select.get(i);
                    i++;
                    Element element4 = (Element) t3;
                    if (element4 != null) {
                        element4.html(p(element4, true));
                    }
                }
            }
        }
    }

    public final void j(String str) {
        LoadTask loadTask = this.n;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.n = null;
        LoadTask loadTask2 = new LoadTask(this, str);
        this.n = loadTask2;
        loadTask2.b(this.b);
    }

    public final void w() {
        if (this.f19383a != null && this.s != null && this.t == null) {
            if (this.z == null) {
                this.z = MainApp.v(this.b, false);
            }
            this.v = false;
            this.w = 0;
            this.x = 0;
            WebNestView webNestView = new WebNestView(this.f19383a);
            this.t = webNestView;
            webNestView.setNoAutofill(true);
            MainApp.I(this.b, this.t);
            this.t.setVisibility(4);
            this.s.addView(this.t, 0, new ViewGroup.LayoutParams(-1, -1));
            this.s.post(new AnonymousClass2());
        }
    }

    public final void y() {
        if (this.t == null) {
            return;
        }
        ReadWebListener readWebListener = this.r;
        if (readWebListener != null) {
            readWebListener.b();
        }
        if (this.w < 10 && this.t.getContentHeight() < this.t.getHeight()) {
            this.w++;
            this.t.postDelayed(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.7
                @Override // java.lang.Runnable
                public final void run() {
                    WebReadTask.this.y();
                }
            }, 200L);
        } else if (!MainUtil.D5(this.g)) {
            MainUtil.I(this.t, "(function(){var htm=null;if(document.documentElement){htm=document.documentElement.innerHTML;}android.onDocHtml(htm);})();", false);
        } else {
            this.t.evaluateJavascript("document.documentElement.innerHTML", new ValueCallback<String>() { // from class: com.mycompany.app.web.WebReadTask.8
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(String str) {
                    WebReadTask webReadTask = WebReadTask.this;
                    webReadTask.C = str;
                    MainApp.J(webReadTask.b, new Runnable() { // from class: com.mycompany.app.web.WebReadTask.8.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebReadTask webReadTask2 = WebReadTask.this;
                            String str2 = webReadTask2.C;
                            webReadTask2.C = null;
                            if (webReadTask2.t != null) {
                                webReadTask2.D = MainUtil.k8(MainUtil.X6(str2));
                                ViewGroup viewGroup = webReadTask2.s;
                                if (viewGroup == null) {
                                    return;
                                }
                                viewGroup.post(new AnonymousClass10());
                            }
                        }
                    });
                }
            });
        }
    }

    public final void z() {
        LoadTask loadTask = this.n;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.n = null;
        A();
        MainApp.M(this.b);
        this.f19383a = null;
        this.b = null;
        this.f19384c = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.o = null;
        this.r = null;
        this.s = null;
        this.z = null;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void doUpdateVisitedHistory(WebView webView, String str, boolean z) {
            WebReadTask webReadTask = WebReadTask.this;
            webReadTask.g = str;
            webReadTask.h = MainUtil.I1(str, true);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageCommitVisible(WebView webView, String str) {
            WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.v) {
                return;
            }
            webReadTask.v = true;
            webReadTask.y();
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.t == null) {
                return;
            }
            webReadTask.u = false;
            WebReadTask.a(webReadTask, str);
            if (!webReadTask.A && !TextUtils.isEmpty(str) && !str.equals(webReadTask.B)) {
                webReadTask.A = true;
                webReadTask.B = str;
                ViewGroup viewGroup = webReadTask.s;
                if (viewGroup != null) {
                    viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            WebReadTask webReadTask2 = WebReadTask.this;
                            MainUtil.l(webReadTask2.t);
                            webReadTask2.A = false;
                        }
                    });
                }
            }
            webReadTask.g = str;
            webReadTask.h = MainUtil.I1(str, true);
            if (!webReadTask.v) {
                webReadTask.v = true;
                webReadTask.y();
            }
            MainApp.J(webReadTask.b, new Runnable() { // from class: com.mycompany.app.web.WebReadTask.LocalWebViewClient.2
                @Override // java.lang.Runnable
                public final void run() {
                    WebReadTask webReadTask2 = WebReadTask.this;
                    WebNestView webNestView = webReadTask2.t;
                    if (webNestView != null) {
                        webNestView.L(webReadTask2.g, webReadTask2.h, false);
                    }
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.t == null) {
                return;
            }
            webReadTask.u = true;
            WebReadTask.a(webReadTask, str);
            webReadTask.g = str;
            webReadTask.h = MainUtil.I1(str, true);
            MainApp.J(webReadTask.b, new Runnable() { // from class: com.mycompany.app.web.WebReadTask.LocalWebViewClient.1
                @Override // java.lang.Runnable
                public final void run() {
                    WebReadTask webReadTask2 = WebReadTask.this;
                    WebNestView webNestView = webReadTask2.t;
                    if (webNestView != null) {
                        webNestView.L(webReadTask2.g, webReadTask2.h, false);
                    }
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final WebReadTask webReadTask = WebReadTask.this;
            webReadTask.t = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            ViewGroup viewGroup = webReadTask.s;
            if (viewGroup != null) {
                viewGroup.post(new Runnable() { // from class: com.mycompany.app.web.WebReadTask.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebReadListener webReadListener = WebReadTask.this.f19384c;
                        if (webReadListener != null) {
                            webReadListener.a();
                        }
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            WebResourceResponse j;
            WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.t != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                WebReadTask.a(webReadTask, uri);
                WebClean webClean = webReadTask.z;
                if (webClean != null && (j = webClean.j(webReadTask.b, webView, webResourceRequest, webReadTask.g, webReadTask.h, uri, 0)) != null) {
                    return j;
                }
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.t == null || TextUtils.isEmpty(str)) {
                return true;
            }
            WebReadTask.a(webReadTask, str);
            webReadTask.t.z(str, null);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            WebReadTask webReadTask = WebReadTask.this;
            if (webReadTask.t != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (TextUtils.isEmpty(uri)) {
                    return false;
                }
                WebReadTask.a(webReadTask, uri);
            }
            return false;
        }
    }
}
