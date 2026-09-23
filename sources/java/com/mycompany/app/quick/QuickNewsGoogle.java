package com.mycompany.app.quick;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mycompany.app.data.DataNews;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.quick.QuickNews;
import com.mycompany.app.view.MyWebSafe;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class QuickNewsGoogle extends QuickNews {
    public static final String[] I = {"jpg", "jpeg", "webp", "png", "gif", "JPG", "WEBP", "PNG", "GIF"};
    public String A;
    public String B;
    public String C;
    public String D;
    public String E;
    public List F;
    public List G;
    public int H;
    public MainActivity j;
    public ViewGroup k;
    public MyWebSafe l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public boolean r;
    public boolean s;
    public ArrayList t;
    public boolean u;
    public String v;
    public long w;
    public boolean x;
    public String y;
    public String z;

    /* renamed from: com.mycompany.app.quick.QuickNewsGoogle$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements Runnable {

        /* renamed from: com.mycompany.app.quick.QuickNewsGoogle$2$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 implements Runnable {
            public AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
                MyWebSafe myWebSafe = quickNewsGoogle.l;
                if (myWebSafe != null) {
                    myWebSafe.setWebViewClient(new LocalWebViewClient());
                    myWebSafe.setWebChromeClient(new LocalChromeClient());
                    Handler handler = quickNewsGoogle.f17410c;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.2.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            QuickNewsGoogle quickNewsGoogle2 = QuickNewsGoogle.this;
                            MyWebSafe myWebSafe2 = quickNewsGoogle2.l;
                            if (myWebSafe2 != null) {
                                quickNewsGoogle2.n = true;
                                myWebSafe2.addJavascriptInterface(new WebAppInterface(), "android");
                                Handler handler2 = QuickNewsGoogle.this.f17410c;
                                if (handler2 == null) {
                                    return;
                                }
                                handler2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.2.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        QuickNewsGoogle quickNewsGoogle3 = QuickNewsGoogle.this;
                                        MyWebSafe myWebSafe3 = quickNewsGoogle3.l;
                                        if (myWebSafe3 == null) {
                                            return;
                                        }
                                        myWebSafe3.loadUrl(quickNewsGoogle3.d);
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
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            MyWebSafe myWebSafe = quickNewsGoogle.l;
            if (myWebSafe != null) {
                WebSettings settings = myWebSafe.getSettings();
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setDisplayZoomControls(false);
                settings.setUseWideViewPort(true);
                settings.setLoadWithOverviewMode(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setSupportMultipleWindows(false);
                settings.setMediaPlaybackRequiresUserGesture(false);
                settings.setJavaScriptEnabled(true);
                MainApp.L(quickNewsGoogle.f17409a, false);
                myWebSafe.setOverScrollMode(2);
                Handler handler = quickNewsGoogle.f17410c;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass1());
            }
        }
    }

    /* renamed from: com.mycompany.app.quick.QuickNewsGoogle$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements Runnable {
        public AnonymousClass7() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            MyWebSafe myWebSafe = quickNewsGoogle.l;
            if (myWebSafe == null) {
                return;
            }
            if (quickNewsGoogle.t != null) {
                MainUtil.I(myWebSafe, "(function(){var dsl=null;var sds=document.querySelectorAll(\"script[class*='ds:']\");if(sds&&(sds.length>0)){for(var i=0;i<sds.length;i++){var sde=sds[i].innerText;if(sde&&sde.includes('http')){if(!dsl||(sde.length>dsl.length)){dsl=sde;}}}}android.onLoadData(dsl);})();", true);
            } else {
                MainUtil.I(myWebSafe, "function myArt(doc,tag){if(doc){var ele=doc.querySelectorAll(tag);if((ele!=null)&&(ele.length>0)){return ele;}}return null;}function myAr2(doc){if(doc){var ele=myArt(doc,\"div[role='listitem']\");if(ele){return ele;}ele=myArt(doc,\"div[class*='Iisyzf']\");if(ele){return ele;}ele=myArt(doc,\"div[jsdata]\");if(ele){return ele;}ele=myArt(doc,\"article\");if(ele){return ele;}}return null;}function myRef(doc){if(doc){var ele=doc.querySelector(\"a[href]\");if(ele&&ele.href&&(ele.href.indexOf('http')==0)){return ele.href;}}return null;}function myIco(doc){if(doc){var ele=doc.querySelector(\"img[src^='https://']\");if(ele&&ele.src){return ele.src;}}return 'na';}function myDat(doc){if(doc){var ele=doc.querySelector(\"time[datetime]\");if(ele&&ele.dateTime){return ele.dateTime;}}return 'na';}(function(){var ttl=null;var srl=null;var rel=null;var icl=null;var dtl=null;var ats=myAr2(document);if((ats!=null)&&(ats.length>0)){for(var i=0;i<ats.length;i++){var atc=ats[i];var tds=atc.querySelectorAll(\"a[data-n-tid]\");if((tds==null)||(tds.length==0))continue;var tex1=null;var tex2=null;for(var j=0;j<tds.length;j++){var text=tds[j].innerText;if(!text)continue;if(!tex1){tex1=text;}else if(!tex2){tex2=text;}else{break;}}if(!tex1)continue;var len1=tex1.length;if(len1==0)continue;if(!tex2)continue;var len2=tex2.length;if(len2==0)continue;var tte;var src;if(len1>len2){tte=tex1;src=tex2;}else{tte=tex2;src=tex1;}var ref=myRef(atc);if(!ref)continue;var ico=myIco(atc);var dat=myDat(atc);if(!ttl){ttl=tte;}else{ttl+='!@!'+tte;}if(!srl){srl=src;}else{srl+='!@!'+src;}if(!rel){rel=ref;}else{rel+='!@!'+ref;}if(!icl){icl=ico;}else{icl+='!@!'+ico;}if(!dtl){dtl=dat;}else{dtl+='!@!'+dat;}}}android.onLoadList(ttl,srl,rel,icl,dtl);})();", true);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class LocalChromeClient extends WebChromeClient {
        public LocalChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public final void onProgressChanged(WebView webView, int i) {
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (i == 100) {
                quickNewsGoogle.p = true;
            }
            QuickNews.NewsListListener newsListListener = quickNewsGoogle.b;
            if (newsListListener != null) {
                newsListListener.c(i);
            }
        }
    }

    /* loaded from: classes3.dex */
    public class WebAppInterface {
        public WebAppInterface() {
        }

        @JavascriptInterface
        public void onLoadData(String str) {
            boolean isEmpty = TextUtils.isEmpty(str);
            final QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (!isEmpty) {
                quickNewsGoogle.E = str;
                quickNewsGoogle.d(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.9
                    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
                    
                        r7 = com.mycompany.app.quick.QuickNewsGoogle.k(r13.f);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:34:0x0088, code lost:
                    
                        if (android.text.TextUtils.isEmpty(r7) == false) goto L49;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:36:0x0098, code lost:
                    
                        if (r11 >= 0) goto L56;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:37:0x009c, code lost:
                    
                        r12 = r11;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:39:0x008b, code lost:
                    
                        r11 = r4.indexOf(r7, r5);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:40:0x008f, code lost:
                    
                        if (r11 < 0) goto L52;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
                    
                        if (r5 <= 0) goto L54;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:43:0x0094, code lost:
                    
                        r11 = com.mycompany.app.main.MainUtil.b5(r4, 0, r5, r7);
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:68:0x00a9, code lost:
                    
                        if (r3 != false) goto L60;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:72:0x00b2, code lost:
                    
                        java.util.Collections.sort(r8, new java.lang.Object());
                     */
                    /* JADX WARN: Removed duplicated region for block: B:122:0x0150 A[Catch: Exception -> 0x01d0, TryCatch #0 {Exception -> 0x01d0, blocks: (B:7:0x0019, B:17:0x0021, B:20:0x002c, B:26:0x003e, B:29:0x0067, B:33:0x007e, B:39:0x008b, B:43:0x0094, B:44:0x009d, B:46:0x006f, B:50:0x0078, B:51:0x0043, B:54:0x004a, B:57:0x0054, B:60:0x005e, B:63:0x0063, B:70:0x00ad, B:73:0x00b5, B:75:0x00bc, B:77:0x00c2, B:82:0x00ce, B:85:0x00d3, B:87:0x00d7, B:90:0x00de, B:93:0x00e7, B:96:0x00ed, B:103:0x0103, B:105:0x010b, B:108:0x0112, B:110:0x011d, B:120:0x0148, B:122:0x0150, B:123:0x0155, B:125:0x015d, B:128:0x0172, B:129:0x0177, B:131:0x017f, B:133:0x018e, B:135:0x0198, B:138:0x01ba, B:139:0x01a2, B:142:0x01a9, B:145:0x01b2, B:146:0x01bc, B:148:0x01c4, B:151:0x0130, B:154:0x0137, B:157:0x0140), top: B:6:0x0019 }] */
                    /* JADX WARN: Removed duplicated region for block: B:125:0x015d A[Catch: Exception -> 0x01d0, TryCatch #0 {Exception -> 0x01d0, blocks: (B:7:0x0019, B:17:0x0021, B:20:0x002c, B:26:0x003e, B:29:0x0067, B:33:0x007e, B:39:0x008b, B:43:0x0094, B:44:0x009d, B:46:0x006f, B:50:0x0078, B:51:0x0043, B:54:0x004a, B:57:0x0054, B:60:0x005e, B:63:0x0063, B:70:0x00ad, B:73:0x00b5, B:75:0x00bc, B:77:0x00c2, B:82:0x00ce, B:85:0x00d3, B:87:0x00d7, B:90:0x00de, B:93:0x00e7, B:96:0x00ed, B:103:0x0103, B:105:0x010b, B:108:0x0112, B:110:0x011d, B:120:0x0148, B:122:0x0150, B:123:0x0155, B:125:0x015d, B:128:0x0172, B:129:0x0177, B:131:0x017f, B:133:0x018e, B:135:0x0198, B:138:0x01ba, B:139:0x01a2, B:142:0x01a9, B:145:0x01b2, B:146:0x01bc, B:148:0x01c4, B:151:0x0130, B:154:0x0137, B:157:0x0140), top: B:6:0x0019 }] */
                    /* JADX WARN: Removed duplicated region for block: B:12:0x01d4  */
                    /* JADX WARN: Removed duplicated region for block: B:131:0x017f A[Catch: Exception -> 0x01d0, TryCatch #0 {Exception -> 0x01d0, blocks: (B:7:0x0019, B:17:0x0021, B:20:0x002c, B:26:0x003e, B:29:0x0067, B:33:0x007e, B:39:0x008b, B:43:0x0094, B:44:0x009d, B:46:0x006f, B:50:0x0078, B:51:0x0043, B:54:0x004a, B:57:0x0054, B:60:0x005e, B:63:0x0063, B:70:0x00ad, B:73:0x00b5, B:75:0x00bc, B:77:0x00c2, B:82:0x00ce, B:85:0x00d3, B:87:0x00d7, B:90:0x00de, B:93:0x00e7, B:96:0x00ed, B:103:0x0103, B:105:0x010b, B:108:0x0112, B:110:0x011d, B:120:0x0148, B:122:0x0150, B:123:0x0155, B:125:0x015d, B:128:0x0172, B:129:0x0177, B:131:0x017f, B:133:0x018e, B:135:0x0198, B:138:0x01ba, B:139:0x01a2, B:142:0x01a9, B:145:0x01b2, B:146:0x01bc, B:148:0x01c4, B:151:0x0130, B:154:0x0137, B:157:0x0140), top: B:6:0x0019 }] */
                    /* JADX WARN: Removed duplicated region for block: B:150:0x0176  */
                    /* JADX WARN: Removed duplicated region for block: B:15:0x01d9  */
                    /* JADX WARN: Removed duplicated region for block: B:160:0x0154  */
                    /* JADX WARN: Removed duplicated region for block: B:99:0x00f9  */
                    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, java.util.Comparator] */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            Method dump skipped, instructions count: 481
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickNewsGoogle.AnonymousClass9.run():void");
                    }
                });
            } else {
                quickNewsGoogle.f(null);
            }
        }

        @JavascriptInterface
        public void onLoadList(String str, String str2, String str3, String str4, String str5) {
            boolean isEmpty = TextUtils.isEmpty(str);
            final QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (!isEmpty) {
                quickNewsGoogle.z = str;
                quickNewsGoogle.A = str2;
                quickNewsGoogle.B = str3;
                quickNewsGoogle.C = str4;
                quickNewsGoogle.D = str5;
                quickNewsGoogle.d(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.8
                    /* JADX WARN: Removed duplicated region for block: B:10:0x00a0  */
                    /* JADX WARN: Removed duplicated region for block: B:39:0x00f9  */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            Method dump skipped, instructions count: 294
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickNewsGoogle.AnonymousClass8.run():void");
                    }
                });
                return;
            }
            quickNewsGoogle.f(null);
        }
    }

    public static void e(QuickNewsGoogle quickNewsGoogle, String str) {
        if (quickNewsGoogle.l != null) {
            if (MainUtil.D5(str)) {
                if (quickNewsGoogle.n) {
                    quickNewsGoogle.n = false;
                    MyWebSafe myWebSafe = quickNewsGoogle.l;
                    if (myWebSafe != null) {
                        myWebSafe.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                QuickNewsGoogle quickNewsGoogle2 = QuickNewsGoogle.this;
                                MyWebSafe myWebSafe2 = quickNewsGoogle2.l;
                                if (myWebSafe2 == null) {
                                    return;
                                }
                                quickNewsGoogle2.n = false;
                                myWebSafe2.removeJavascriptInterface("android");
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            if (!quickNewsGoogle.n) {
                quickNewsGoogle.n = true;
                MyWebSafe myWebSafe2 = quickNewsGoogle.l;
                if (myWebSafe2 == null) {
                    return;
                }
                myWebSafe2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickNewsGoogle quickNewsGoogle2 = QuickNewsGoogle.this;
                        MyWebSafe myWebSafe3 = quickNewsGoogle2.l;
                        if (myWebSafe3 == null) {
                            return;
                        }
                        quickNewsGoogle2.n = true;
                        myWebSafe3.addJavascriptInterface(new WebAppInterface(), "android");
                    }
                });
            }
        }
    }

    public static String k(String str) {
        if (str == null) {
            return null;
        }
        return str.replace("\\", "\\\\").replace("\"", "\\\"").replace("&", "\\u0026").replace("=", "\\u003d").replace(">", "\\u003e");
    }

    @Override // com.mycompany.app.quick.QuickNews
    public final void b(Context context, Handler handler, String str, QuickNews.NewsListListener newsListListener) {
        super.b(context, handler, str, newsListListener);
        Handler handler2 = this.f17410c;
        if (handler2 == null) {
            return;
        }
        handler2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.1
            @Override // java.lang.Runnable
            public final void run() {
                QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
                if (quickNewsGoogle.j != null && quickNewsGoogle.k != null && quickNewsGoogle.l == null) {
                    MyWebSafe myWebSafe = new MyWebSafe(quickNewsGoogle.j);
                    quickNewsGoogle.l = myWebSafe;
                    MainApp.I(quickNewsGoogle.f17409a, myWebSafe);
                    quickNewsGoogle.l.setVisibility(4);
                    quickNewsGoogle.k.addView(quickNewsGoogle.l, 0, new ViewGroup.LayoutParams(-1, -1));
                    Handler handler3 = quickNewsGoogle.f17410c;
                    if (handler3 != null) {
                        handler3.post(new AnonymousClass2());
                    }
                }
            }
        });
    }

    @Override // com.mycompany.app.quick.QuickNews
    public final void c() {
        MainApp.M(this.f17409a);
        super.c();
        MyWebSafe myWebSafe = this.l;
        if (myWebSafe != null) {
            if (this.m) {
                this.m = false;
                myWebSafe.stopLoading();
            }
            MainUtil.P6(this.l);
            this.l = null;
        }
        this.j = null;
        this.k = null;
        this.t = null;
        this.v = null;
    }

    public final void f(List list) {
        if (list == null || list.isEmpty()) {
            int i = this.q;
            if (i < 20) {
                if (this.p) {
                    this.q = i + 1;
                }
                Handler handler = this.f17410c;
                if (handler != null) {
                    handler.postDelayed(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.11
                        @Override // java.lang.Runnable
                        public final void run() {
                            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
                            if (quickNewsGoogle.l == null) {
                                return;
                            }
                            quickNewsGoogle.d(new AnonymousClass7());
                        }
                    }, 200L);
                    return;
                }
                return;
            }
            list = g(this.t);
        }
        this.G = list;
        Handler handler2 = this.f17410c;
        if (handler2 == null) {
            return;
        }
        handler2.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.12
            @Override // java.lang.Runnable
            public final void run() {
                boolean z;
                QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
                List list2 = quickNewsGoogle.G;
                quickNewsGoogle.G = null;
                QuickNews.NewsListListener newsListListener = quickNewsGoogle.b;
                if (newsListListener != null) {
                    if (quickNewsGoogle.t != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    newsListListener.b(list2, z);
                    quickNewsGoogle.b = null;
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, java.util.Comparator] */
    public final List g(List list) {
        int size;
        QuickAdapter.QuickItem quickItem;
        if (list != null && !list.isEmpty()) {
            try {
                Collections.sort(list, new Object());
            } catch (Exception unused) {
            }
            List a2 = QuickNews.a(list);
            List list2 = DataNews.a(this.f17409a).f12897a;
            if (list2 != null && (size = a2.size()) != 0 && size == list2.size()) {
                for (int i = 0; i < size; i++) {
                    if (this.f17409a == null) {
                        return null;
                    }
                    QuickAdapter.QuickItem quickItem2 = (QuickAdapter.QuickItem) list2.get(i);
                    if (quickItem2 != null && (quickItem = (QuickAdapter.QuickItem) a2.get(i)) != null) {
                        if (!TextUtils.isEmpty(quickItem.d)) {
                            quickItem2.d = quickItem.d;
                            quickItem2.e = null;
                        }
                        quickItem2.p = quickItem.p;
                    }
                }
            }
            return list2;
        }
        return QuickNews.a(null);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.util.Comparator] */
    public final List h(ArrayList arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            try {
                Collections.sort(arrayList, new Object());
            } catch (Exception unused) {
            }
        }
        List a2 = QuickNews.a(arrayList);
        ImageLoader.f().m();
        DataNews.a(this.f17409a).b(a2);
        return a2;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ba  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, com.mycompany.app.quick.QuickAdapter$QuickItem] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.mycompany.app.quick.QuickAdapter.QuickItem i(java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, java.util.List r11) {
        /*
            r5 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            r1 = 0
            if (r0 != 0) goto Ld5
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            if (r0 != 0) goto Ld5
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 == 0) goto L15
            goto Ld5
        L15:
            if (r11 == 0) goto L24
            boolean r0 = r11.isEmpty()
            if (r0 == 0) goto L1e
            goto L24
        L1e:
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L26
        L24:
            r0 = r1
            goto L41
        L26:
            java.util.Iterator r11 = r11.iterator()
        L2a:
            boolean r0 = r11.hasNext()
            if (r0 == 0) goto L24
            java.lang.Object r0 = r11.next()
            com.mycompany.app.quick.QuickAdapter$QuickItem r0 = (com.mycompany.app.quick.QuickAdapter.QuickItem) r0
            if (r0 != 0) goto L39
            goto L2a
        L39:
            java.lang.String r2 = r0.f
            boolean r2 = r6.equals(r2)
            if (r2 == 0) goto L2a
        L41:
            r11 = 7
            if (r0 == 0) goto L68
            com.mycompany.app.quick.QuickAdapter$QuickItem r8 = new com.mycompany.app.quick.QuickAdapter$QuickItem
            r8.<init>()
            r8.f17362a = r11
            r8.f = r6
            r8.r = r7
            java.lang.String r6 = r0.d
            r8.d = r6
            java.lang.String r6 = r0.e
            r8.e = r6
            java.lang.String r6 = r0.p
            r8.p = r6
            java.lang.String r6 = r0.q
            r8.q = r6
            java.lang.String r6 = r0.t
            r8.t = r6
            long r6 = r0.s
            r8.s = r6
            return r8
        L68:
            java.lang.String r0 = "na"
            boolean r2 = r0.equals(r9)
            if (r2 == 0) goto L71
            r9 = r1
        L71:
            boolean r0 = r0.equals(r10)
            if (r0 == 0) goto L78
            r10 = r1
        L78:
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            r1 = 0
            if (r0 != 0) goto Laa
            java.lang.String r0 = "-"
            java.lang.String r3 = "."
            java.lang.String r10 = r10.replace(r0, r3)
            java.lang.String r0 = "T"
            java.lang.String r3 = " "
            java.lang.String r10 = r10.replace(r0, r3)
            java.lang.String r0 = "Z"
            java.lang.String r3 = ""
            java.lang.String r10 = r10.replace(r0, r3)
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 == 0) goto L9f
            goto Laa
        L9f:
            java.lang.String r0 = "[^0-9]"
            java.lang.String r0 = r10.replaceAll(r0, r3)     // Catch: java.lang.Exception -> Laa
            long r3 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Exception -> Laa
            goto Lab
        Laa:
            r3 = r1
        Lab:
            int r0 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r0 != 0) goto Lba
            long r0 = r5.w
            r2 = 1
            long r0 = r0 + r2
            r5.w = r0
            java.lang.String r10 = r5.v
            r3 = r0
            goto Lbe
        Lba:
            r5.v = r10
            r5.w = r3
        Lbe:
            r0 = 1
            r5.r = r0
            com.mycompany.app.quick.QuickAdapter$QuickItem r0 = new com.mycompany.app.quick.QuickAdapter$QuickItem
            r0.<init>()
            r0.f17362a = r11
            r0.f = r6
            r0.r = r7
            r0.e = r8
            r0.q = r9
            r0.t = r10
            r0.s = r3
            return r0
        Ld5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.quick.QuickNewsGoogle.i(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.util.List):com.mycompany.app.quick.QuickAdapter$QuickItem");
    }

    public final String j(int i, int i2, String str, String str2, boolean z) {
        int i3;
        int indexOf;
        String k8;
        int length;
        this.H = i;
        String str3 = null;
        while (i < i2) {
            int b5 = MainUtil.b5(str, i, i2, "\"http");
            if (b5 < 0 || (indexOf = str.indexOf("\"", b5 + 5)) <= (i3 = b5 + 1)) {
                k8 = null;
            } else {
                this.H = indexOf;
                k8 = MainUtil.k8(str.substring(i3, indexOf));
            }
            if (TextUtils.isEmpty(k8)) {
                break;
            }
            boolean z2 = false;
            if (z) {
                if (k8 != null && (length = k8.length()) >= 8 && !k8.equals(str2) && !k8.contains("/faviconV2?")) {
                    int i4 = 7;
                    while (i4 < length) {
                        int i5 = i4 + 1;
                        if (i5 == length) {
                            break;
                        }
                        char charAt = k8.charAt(i4);
                        if (charAt != 'i' && charAt != 'I') {
                            if (!z2 && ((charAt == 'a' || charAt == 'A') && (k8.startsWith("rticle", i5) || k8.startsWith("mp", i5)))) {
                                z2 = true;
                            }
                        } else if (k8.startsWith("mage", i5) || k8.startsWith("mg", i5)) {
                            z2 = true;
                            break;
                        }
                        i4 = i5;
                    }
                    z2 = !z2;
                }
                if (z2) {
                    return k8;
                }
            } else if (k8.startsWith("https://lh3.googleusercontent.com")) {
                str3 = k8;
            } else {
                if (!TextUtils.isEmpty(k8) && !k8.equals(str2)) {
                    z2 = !k8.contains("/faviconV2?");
                }
                if (z2) {
                    return k8;
                }
            }
            int i6 = this.H;
            if (i6 <= i) {
                return str3;
            }
            i = i6;
        }
        return str3;
    }

    /* loaded from: classes3.dex */
    public class LocalWebViewClient extends WebViewClient {
        public LocalWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            final QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (quickNewsGoogle.l != null) {
                quickNewsGoogle.m = false;
                QuickNewsGoogle.e(quickNewsGoogle, str);
                if (!quickNewsGoogle.x && !TextUtils.isEmpty(str) && !str.equals(quickNewsGoogle.y)) {
                    quickNewsGoogle.x = true;
                    quickNewsGoogle.y = str;
                    Handler handler = quickNewsGoogle.f17410c;
                    if (handler != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.3
                            @Override // java.lang.Runnable
                            public final void run() {
                                QuickNewsGoogle quickNewsGoogle2 = QuickNewsGoogle.this;
                                MainUtil.l(quickNewsGoogle2.l);
                                quickNewsGoogle2.x = false;
                            }
                        });
                    }
                }
                if (!quickNewsGoogle.o) {
                    quickNewsGoogle.o = true;
                    quickNewsGoogle.q = 0;
                    if (quickNewsGoogle.l == null) {
                        return;
                    }
                    quickNewsGoogle.d(new AnonymousClass7());
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (quickNewsGoogle.l == null) {
                return;
            }
            quickNewsGoogle.m = true;
            QuickNewsGoogle.e(quickNewsGoogle, str);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            final QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            quickNewsGoogle.l = null;
            MainUtil.D(webView, renderProcessGoneDetail);
            Handler handler = quickNewsGoogle.f17410c;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.mycompany.app.quick.QuickNewsGoogle.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        QuickNewsGoogle quickNewsGoogle2 = QuickNewsGoogle.this;
                        QuickNews.NewsListListener newsListListener = quickNewsGoogle2.b;
                        if (newsListListener != null) {
                            newsListListener.b(null, false);
                            quickNewsGoogle2.b = null;
                        }
                    }
                });
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (quickNewsGoogle.l != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                QuickNewsGoogle.e(quickNewsGoogle, webResourceRequest.getUrl().toString());
            }
            return null;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (quickNewsGoogle.l == null || TextUtils.isEmpty(str)) {
                return true;
            }
            QuickNewsGoogle.e(quickNewsGoogle, str);
            quickNewsGoogle.l.loadUrl(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            QuickNewsGoogle quickNewsGoogle = QuickNewsGoogle.this;
            if (quickNewsGoogle.l != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                String uri = webResourceRequest.getUrl().toString();
                if (!TextUtils.isEmpty(uri)) {
                    QuickNewsGoogle.e(quickNewsGoogle, uri);
                }
            }
            return false;
        }
    }
}
