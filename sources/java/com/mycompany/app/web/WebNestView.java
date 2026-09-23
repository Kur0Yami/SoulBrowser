package com.mycompany.app.web;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.data.book.DataBookAds;
import com.mycompany.app.data.book.DataBookJava;
import com.mycompany.app.data.book.DataBookLink;
import com.mycompany.app.db.book.DbTabState;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.main.MainWebDestroy;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.quick.QuickAdapter;
import com.mycompany.app.quick.QuickControl;
import com.mycompany.app.quick.QuickView;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyWebBody;
import com.mycompany.app.view.MyWebView;
import com.mycompany.app.web.WebNestFrame;
import com.mycompany.app.web.WebViewActivity;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class WebNestView extends MyWebView implements NestedScrollingChild {
    public int A;
    public long A0;
    public boolean A1;
    public boolean A2;
    public boolean B;
    public String B0;
    public boolean B1;
    public final Runnable B2;
    public boolean C;
    public String C0;
    public QuickView C1;
    public DbTabState.StateItem C2;
    public boolean D;
    public float D0;
    public SslErrorHandler D1;
    public String D2;
    public boolean E;
    public int E0;
    public SslError E1;
    public boolean E2;
    public boolean F;
    public ValueAnimator F0;
    public SslErrorHandler F1;
    public WebNestFrame F2;
    public boolean G;
    public boolean G0;
    public SslError G1;
    public long G2;
    public int H;
    public boolean H0;
    public SslErrorHandler H1;
    public String H2;
    public boolean I;
    public boolean I0;
    public SslError I1;
    public Bundle I2;
    public boolean J;
    public int J0;
    public String J1;
    public WebBundleListener J2;
    public boolean K;
    public Paint K0;
    public String K1;
    public int L;
    public Paint L0;
    public String L1;
    public int M;
    public Paint M0;
    public String M1;
    public boolean N;
    public int N0;
    public HashMap N1;
    public boolean O;
    public int O0;
    public String O1;
    public int P;
    public int P0;
    public String P1;
    public int Q;
    public boolean Q0;
    public int Q1;
    public String R;
    public boolean R0;
    public boolean R1;
    public boolean S;
    public boolean S0;
    public int S1;
    public int T;
    public boolean T0;
    public WebStyleListener T1;
    public boolean U;
    public boolean U0;
    public String U1;
    public boolean V;
    public boolean V0;
    public int V1;
    public boolean W;
    public int W0;
    public int W1;
    public int X0;
    public String X1;
    public int Y0;
    public String Y1;
    public QuickView Z0;
    public String Z1;
    public String a0;
    public boolean a1;
    public int a2;
    public String b0;
    public WebSslView b1;
    public final Runnable b2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19338c;
    public String c0;
    public boolean c1;
    public boolean c2;
    public String d0;
    public WebCrashView d1;
    public boolean d2;
    public String e0;
    public boolean e1;
    public String e2;
    public Handler f;
    public String f0;
    public boolean f1;
    public boolean f2;
    public boolean g;
    public ArrayList g0;
    public boolean g1;
    public boolean g2;
    public final boolean h;
    public ArrayList h0;
    public boolean h1;
    public String h2;
    public int i;
    public ArrayList i0;
    public String i1;
    public String i2;
    public boolean j;
    public ArrayList j0;
    public String j1;
    public String j2;
    public boolean k;
    public ArrayList k0;
    public Bitmap k1;
    public boolean k2;
    public boolean l;
    public List l0;
    public Paint l1;
    public boolean l2;
    public boolean m;
    public boolean m0;
    public boolean m1;
    public boolean m2;
    public boolean n;
    public boolean n0;
    public boolean n1;
    public String n2;
    public boolean o;
    public int o0;
    public boolean o1;
    public String o2;
    public int p;
    public boolean p0;
    public boolean p1;
    public String p2;
    public final int[] q;
    public boolean q0;
    public String q1;
    public boolean q2;
    public final int[] r;
    public String r0;
    public String r1;
    public boolean r2;
    public int s;
    public int s0;
    public WebClean s1;
    public String s2;
    public NestedScrollingChildHelper t;
    public int t0;
    public ExecutorService t1;
    public String t2;
    public WebViewListener u;
    public boolean u0;
    public MainWebDestroy u1;
    public String u2;
    public WebQuickListener v;
    public WebNestFrame v0;
    public String v1;
    public boolean v2;
    public WebAnimListener w;
    public String w0;
    public String w1;
    public String w2;
    public WebHtmlListener x;
    public String x0;
    public boolean x1;
    public int x2;
    public WebBackListener y;
    public int y0;
    public boolean y1;
    public boolean y2;
    public int z;
    public boolean z0;
    public boolean z1;
    public float z2;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebNestView$19, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass19 implements Runnable {
        public AnonymousClass19() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebNestView webNestView = WebNestView.this;
            webNestView.P1 = WebClean.E(webNestView.getContext(), webNestView.O1);
            Handler handler = webNestView.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.19.1
                @Override // java.lang.Runnable
                public final void run() {
                    AnonymousClass19 anonymousClass19 = AnonymousClass19.this;
                    WebNestView webNestView2 = WebNestView.this;
                    String str = webNestView2.O1;
                    String str2 = webNestView2.P1;
                    webNestView2.O1 = null;
                    webNestView2.P1 = null;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    MainUtil.r6(WebNestView.this, str, str2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebNestView$21, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass21 implements Runnable {
        public AnonymousClass21() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebNestView webNestView = WebNestView.this;
            if (!webNestView.f19338c) {
                webNestView.Q1 = 0;
                webNestView.R1 = false;
                return;
            }
            if (TextUtils.isEmpty(webNestView.U1)) {
                webNestView.U1 = "function myPageLong(){var cl=" + webNestView.getLongHeight() + ";return (cl>0)&&(document.documentElement.scrollHeight>cl);}(function(){if(!document.head)return 0;var be=document.body;if(be&&be.hasChildNodes()){return myPageLong()?4:2;}return 1;})();";
            }
            webNestView.evaluateJavascript(webNestView.U1, new ValueCallback<String>() { // from class: com.mycompany.app.web.WebNestView.21.1
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(String str) {
                    String str2 = str;
                    WebNestView webNestView2 = WebNestView.this;
                    webNestView2.R1 = false;
                    int i = webNestView2.S1;
                    WebStyleListener webStyleListener = webNestView2.T1;
                    if ("0".equals(str2)) {
                        webNestView2.j(false, i, webStyleListener);
                        return;
                    }
                    webNestView2.U1 = null;
                    if (webNestView2.V1 != 4) {
                        if ("4".equals(str2)) {
                            webNestView2.setPageState(4);
                        } else if ("2".equals(str2)) {
                            webNestView2.setPageState(2);
                        }
                    }
                    if (!webNestView2.f19338c) {
                        return;
                    }
                    if (webStyleListener != null) {
                        webStyleListener.a();
                    }
                    webNestView2.W1 = i;
                    webNestView2.X1 = webNestView2.getUrl();
                    webNestView2.J(new Runnable() { // from class: com.mycompany.app.web.WebNestView.21.1.1
                        /* JADX WARN: Code restructure failed: missing block: B:92:0x0176, code lost:
                        
                            if (com.mycompany.app.pref.PrefTts.u != 1) goto L98;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:93:0x0178, code lost:
                        
                            r0.R(r2, true);
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:94:0x017c, code lost:
                        
                            com.mycompany.app.main.MainUtil.x7(r0);
                         */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                Method dump skipped, instructions count: 410
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebNestView.AnonymousClass21.AnonymousClass1.RunnableC02611.run():void");
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.web.WebNestView$24, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass24 implements Runnable {
        public AnonymousClass24() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebNestView webNestView = WebNestView.this;
            if (webNestView.t == null) {
                return;
            }
            String str = webNestView.e2;
            webNestView.e2 = null;
            webNestView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.mycompany.app.web.WebNestView.24.1
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(String str2) {
                    String str3 = str2;
                    WebNestView webNestView2 = WebNestView.this;
                    if (webNestView2.t == null) {
                        return;
                    }
                    boolean z = webNestView2.g2;
                    String str4 = webNestView2.h2;
                    String str5 = webNestView2.i2;
                    String str6 = webNestView2.j2;
                    boolean z2 = webNestView2.k2;
                    boolean z3 = webNestView2.l2;
                    webNestView2.g2 = false;
                    webNestView2.h2 = null;
                    webNestView2.i2 = null;
                    webNestView2.j2 = null;
                    webNestView2.k2 = false;
                    webNestView2.l2 = false;
                    if (TextUtils.isEmpty(str4)) {
                        webNestView2.c2 = false;
                        return;
                    }
                    webNestView2.m2 = z;
                    webNestView2.n2 = str4;
                    webNestView2.o2 = str5;
                    webNestView2.p2 = str6;
                    webNestView2.q2 = z2;
                    webNestView2.r2 = z3;
                    webNestView2.s2 = str3;
                    webNestView2.J(new Runnable() { // from class: com.mycompany.app.web.WebNestView.24.1.1
                        /* JADX WARN: Can't wrap try/catch for region: R(51:296|(50:899|900|901|(4:903|904|(1:914)(2:906|(3:911|912|879)(2:908|909))|910)|916|299|(3:893|894|(41:896|(42:314|315|316|(5:320|(5:(4:326|(1:328)(1:332)|329|(1:331))|(1:334)(1:338)|335|336|337)(2:322|323)|324|317|318)|339|340|(3:342|(1:344)(1:346)|345)|347|(4:839|840|(3:842|(2:847|848)|851)|855)|349|(4:353|354|(4:357|(5:359|(1:361)(1:366)|362|363|364)(3:367|368|369)|365|355)|370)|373|(3:375|(4:379|380|(3:382|(5:384|(1:386)(1:391)|387|388|389)(3:392|393|394)|390)|396)|(2:399|(2:(1:402)(1:404)|403)))|405|(27:829|(2:(1:832)(1:834)|833)|427|(1:827)|(4:434|435|(4:438|(5:440|(1:442)(1:447)|443|444|445)(3:448|449|450)|446|436)|451)|(1:455)(1:826)|456|(1:458)|459|(2:463|(21:465|(23:785|786|787|(5:791|(3:817|818|819)(3:793|794|(2:796|(6:806|807|808|809|810|811)(3:798|799|(3:801|802|803)(1:805)))(3:814|815|816))|804|788|789)|820|468|(4:470|(4:518|519|(4:522|(3:548|549|550)(3:524|525|(2:527|(6:537|538|539|540|541|542)(3:529|530|(3:532|533|534)(1:536)))(3:545|546|547))|535|520)|551)|472|(4:482|483|(4:486|(3:512|513|514)(3:488|489|(2:491|(6:501|502|503|504|505|506)(3:493|494|(3:496|497|498)(1:500)))(3:509|510|511))|499|484)|515))|(19:557|558|559|(4:561|562|(3:576|577|578)(3:564|565|(4:567|(1:569)|570|571)(3:573|574|575))|572)|781|581|(6:585|586|587|(4:589|590|(4:592|(1:594)(1:598)|595|596)(3:599|600|601)|597)|777|(6:605|606|607|(2:609|611)|612|(12:614|615|(4:758|759|(3:761|(2:766|767)|770)|774)|617|(3:625|626|(4:628|629|630|(10:634|(2:636|(1:690)(4:(5:644|(1:(3:651|(5:653|(2:678|679)(7:655|(1:677)(2:657|(1:674)(2:659|(1:661)(6:671|(1:673)|(1:664)(2:668|(1:670))|665|666|667)))|662|(0)(0)|665|666|667)|675|676|667)|680))|681|(2:683|684)(2:685|(2:687|688)(1:689))|641)|639|640|641))|691|692|(4:696|697|(1:699)(5:702|(3:704|(2:709|710)|712)|716|717|(1:719))|700)(0)|721|(6:725|726|727|(5:731|(5:733|(1:735)(1:740)|736|737|738)(3:741|742|743)|739|728|729)|744|(1:746))|751|189|(0))(0))(0))(0)|757|(5:694|696|697|(0)(0)|700)(0)|721|(7:723|725|726|727|(2:728|729)|744|(0))|751|189|(0))))|780|615|(0)|617|(6:619|621|623|625|626|(0)(0))(0)|757|(0)(0)|721|(0)|751|189|(0))|784|581|(7:583|585|586|587|(0)|777|(0))|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0))|467|468|(0)|(20:555|557|558|559|(0)|781|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0))|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0)))|825|(0)|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0))(4:409|410|(3:412|(4:414|(1:416)(1:420)|417|418)(3:421|422|423)|419)|425)|426|427|(1:429)|827|(5:432|434|435|(1:436)|451)|(0)(0)|456|(0)|459|(3:461|463|(0))|825|(0)|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0))|861|340|(0)|347|(6:835|837|839|840|(0)|855)|349|(5:351|353|354|(1:355)|370)|373|(0)|405|(1:407)|829|(0)|427|(0)|827|(0)|(0)(0)|456|(0)|459|(0)|825|(0)|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0)))|301|302|(3:880|881|(2:883|(1:885)(4:886|(1:888)|889|(1:891)(0)))(0))(4:306|307|(1:309)(6:862|863|(2:865|(2:869|870)(1:872))|874|875|(1:877))|310)|(44:312|314|315|316|(2:317|318)|339|340|(0)|347|(0)|349|(0)|373|(0)|405|(0)|829|(0)|427|(0)|827|(0)|(0)(0)|456|(0)|459|(0)|825|(0)|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0))|861|340|(0)|347|(0)|349|(0)|373|(0)|405|(0)|829|(0)|427|(0)|827|(0)|(0)(0)|456|(0)|459|(0)|825|(0)|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0))|298|299|(0)|301|302|(1:304)|880|881|(0)(0)|(0)|861|340|(0)|347|(0)|349|(0)|373|(0)|405|(0)|829|(0)|427|(0)|827|(0)|(0)(0)|456|(0)|459|(0)|825|(0)|784|581|(0)|780|615|(0)|617|(0)(0)|757|(0)(0)|721|(0)|751|189|(0)) */
                        /* JADX WARN: Code restructure failed: missing block: B:167:0x030a, code lost:
                        
                            if (android.text.TextUtils.isEmpty(r7) == false) goto L213;
                         */
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Removed duplicated region for block: B:109:0x0a4e  */
                        /* JADX WARN: Removed duplicated region for block: B:161:0x02f5  */
                        /* JADX WARN: Removed duplicated region for block: B:170:0x036e  */
                        /* JADX WARN: Removed duplicated region for block: B:173:0x0380  */
                        /* JADX WARN: Removed duplicated region for block: B:179:0x039c  */
                        /* JADX WARN: Removed duplicated region for block: B:187:0x03c5  */
                        /* JADX WARN: Removed duplicated region for block: B:191:0x0a1c  */
                        /* JADX WARN: Removed duplicated region for block: B:196:0x0a31  */
                        /* JADX WARN: Removed duplicated region for block: B:197:0x03b0  */
                        /* JADX WARN: Removed duplicated region for block: B:198:0x0374  */
                        /* JADX WARN: Removed duplicated region for block: B:201:0x0313  */
                        /* JADX WARN: Removed duplicated region for block: B:207:0x0325 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:229:0x0364  */
                        /* JADX WARN: Removed duplicated region for block: B:242:0x029c  */
                        /* JADX WARN: Removed duplicated region for block: B:245:0x02a5  */
                        /* JADX WARN: Removed duplicated region for block: B:248:0x02b1  */
                        /* JADX WARN: Removed duplicated region for block: B:254:0x02c5  */
                        /* JADX WARN: Removed duplicated region for block: B:260:0x02d9  */
                        /* JADX WARN: Removed duplicated region for block: B:265:0x02eb  */
                        /* JADX WARN: Removed duplicated region for block: B:266:0x02aa  */
                        /* JADX WARN: Removed duplicated region for block: B:312:0x04bb  */
                        /* JADX WARN: Removed duplicated region for block: B:320:0x04d1 A[Catch: Exception -> 0x050d, TryCatch #24 {Exception -> 0x050d, blocks: (B:318:0x04cb, B:320:0x04d1, B:326:0x04e4, B:329:0x04ef, B:332:0x04eb, B:334:0x04fa, B:335:0x0505, B:338:0x0502), top: B:317:0x04cb }] */
                        /* JADX WARN: Removed duplicated region for block: B:342:0x0515  */
                        /* JADX WARN: Removed duplicated region for block: B:351:0x0553  */
                        /* JADX WARN: Removed duplicated region for block: B:357:0x0563 A[Catch: Exception -> 0x0582, TryCatch #43 {Exception -> 0x0582, blocks: (B:354:0x0559, B:355:0x055d, B:357:0x0563, B:361:0x0572, B:362:0x057c, B:366:0x0579), top: B:353:0x0559 }] */
                        /* JADX WARN: Removed duplicated region for block: B:375:0x0586  */
                        /* JADX WARN: Removed duplicated region for block: B:407:0x05dd  */
                        /* JADX WARN: Removed duplicated region for block: B:429:0x062b  */
                        /* JADX WARN: Removed duplicated region for block: B:432:0x0637  */
                        /* JADX WARN: Removed duplicated region for block: B:438:0x0647 A[Catch: Exception -> 0x0666, TryCatch #17 {Exception -> 0x0666, blocks: (B:435:0x063d, B:436:0x0641, B:438:0x0647, B:442:0x0656, B:443:0x0660, B:447:0x065d), top: B:434:0x063d }] */
                        /* JADX WARN: Removed duplicated region for block: B:455:0x0668  */
                        /* JADX WARN: Removed duplicated region for block: B:458:0x0685  */
                        /* JADX WARN: Removed duplicated region for block: B:461:0x068c  */
                        /* JADX WARN: Removed duplicated region for block: B:465:0x06a0  */
                        /* JADX WARN: Removed duplicated region for block: B:470:0x06ea  */
                        /* JADX WARN: Removed duplicated region for block: B:51:0x00e0  */
                        /* JADX WARN: Removed duplicated region for block: B:555:0x0786  */
                        /* JADX WARN: Removed duplicated region for block: B:561:0x0795 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:583:0x07bc  */
                        /* JADX WARN: Removed duplicated region for block: B:589:0x07d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:605:0x07f3  */
                        /* JADX WARN: Removed duplicated region for block: B:619:0x0879  */
                        /* JADX WARN: Removed duplicated region for block: B:61:0x0102  */
                        /* JADX WARN: Removed duplicated region for block: B:628:0x0892 A[Catch: Exception -> 0x0897, TRY_LEAVE, TryCatch #33 {Exception -> 0x0897, blocks: (B:626:0x088b, B:628:0x0892), top: B:625:0x088b }] */
                        /* JADX WARN: Removed duplicated region for block: B:636:0x08aa  */
                        /* JADX WARN: Removed duplicated region for block: B:664:0x0936  */
                        /* JADX WARN: Removed duplicated region for block: B:668:0x0942  */
                        /* JADX WARN: Removed duplicated region for block: B:694:0x0984  */
                        /* JADX WARN: Removed duplicated region for block: B:699:0x098f A[Catch: Exception -> 0x09d0, TryCatch #21 {Exception -> 0x09d0, blocks: (B:697:0x098b, B:699:0x098f, B:700:0x09c2, B:702:0x0997, B:704:0x099e, B:707:0x09a9, B:717:0x09b2, B:719:0x09bc), top: B:696:0x098b }] */
                        /* JADX WARN: Removed duplicated region for block: B:702:0x0997 A[Catch: Exception -> 0x09d0, TryCatch #21 {Exception -> 0x09d0, blocks: (B:697:0x098b, B:699:0x098f, B:700:0x09c2, B:702:0x0997, B:704:0x099e, B:707:0x09a9, B:717:0x09b2, B:719:0x09bc), top: B:696:0x098b }] */
                        /* JADX WARN: Removed duplicated region for block: B:723:0x09d4  */
                        /* JADX WARN: Removed duplicated region for block: B:731:0x09e6 A[Catch: Exception -> 0x0a0a, TryCatch #27 {Exception -> 0x0a0a, blocks: (B:729:0x09e0, B:731:0x09e6, B:735:0x09f5, B:736:0x0a03, B:740:0x09fe), top: B:728:0x09e0 }] */
                        /* JADX WARN: Removed duplicated region for block: B:746:0x0a0d  */
                        /* JADX WARN: Removed duplicated region for block: B:758:0x0857 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Removed duplicated region for block: B:826:0x066e  */
                        /* JADX WARN: Removed duplicated region for block: B:82:0x0150  */
                        /* JADX WARN: Removed duplicated region for block: B:831:0x0616  */
                        /* JADX WARN: Removed duplicated region for block: B:835:0x052a  */
                        /* JADX WARN: Removed duplicated region for block: B:842:0x053c A[Catch: Exception -> 0x0528, TryCatch #16 {Exception -> 0x0528, blocks: (B:840:0x0535, B:842:0x053c, B:845:0x0547, B:848:0x054f), top: B:839:0x0535 }] */
                        /* JADX WARN: Removed duplicated region for block: B:85:0x0159  */
                        /* JADX WARN: Removed duplicated region for block: B:883:0x048f A[Catch: Exception -> 0x04b9, TRY_ENTER, TryCatch #41 {Exception -> 0x04b9, blocks: (B:310:0x0479, B:865:0x044f, B:867:0x0460, B:875:0x0469, B:877:0x0473, B:883:0x048f, B:885:0x0493, B:886:0x049e, B:888:0x04a4, B:889:0x04a9, B:891:0x04b3), top: B:302:0x042d }] */
                        /* JADX WARN: Removed duplicated region for block: B:893:0x041e A[EXC_TOP_SPLITTER, SYNTHETIC] */
                        /* JADX WARN: Type inference failed for: r32v1 */
                        /* JADX WARN: Type inference failed for: r32v10 */
                        /* JADX WARN: Type inference failed for: r32v11 */
                        /* JADX WARN: Type inference failed for: r32v12 */
                        /* JADX WARN: Type inference failed for: r32v13 */
                        /* JADX WARN: Type inference failed for: r32v14 */
                        /* JADX WARN: Type inference failed for: r32v2, types: [java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r32v3 */
                        /* JADX WARN: Type inference failed for: r32v4 */
                        /* JADX WARN: Type inference failed for: r32v5 */
                        /* JADX WARN: Type inference failed for: r32v6 */
                        /* JADX WARN: Type inference failed for: r32v7 */
                        /* JADX WARN: Type inference failed for: r32v8 */
                        /* JADX WARN: Type inference failed for: r32v9 */
                        /* JADX WARN: Type inference failed for: r3v15, types: [com.mycompany.app.web.WebClean$CmdItem, java.lang.Object] */
                        /* JADX WARN: Type inference failed for: r5v63, types: [com.mycompany.app.web.WebClean$CmdItem, java.lang.Object] */
                        @Override // java.lang.Runnable
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final void run() {
                            /*
                                Method dump skipped, instructions count: 2680
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebNestView.AnonymousClass24.AnonymousClass1.RunnableC02621.run():void");
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.mycompany.app.web.WebNestView$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements Runnable {
        public AnonymousClass8() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            WebNestView webNestView = WebNestView.this;
            if (!webNestView.a1) {
                webNestView.H();
                return;
            }
            QuickView quickView = webNestView.Z0;
            if (quickView != null) {
                quickView.q();
                Handler handler = webNestView.f;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.8.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WebNestView webNestView2 = WebNestView.this;
                        if (!webNestView2.a1) {
                            webNestView2.H();
                            return;
                        }
                        QuickView quickView2 = webNestView2.Z0;
                        if (quickView2 != null) {
                            quickView2.o();
                            Handler handler2 = webNestView2.f;
                            if (handler2 == null) {
                                return;
                            }
                            handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.8.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    WebNestView webNestView3 = WebNestView.this;
                                    if (!webNestView3.a1) {
                                        webNestView3.H();
                                        return;
                                    }
                                    QuickView quickView3 = webNestView3.Z0;
                                    if (quickView3 == null) {
                                        return;
                                    }
                                    quickView3.p();
                                }
                            });
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class LocalWebViewClient extends WebViewClient {
        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            if (webView instanceof WebNestView) {
                ((WebNestView) webView).setWebLoading(false);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (webView instanceof WebNestView) {
                ((WebNestView) webView).setWebLoading(true);
            }
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MainUtil.C(webView, renderProcessGoneDetail);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface WebAnimListener {
        void a(int i, boolean z);
    }

    /* loaded from: classes3.dex */
    public interface WebBackListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface WebBundleListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface WebHtmlListener {
        void a(String str, String str2);
    }

    /* loaded from: classes3.dex */
    public interface WebQuickListener {
        boolean a();

        boolean b();

        void c(QuickAdapter.QuickItem quickItem, boolean z);

        boolean d();

        void e(QuickAdapter.QuickItem quickItem);

        MyWebBody f();

        int h();

        void i(boolean z);

        void j();

        void k();

        void l();

        void m(QuickAdapter.QuickItem quickItem);

        void n(List list);

        void o(QuickAdapter.QuickItem quickItem, int i);

        void p(int i, int i2, int i3, String str, int i4);

        boolean q();

        void r();

        void s(View view);

        void t(int i, String str);

        void u();

        void v();

        void w();

        boolean x();

        void y();
    }

    /* loaded from: classes3.dex */
    public interface WebStyleListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface WebViewListener {
        void a(int i);

        void b();

        void c(int i);

        boolean d();

        void e();

        void f(int i);

        boolean g(float f, float f2, int i);

        void h(String str);
    }

    public WebNestView(Context context) {
        super(context);
        boolean z;
        this.q = new int[2];
        this.r = new int[2];
        this.b2 = new Runnable() { // from class: com.mycompany.app.web.WebNestView.23
            @Override // java.lang.Runnable
            public final void run() {
                WebNestView webNestView = WebNestView.this;
                webNestView.R(webNestView.Z1, false);
            }
        };
        this.B2 = new Runnable() { // from class: com.mycompany.app.web.WebNestView.29
            @Override // java.lang.Runnable
            public final void run() {
                WebNestView webNestView = WebNestView.this;
                webNestView.A2 = false;
                if (webNestView.F0 != null) {
                    webNestView.setValAnimPage(webNestView.z2);
                }
            }
        };
        this.f19338c = true;
        this.f = new Handler(Looper.getMainLooper());
        MainApp.I(context, this);
        this.h = MainUtil.O5(context);
        if (PrefWeb.j) {
            this.C = true;
        }
        this.D = PrefZtwo.E;
        this.E = MainApp.K1;
        this.F = MainApp.L1;
        this.G = PrefWeb.M;
        this.H = PrefWeb.N;
        this.L = PrefZtwo.A;
        this.M = PrefZtwo.p;
        this.N = PrefZone.u;
        this.O = PrefZone.v;
        this.P = PrefZone.w;
        this.Q = PrefZone.x;
        this.R = PrefZone.l;
        this.S = PrefZone.m;
        this.U = PrefPdf.r;
        this.V = PrefWeb.H;
        if (PrefZtwo.E || (PrefZtwo.C & 2) == 2) {
            z = true;
        } else {
            z = false;
        }
        this.W = z;
        this.t = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        setBackgroundColor(0);
    }

    public static void b(WebNestView webNestView, String str, ValueCallback valueCallback) {
        if (!webNestView.f19338c) {
            return;
        }
        MainWebDestroy mainWebDestroy = webNestView.u1;
        if (mainWebDestroy != null) {
            mainWebDestroy.h = true;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    public static void c(WebNestView webNestView) {
        String str = webNestView.M1;
        HashMap hashMap = webNestView.N1;
        webNestView.M1 = null;
        webNestView.N1 = null;
        if (str == null) {
            return;
        }
        if (hashMap == null) {
            super.loadUrl(str);
            return;
        }
        try {
            super.loadUrl(str, hashMap);
        } catch (Exception unused) {
            super.loadUrl(str);
        }
    }

    private int getWallColor() {
        if (MainUtil.C5(this.a1)) {
            return 0;
        }
        if (MainApp.L1) {
            return -16777216;
        }
        return -1;
    }

    private Bundle getWebBundle() {
        if (!this.z0) {
            try {
                Bundle bundle = new Bundle();
                if (saveState(bundle) != null) {
                    return bundle;
                }
            } catch (Exception unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setValAnimPage(float f) {
        this.D0 = f;
        Q();
        if (!this.H0 && !this.I0) {
            invalidate();
        }
    }

    public static boolean u(String str, String str2) {
        int length;
        int length2;
        boolean startsWith;
        if (MainUtil.q5(str, str2)) {
            return false;
        }
        if (str != null && (length = str.length()) != 0 && str2 != null && (length2 = str2.length()) != 0) {
            if (length < length2) {
                if (str2.startsWith("#", length)) {
                    startsWith = str2.startsWith(str);
                    return !startsWith;
                }
            } else if (length2 < length && str.startsWith("#", length2)) {
                startsWith = str.startsWith(str2);
                return !startsWith;
            }
        }
        return true;
    }

    public final void A(String str, DbTabState.StateItem stateItem) {
        ArrayList arrayList;
        Bundle bundle;
        WebHistoryItem currentItem;
        if (stateItem != null) {
            bundle = stateItem.f12970a;
            arrayList = stateItem.b;
        } else {
            arrayList = null;
            bundle = null;
        }
        if (arrayList != null && !arrayList.isEmpty()) {
            ViewParent parent = getParent();
            if (parent instanceof WebNestFrame) {
                ((WebNestFrame) parent).R(this, arrayList);
            }
        }
        if (bundle != null && !PrefPdf.Q) {
            try {
                WebBackForwardList restoreState = restoreState(bundle);
                if (restoreState != null && (currentItem = restoreState.getCurrentItem()) != null) {
                    if (!TextUtils.isEmpty(currentItem.getUrl())) {
                        return;
                    }
                }
            } catch (Exception unused) {
            }
        }
        z(str, null);
    }

    public final boolean B() {
        String str;
        int length;
        if (this.C) {
            return true;
        }
        if (PrefZtwo.p <= 100 || (str = PrefZtwo.q) == null || (length = str.length()) == 0 || !str.startsWith("Mozilla/5.0 (") || length <= 13) {
            return false;
        }
        if (str.startsWith("X11", 13)) {
            if (length > 16 && str.indexOf("Android", 16) == -1) {
                return true;
            }
            return false;
        }
        if (str.startsWith("Windows NT", 13) && length > 23 && str.indexOf("Android", 23) == -1) {
            return true;
        }
        return false;
    }

    public final void C() {
        if (this.i == 2) {
            return;
        }
        onPause();
    }

    public final void D(ArrayList arrayList) {
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = arrayList;
        this.m0 = false;
        this.n0 = false;
        this.o0 = 0;
        this.p0 = false;
        this.q0 = false;
    }

    public final void E() {
        this.k1 = null;
        this.l1 = null;
    }

    public final boolean F() {
        if (!this.f19338c) {
            return true;
        }
        this.p1 = false;
        String url = getUrl();
        if (!TextUtils.isEmpty(url)) {
            String h = h(url, true);
            if (!TextUtils.isEmpty(h)) {
                this.r0 = null;
                this.s0 = 0;
                this.t0 = 0;
                this.G0 = false;
                this.n1 = false;
                E();
                if (url.equals(h)) {
                    reload();
                    return true;
                }
                if (url.startsWith("file:///")) {
                    getContext();
                }
                z(h, null);
                return true;
            }
        }
        return false;
    }

    public final void G(String str) {
        this.e1 = false;
        WebCrashView webCrashView = this.d1;
        if (webCrashView != null) {
            MyButtonText myButtonText = webCrashView.h;
            if (myButtonText != null) {
                myButtonText.t();
                webCrashView.h = null;
            }
            MyButtonText myButtonText2 = webCrashView.j;
            if (myButtonText2 != null) {
                myButtonText2.t();
                webCrashView.j = null;
            }
            MyButtonText myButtonText3 = webCrashView.k;
            if (myButtonText3 != null) {
                myButtonText3.t();
                webCrashView.k = null;
            }
            MyButtonText myButtonText4 = webCrashView.l;
            if (myButtonText4 != null) {
                myButtonText4.t();
                webCrashView.l = null;
            }
            webCrashView.f19080c = null;
            webCrashView.f = null;
            webCrashView.g = null;
            webCrashView.i = null;
            webCrashView.m = null;
            removeView(this.d1);
            this.d1 = null;
            WebViewListener webViewListener = this.u;
            if (webViewListener != null) {
                webViewListener.h(str);
            }
        }
    }

    public final void H() {
        QuickView quickView = this.Z0;
        if (quickView == null) {
            return;
        }
        quickView.y();
        removeView(this.Z0);
        this.Z0 = null;
    }

    public final void I() {
        this.c1 = false;
        WebSslView webSslView = this.b1;
        if (webSslView != null) {
            SslErrorHandler sslErrorHandler = webSslView.m;
            if (sslErrorHandler != null) {
                sslErrorHandler.cancel();
                webSslView.m = null;
            }
            MyButtonImage myButtonImage = webSslView.j;
            if (myButtonImage != null) {
                myButtonImage.j();
                webSslView.j = null;
            }
            MyButtonText myButtonText = webSslView.k;
            if (myButtonText != null) {
                myButtonText.t();
                webSslView.k = null;
            }
            MyButtonText myButtonText2 = webSslView.l;
            if (myButtonText2 != null) {
                myButtonText2.t();
                webSslView.l = null;
            }
            webSslView.f19504c = null;
            webSslView.f = null;
            webSslView.g = null;
            webSslView.h = null;
            webSslView.i = null;
            webSslView.n = null;
            removeView(this.b1);
            this.b1 = null;
            WebViewListener webViewListener = this.u;
            if (webViewListener != null) {
                webViewListener.e();
            }
        }
    }

    public final void J(Runnable runnable) {
        ExecutorService executorService = this.t1;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(getContext());
            if (executorService == null) {
                return;
            } else {
                this.t1 = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    public final boolean K(Context context, int i, WebSettings webSettings) {
        String str;
        this.M = i;
        if (!this.C) {
            if (webSettings == null && (webSettings = getSettings()) == null) {
                return false;
            }
            if (i == 1) {
                MainUtil.d5(context);
                String str2 = MainApp.b2;
                if (!TextUtils.isEmpty(str2)) {
                    str = str2.replace("; wv", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                } else {
                    str = "Mozilla/5.0 (Linux; Android 14; SM-S24 Build/PQ3A.190801.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.0.0 Mobile Safari/537.36";
                }
                MainUtil.Q7(webSettings, str);
                return true;
            }
            if (i == 2) {
                MainUtil.Q7(webSettings, "Mozilla/5.0 (iPhone; CPU iPhone OS 17_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.154 Mobile/15E148 Safari/604.1");
                return true;
            }
            if (i == 3) {
                MainUtil.Q7(webSettings, "Mozilla/5.0 (iPad; CPU OS 17_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/131.0.6778.154 Mobile/15E148 Safari/604.1");
                return true;
            }
            if (i > 100) {
                if (!TextUtils.isEmpty(PrefZtwo.q)) {
                    MainUtil.Q7(webSettings, PrefZtwo.q);
                    return true;
                }
                MainUtil.Q7(webSettings, MainUtil.t3(context));
                return true;
            }
            MainUtil.Q7(webSettings, MainUtil.t3(context));
            return true;
        }
        return false;
    }

    public final void L(String str, String str2, boolean z) {
        boolean z2 = this.f2;
        this.f2 = false;
        if (DataBookAds.l(getContext()).n(str, str2)) {
            this.c2 = false;
            return;
        }
        if (!MainUtil.q5(this.i1, str2)) {
            this.i1 = str2;
            this.j1 = MainUtil.q0(str2);
        }
        String str3 = this.j1;
        if (TextUtils.isEmpty(str3)) {
            this.c2 = false;
            return;
        }
        this.e2 = a.l("(function(){if(document.getElementById('sb_cln_style')){return '", str, "';}else{return 0;}})();");
        boolean z3 = this.d2;
        this.d2 = false;
        this.g2 = z3;
        this.h2 = str;
        this.i2 = str2;
        this.j2 = str3;
        this.k2 = z;
        this.l2 = z2;
        Handler handler = this.f;
        if (handler == null) {
            return;
        }
        handler.post(new AnonymousClass24());
    }

    public final void M(String str, String str2) {
        this.G = PrefWeb.M;
        this.H = PrefWeb.N;
        if (MainApp.L1 && !"file:///android_asset/shortcut.html".equals(str)) {
            StringBuilder sb = new StringBuilder("(function(){{var edk=document.getElementById('sb_dark_style');if(edk){document.head.removeChild(edk);}}");
            String A0 = MainUtil.A0(str, str2, true, true);
            if (!TextUtils.isEmpty(A0)) {
                sb.append(A0);
            }
            sb.append("})();");
            MainUtil.I(this, sb.toString(), true);
        }
    }

    public final void N(String str, String str2, String str3) {
        try {
            if (!URLUtil.isNetworkUrl(str2)) {
                if (URLUtil.isNetworkUrl(str3)) {
                    str2 = str3;
                } else {
                    return;
                }
            }
            ArrayList arrayList = this.g0;
            if (arrayList != null && !arrayList.isEmpty()) {
                ArrayList arrayList2 = this.g0;
                int size = arrayList2.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    String str4 = (String) obj;
                    if (str4 != null && str4.contains(str)) {
                        if (this.i0 != null && i < this.g0.size()) {
                            this.i0.set(i, str2);
                        }
                        return;
                    }
                    i++;
                }
            }
        } catch (Exception unused) {
        }
    }

    public final boolean O(String str, String str2, String str3, String str4) {
        if (str2 != null) {
            try {
                if (u(this.e0, str)) {
                    this.g0 = null;
                    this.h0 = null;
                    this.i0 = null;
                    this.j0 = null;
                    this.k0 = null;
                    this.m0 = false;
                    this.n0 = false;
                    this.o0 = 0;
                }
                this.e0 = str;
                this.f0 = str2;
                String J1 = MainUtil.J1(str, true);
                if (TextUtils.isEmpty(J1)) {
                    this.g0 = null;
                    this.h0 = null;
                    this.i0 = null;
                    this.j0 = null;
                    this.k0 = null;
                    this.m0 = false;
                    this.n0 = false;
                    this.o0 = 0;
                    return false;
                }
                if ("vid_dummy".equals(str2)) {
                    this.m0 = true;
                } else if (str2.contains(".m3u8")) {
                    this.n0 = true;
                }
                if (J1.endsWith("facebook.com")) {
                    ArrayList arrayList = new ArrayList();
                    this.g0 = arrayList;
                    arrayList.add(str2);
                    this.h0 = null;
                    this.i0 = null;
                    this.j0 = null;
                    this.k0 = null;
                    this.o0 = 1;
                    return true;
                }
                if (str3 == null) {
                    str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (str4 == null) {
                    str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                if (this.h0 == null) {
                    this.h0 = new ArrayList();
                }
                if (this.i0 == null) {
                    this.i0 = new ArrayList();
                }
                ArrayList arrayList2 = this.g0;
                if (arrayList2 == null) {
                    ArrayList arrayList3 = new ArrayList();
                    this.g0 = arrayList3;
                    arrayList3.add(str2);
                    this.h0.add(str3);
                    this.i0.add(str4);
                    this.j0 = null;
                    this.k0 = null;
                    this.o0 = 1;
                    if (TextUtils.isEmpty(str4)) {
                        MainUtil.A7(this, str2, J1);
                        return true;
                    }
                } else if (arrayList2.size() == 0) {
                    this.g0.add(str2);
                    this.h0.add(str3);
                    this.i0.add(str4);
                    this.o0 = 1;
                    if (TextUtils.isEmpty(str4)) {
                        MainUtil.A7(this, str2, J1);
                        return true;
                    }
                } else {
                    int indexOf = this.g0.indexOf(str2);
                    if (indexOf != -1) {
                        if (!TextUtils.isEmpty(str3) && indexOf < this.h0.size()) {
                            this.h0.set(indexOf, str3);
                        }
                        if (!TextUtils.isEmpty(str4) && indexOf < this.i0.size()) {
                            this.i0.set(indexOf, str4);
                            return false;
                        }
                    } else {
                        int size = this.g0.size();
                        if (size >= 50) {
                            this.g0.remove(0);
                            if (this.h0.size() > 0) {
                                this.h0.remove(0);
                            }
                            if (this.i0.size() > 0) {
                                this.i0.remove(0);
                            }
                        }
                        this.g0.add(str2);
                        this.h0.add(str3);
                        this.i0.add(str4);
                        this.o0 = this.g0.size();
                        if (TextUtils.isEmpty(str4) && (size < 5 || J1.endsWith("pornhub.com"))) {
                            MainUtil.A7(this, str2, J1);
                        }
                    }
                }
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public final void P(String str, String str2) {
        this.b0 = str;
        this.c0 = str2;
        if (TextUtils.isEmpty(str) && MainUtil.U5(str2)) {
            this.b0 = MainUtil.X2(str2);
        }
    }

    public final void Q() {
        float f;
        int i;
        if (this.K0 != null && this.L0 != null && this.M0 != null) {
            int width = getWidth();
            if (width == 0) {
                this.J0 = 0;
                return;
            }
            if (this.h) {
                f = this.D0;
            } else {
                f = width - this.D0;
            }
            int i2 = (int) ((f / width) * 161.0f);
            this.J0 = i2;
            if (i2 != 0) {
                if (MainApp.L1) {
                    i = -16777216;
                } else {
                    i = -1;
                }
                int wallColor = getWallColor();
                int i3 = this.J0 << 24;
                if (this.N0 != i) {
                    this.N0 = i;
                    this.K0.setColor(i);
                }
                if (this.O0 != wallColor) {
                    this.O0 = wallColor;
                    if (wallColor != 0) {
                        this.L0.setColor(wallColor);
                    }
                }
                if (this.P0 != i3) {
                    this.P0 = i3;
                    this.M0.setColor(i3);
                }
            }
        }
    }

    public final void R(String str, boolean z) {
        if (this.f19338c) {
            if (!MainUtil.q5(this.Z1, str)) {
                this.Z1 = str;
                MainUtil.x7(this);
                return;
            }
            if (z) {
                this.a2 = 0;
            } else {
                int i = this.a2 + 1;
                this.a2 = i;
                if (i > 3) {
                    return;
                }
            }
            MainUtil.x7(this);
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            Runnable runnable = this.b2;
            handler.removeCallbacks(runnable);
            this.f.postDelayed(runnable, 400L);
        }
    }

    public final void S() {
        if (this.m) {
            this.m = false;
            this.n = true;
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.17
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView.this.stopLoading();
                }
            });
        }
    }

    public final void T(int i, int i2) {
        this.z = i;
        if (i == 0) {
            i2 = 0;
        }
        this.A = i2;
    }

    public final void U(String str, String str2) {
        WebHtmlListener webHtmlListener = this.x;
        if (webHtmlListener != null) {
            webHtmlListener.a(str, str2);
        }
    }

    public final void V(WebNestFrame webNestFrame, long j, String str, WebBundleListener webBundleListener) {
        Bundle webBundle;
        if (this.E2) {
            if (webBundleListener != null) {
                webBundleListener.a();
                return;
            }
            return;
        }
        this.E2 = true;
        if (this.f19338c && webNestFrame != null && webNestFrame.f19303c) {
            if (!TextUtils.isEmpty(str) && str.startsWith("file:///")) {
                webBundle = null;
            } else {
                webBundle = getWebBundle();
            }
            this.F2 = webNestFrame;
            this.G2 = j;
            this.H2 = str;
            this.I2 = webBundle;
            this.J2 = webBundleListener;
            J(new Runnable() { // from class: com.mycompany.app.web.WebNestView.33
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView webNestView = WebNestView.this;
                    WebNestFrame webNestFrame2 = webNestView.F2;
                    long j2 = webNestView.G2;
                    String str2 = webNestView.H2;
                    Bundle bundle = webNestView.I2;
                    WebBundleListener webBundleListener2 = webNestView.J2;
                    String str3 = null;
                    webNestView.F2 = null;
                    webNestView.G2 = 0L;
                    webNestView.H2 = null;
                    webNestView.I2 = null;
                    webNestView.J2 = null;
                    if (webNestFrame2 != null) {
                        str3 = webNestFrame2.getListToStr();
                    }
                    DbTabState.f(webNestView.getContext(), j2, str2, bundle, str3);
                    if (webBundleListener2 != null) {
                        webBundleListener2.a();
                    }
                    webNestView.E2 = false;
                }
            });
            return;
        }
        if (webBundleListener != null) {
            webBundleListener.a();
        }
        this.E2 = false;
    }

    public final void W(boolean z) {
        this.a1 = z;
        if (!z) {
            H();
            return;
        }
        I();
        G(null);
        this.z = 0;
        this.A = 0;
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.E();
            return;
        }
        Handler handler = this.f;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.5
            @Override // java.lang.Runnable
            public final void run() {
                final WebNestView webNestView = WebNestView.this;
                if (!webNestView.a1) {
                    webNestView.H();
                    return;
                }
                if (webNestView.Z0 == null && webNestView.C1 == null) {
                    webNestView.C1 = new QuickView(webNestView.getContext());
                    Handler handler2 = webNestView.f;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.6
                        @Override // java.lang.Runnable
                        public final void run() {
                            final WebNestView webNestView2 = WebNestView.this;
                            QuickView quickView2 = webNestView2.C1;
                            webNestView2.C1 = null;
                            if (!webNestView2.a1) {
                                webNestView2.H();
                                return;
                            }
                            if (webNestView2.Z0 == null && quickView2 != null) {
                                webNestView2.Z0 = quickView2;
                                QuickView.QuickViewListener quickViewListener = new QuickView.QuickViewListener() { // from class: com.mycompany.app.web.WebNestView.7
                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final boolean a() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener == null) {
                                            return false;
                                        }
                                        return webQuickListener.a();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final boolean b() {
                                        WebNestView webNestView3 = WebNestView.this;
                                        WebQuickListener webQuickListener = webNestView3.v;
                                        if (webQuickListener == null) {
                                            return MainUtil.N5(webNestView3.getContext());
                                        }
                                        return webQuickListener.b();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void c(QuickAdapter.QuickItem quickItem, boolean z2) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.c(quickItem, z2);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final boolean d() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener == null) {
                                            return false;
                                        }
                                        return webQuickListener.d();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void e(QuickAdapter.QuickItem quickItem) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.e(quickItem);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final MyWebBody f() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener == null) {
                                            return null;
                                        }
                                        return webQuickListener.f();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final boolean g(float f, float f2, int i) {
                                        WebNestView webNestView3 = WebNestView.this;
                                        WebViewListener webViewListener = webNestView3.u;
                                        if (webViewListener == null || !webViewListener.d()) {
                                            return false;
                                        }
                                        return webNestView3.u.g(f, f2, i);
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final int h() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener == null) {
                                            return 0;
                                        }
                                        return webQuickListener.h();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void i(boolean z2) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.i(z2);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void j() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.j();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void k() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.k();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void l() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.l();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void m(QuickAdapter.QuickItem quickItem) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.m(quickItem);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void n(List list) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.n(list);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void o(QuickAdapter.QuickItem quickItem, int i) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.o(quickItem, i);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void p(int i, int i2, int i3, String str, int i4) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.p(i, i2, i3, str, i4);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final boolean q() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener == null) {
                                            return false;
                                        }
                                        return webQuickListener.q();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void r() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.r();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void s(View view) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.s(view);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void t(int i, String str) {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.t(i, str);
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void u() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.u();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void v() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.v();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void w() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.w();
                                        }
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final boolean x() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener == null) {
                                            return false;
                                        }
                                        return webQuickListener.x();
                                    }

                                    @Override // com.mycompany.app.quick.QuickView.QuickViewListener
                                    public final void y() {
                                        WebQuickListener webQuickListener = WebNestView.this.v;
                                        if (webQuickListener != null) {
                                            webQuickListener.y();
                                        }
                                    }
                                };
                                quickView2.g = true;
                                quickView2.i = quickViewListener;
                                webNestView2.addView(quickView2, -1, -1);
                                Handler handler3 = webNestView2.f;
                                if (handler3 == null) {
                                    return;
                                }
                                handler3.post(new AnonymousClass8());
                            }
                        }
                    });
                }
            }
        });
    }

    public final void X(SslErrorHandler sslErrorHandler, SslError sslError) {
        WebSslView webSslView = this.b1;
        if (webSslView == null) {
            return;
        }
        SslErrorHandler sslErrorHandler2 = webSslView.m;
        if (sslErrorHandler2 != null) {
            sslErrorHandler2.cancel();
        }
        webSslView.m = sslErrorHandler;
        webSslView.n = sslError;
        webSslView.b();
        this.b1.c();
        this.b1.setVisibility(0);
    }

    @Override // android.webkit.WebView, android.view.View
    public final int computeVerticalScrollExtent() {
        int computeVerticalScrollExtent = super.computeVerticalScrollExtent();
        this.X0 = computeVerticalScrollExtent;
        return computeVerticalScrollExtent;
    }

    @Override // android.webkit.WebView, android.view.View
    public final int computeVerticalScrollOffset() {
        return super.computeVerticalScrollOffset();
    }

    @Override // android.webkit.WebView, android.view.View
    public final int computeVerticalScrollRange() {
        int computeVerticalScrollRange = super.computeVerticalScrollRange();
        this.Y0 = computeVerticalScrollRange;
        if (this.V1 != 4) {
            if (computeVerticalScrollRange > getHeight()) {
                setPageState(4);
            } else {
                setPageState(2);
            }
        }
        return this.Y0;
    }

    public final void d(String str) {
        try {
            if (this.g0 != null && !TextUtils.isEmpty(str)) {
                ArrayList arrayList = this.k0;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList();
                    this.k0 = arrayList2;
                    arrayList2.add(str);
                } else if (!arrayList.contains(str)) {
                    this.k0.add(str);
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.webkit.WebView
    public final void destroy() {
        if (!this.f19338c) {
            return;
        }
        this.f19338c = false;
        MainUtil.R6(this.f);
        this.f = null;
        removeAllViewsInLayout();
        super.destroy();
        this.w = null;
        this.x = null;
        this.y = null;
        ValueAnimator valueAnimator = this.F0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.F0 = null;
        }
        E();
        I();
        G(null);
        this.a1 = false;
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.y();
            this.Z0 = null;
        }
        this.t = null;
        this.u = null;
        this.v = null;
        this.T1 = null;
        this.R = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.e0 = null;
        this.f0 = null;
        this.g0 = null;
        this.h0 = null;
        this.i0 = null;
        this.j0 = null;
        this.k0 = null;
        this.l0 = null;
        this.r0 = null;
        this.B0 = null;
        this.K0 = null;
        this.L0 = null;
        this.M0 = null;
        this.i1 = null;
        this.j1 = null;
        this.s1 = null;
        this.t1 = null;
        this.u1 = null;
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f19338c && !this.l) {
            this.I0 = true;
            if (this.L0 != null && this.M0 != null) {
                if (this.D0 > 0.0f) {
                    if (!y()) {
                        super.dispatchDraw(canvas);
                        this.I0 = false;
                        return;
                    }
                    if (this.J0 == 0) {
                        this.I0 = false;
                        return;
                    }
                    int width = getWidth();
                    if (width != 0) {
                        float f = width;
                        if (this.D0 < f) {
                            int height = getHeight();
                            int scrollX = getScrollX();
                            float f2 = scrollX;
                            float scrollY = getScrollY();
                            canvas.translate(f2, scrollY);
                            if (this.h) {
                                if (this.O0 != 0) {
                                    canvas.drawRect(0.0f, 0.0f, this.D0, height, this.L0);
                                }
                                k(canvas);
                                float f3 = this.D0 - f;
                                canvas.translate(f3 - f2, -r9);
                                super.dispatchDraw(canvas);
                                canvas.translate(f2 - f3, scrollY);
                                canvas.drawRect(this.D0, 0.0f, f, height, this.M0);
                            } else {
                                if (this.O0 != 0) {
                                    canvas.drawRect(this.D0, 0.0f, f, height, this.L0);
                                }
                                k(canvas);
                                float f4 = this.D0;
                                canvas.translate(f4 - f2, -r9);
                                super.dispatchDraw(canvas);
                                canvas.translate(f2 - f4, scrollY);
                                canvas.drawRect(0.0f, 0.0f, this.D0, height, this.M0);
                            }
                            this.I0 = false;
                            return;
                        }
                    }
                    this.I0 = false;
                    return;
                }
                if (this.n1) {
                    k(canvas);
                    E();
                } else if (this.G0) {
                    k(canvas);
                } else {
                    E();
                }
                super.dispatchDraw(canvas);
                this.I0 = false;
                return;
            }
            if (this.n1) {
                k(canvas);
                E();
            } else if (this.G0) {
                k(canvas);
            } else {
                E();
            }
            super.dispatchDraw(canvas);
            this.I0 = false;
        }
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.c(iArr, iArr2, i, i2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.V0 = false;
            this.Q0 = false;
            this.R0 = false;
            this.o1 = false;
            if (this.G0 || this.n1) {
                this.G0 = false;
                this.n1 = false;
                E();
                if (MainUtil.C5(this.a1)) {
                    invalidate();
                }
            }
        } else if (actionMasked == 2 && this.S0) {
            motionEvent.setAction(3);
        }
        this.S0 = false;
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        if (this.f19338c && !this.l) {
            super.draw(canvas);
        }
    }

    public final void e(String str, boolean z) {
        if (!z) {
            try {
                if (this.g0 == null) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = this.j0;
            if (arrayList == null) {
                ArrayList arrayList2 = new ArrayList();
                this.j0 = arrayList2;
                arrayList2.add(str);
            } else if (!arrayList.contains(str)) {
                this.j0.add(str);
            }
        }
    }

    @Override // android.webkit.WebView
    public final void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        boolean z;
        if (this.f19338c) {
            MainWebDestroy mainWebDestroy = this.u1;
            if (mainWebDestroy != null) {
                mainWebDestroy.h = true;
            }
            if (mainWebDestroy == null) {
                z = false;
            } else {
                z = mainWebDestroy.f;
            }
            if (!z) {
                super.evaluateJavascript(str, valueCallback);
                return;
            }
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.4
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView.b(WebNestView.this, str, valueCallback);
                }
            });
        }
    }

    public final void f(String str) {
        if (!PrefWeb.o && PrefWeb.q == 0) {
            this.r0 = null;
            this.s0 = 0;
            this.t0 = 0;
            return;
        }
        String str2 = this.r0;
        if (!TextUtils.isEmpty(str2) && MainUtil.q5(str2, str)) {
            if (!PrefWeb.o) {
                this.s0 = 0;
            }
            if (PrefWeb.q == 0) {
                this.t0 = 0;
            }
        } else {
            this.s0 = 0;
            this.t0 = 0;
        }
        this.r0 = str;
    }

    public final void g() {
        if (!this.o) {
            setWebViewClient(new WebViewClient());
        }
    }

    public WebNestFrame getBackFrame() {
        return this.v0;
    }

    public String getBackHost() {
        return this.x0;
    }

    public int getBackIndex() {
        return this.y0;
    }

    public String getBackUrl() {
        return this.w0;
    }

    public long getBlankId() {
        return this.A0;
    }

    public int getBlockedCount() {
        if (y()) {
            this.r0 = null;
            this.s0 = 0;
            this.t0 = 0;
            return 0;
        }
        return this.s0 + this.t0;
    }

    public String getBookUrl() {
        return this.d0;
    }

    public List<String> getDownFail() {
        return this.k0;
    }

    public List<String> getDownList() {
        return this.g0;
    }

    public List<String> getDownPoster() {
        return this.i0;
    }

    public List<String> getDownRef() {
        return this.h0;
    }

    public String getDownUrl() {
        return this.e0;
    }

    public String getDownVideo() {
        return this.f0;
    }

    public List<String> getDownloaded() {
        return this.j0;
    }

    @Override // android.webkit.WebView
    public Bitmap getFavicon() {
        if (!this.a1) {
            String O1 = MainUtil.O1(getUrl());
            getContext();
            Bitmap n4 = MainUtil.n4(O1);
            if (MainUtil.f6(n4)) {
                return n4;
            }
            if (this.B) {
                return super.getFavicon();
            }
            return null;
        }
        return null;
    }

    public String getFileUrl() {
        return this.b0;
    }

    public int getLongHeight() {
        if (getHeight() == 0) {
            return 0;
        }
        return (int) MainUtil.K6(getContext(), (r0 / 2) + r0);
    }

    public String getPageUrl() {
        if (this.z0) {
            return this.B0;
        }
        if (!TextUtils.isEmpty(this.C0)) {
            return this.C0;
        }
        return this.a0;
    }

    public float getPageX() {
        return this.D0;
    }

    public List<WebViewActivity.FaceItem> getPubList() {
        return this.l0;
    }

    public int getScrollTop() {
        return this.W0;
    }

    public int getThemeColor() {
        int i = PrefWeb.O;
        if (i == 0) {
            return 0;
        }
        if (i == 2) {
            int i2 = PrefWeb.Q;
            if (i2 != 0) {
                return i2;
            }
            MainUtil.m7();
            return PrefWeb.Q;
        }
        return this.z;
    }

    public int getThemeLight() {
        int i = PrefWeb.O;
        if (i == 0) {
            return 0;
        }
        if (i == 2) {
            int i2 = PrefWeb.R;
            if (i2 != 0) {
                return i2;
            }
            MainUtil.m7();
            return PrefWeb.R;
        }
        if (this.z == 0) {
            this.A = 0;
        }
        return this.A;
    }

    @Override // android.webkit.WebView
    public String getTitle() {
        if ("file:///android_asset/shortcut.html".equals(getUrl())) {
            return "Soul";
        }
        String title = super.getTitle();
        if ("shortcut.html".equals(title)) {
            return null;
        }
        return title;
    }

    public int getTransPos() {
        QuickView quickView = this.Z0;
        if (quickView == null) {
            return 0;
        }
        return quickView.getTransPos();
    }

    @Override // android.webkit.WebView
    public String getUrl() {
        String url = super.getUrl();
        this.a0 = url;
        return url;
    }

    public String getValidPageUrl() {
        return q(getPageUrl());
    }

    @Override // android.webkit.WebView
    public final void goBack() {
        this.r0 = null;
        this.s0 = 0;
        this.t0 = 0;
        super.goBack();
    }

    @Override // android.webkit.WebView
    public final void goForward() {
        this.r0 = null;
        this.s0 = 0;
        this.t0 = 0;
        super.goForward();
    }

    public final String h(String str, boolean z) {
        int length;
        int i;
        int indexOf;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        if (z) {
            if (!TextUtils.isEmpty(this.b0) && !this.b0.startsWith("file:///offline")) {
                str = this.b0;
            }
            if (MainUtil.U5(str) && str.startsWith("file:///data/")) {
                String substring = str.substring(7);
                if (!TextUtils.isEmpty(substring) && !new File(substring).exists()) {
                    str = "file:///expired";
                }
            }
        }
        if (str.startsWith("https://gdriveplayer")) {
            return a.l("data:text/html;charset=utf-8,<?xml version=\"1.0\"encoding=\"UTF-8\"?><html><head><style>html{background-color:black;}</style></head><body><iframe src=\"", str, "\"frameborder=\"0\"width=\"100%\"height=\"100%\"allowfullscreen></iframe></body></html>");
        }
        if (B()) {
            if (str.startsWith("http")) {
                if (str.startsWith("://m.", 4)) {
                    length = str.length();
                    i = 9;
                } else if (str.startsWith("s://m.", 4)) {
                    length = str.length();
                    i = 10;
                }
                if (length > i && ((indexOf = str.indexOf(47, i)) <= i || indexOf >= length - 2)) {
                    StringBuilder sb = new StringBuilder();
                    if (i == 9) {
                        sb.append("http://");
                    } else {
                        sb.append("https://");
                    }
                    sb.append(str.substring(i));
                    return sb.toString();
                }
            }
        } else if (str.startsWith("https://www.youtube.com")) {
            return "https://m." + str.substring(12);
        }
        return str;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.f(0);
    }

    public final void i(String str, String str2, boolean z) {
        if (this.V) {
            if (DataBookJava.l(getContext()).n(str, str2)) {
                setEnableJs(false);
                if (z) {
                    reload();
                    return;
                }
                return;
            }
            return;
        }
        if (!DataBookJava.l(getContext()).n(str, str2)) {
            setEnableJs(true);
            if (z) {
                reload();
            }
        }
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.d;
    }

    public final void j(boolean z, int i, WebStyleListener webStyleListener) {
        if (z) {
            this.Q1 = 10;
        }
        this.S1 = i;
        this.T1 = webStyleListener;
        if (!this.R1) {
            this.R1 = true;
            int i2 = this.Q1;
            if (i2 <= 0) {
                this.R1 = false;
                return;
            }
            this.Q1 = i2 - 1;
            if (!this.f19338c) {
                this.Q1 = 0;
                this.R1 = false;
            } else {
                Handler handler = this.f;
                if (handler == null) {
                    return;
                }
                handler.post(new AnonymousClass21());
            }
        }
    }

    public final void k(Canvas canvas) {
        Object parent;
        boolean z;
        if (MainUtil.C5(this.a1) && canvas != null) {
            int i = MainActivity.b1;
            int i2 = MainActivity.c1;
            if (i != 0 && i2 != 0) {
                Paint paint = this.l1;
                if (paint == null) {
                    paint = new Paint();
                    this.l1 = paint;
                }
                Bitmap bitmap = this.k1;
                if (!MainUtil.f6(bitmap)) {
                    if (i > i2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.m1 = z;
                    bitmap = MainUtil.l4(getContext(), this.m1);
                    this.k1 = bitmap;
                    if (!MainUtil.f6(bitmap)) {
                        J(new Runnable() { // from class: com.mycompany.app.web.WebNestView.34
                            @Override // java.lang.Runnable
                            public final void run() {
                                WebNestView webNestView = WebNestView.this;
                                webNestView.k1 = MainUtil.m4(webNestView.getContext(), webNestView.m1);
                            }
                        });
                        return;
                    }
                }
                ViewParent parent2 = getParent();
                if (parent2 != null && (parent = parent2.getParent()) != null) {
                    float f = this.D0;
                    if (f > 0.0f) {
                        if (this.h) {
                            f -= getWidth();
                        }
                    } else {
                        f = 0.0f;
                    }
                    float width = i / bitmap.getWidth();
                    float height = i2 / bitmap.getHeight();
                    canvas.save();
                    if (f > 0.0f) {
                        canvas.clipRect(f, 0.0f, getWidth(), getHeight());
                    }
                    int i3 = PrefTts.F;
                    if (i3 != 0 && i > i2) {
                        f -= i3;
                    }
                    if (MainConst.d) {
                        f -= MainActivity.d1;
                    }
                    float translationY = 0.0f - ((View) parent).getTranslationY();
                    if (PrefWeb.t) {
                        translationY -= PrefMain.u;
                    }
                    if (PrefWeb.v) {
                        translationY -= MainUtil.H3();
                    }
                    if (PrefTts.H) {
                        translationY -= WebViewActivity.Io;
                    }
                    canvas.translate(f, translationY);
                    canvas.scale(width, height);
                    try {
                        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
                    } catch (Exception unused) {
                    }
                    canvas.restore();
                }
            }
        }
    }

    public final void l(final int i, final boolean z) {
        Handler handler;
        if (this.w == null || (handler = this.f) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.20
            @Override // java.lang.Runnable
            public final void run() {
                WebAnimListener webAnimListener = WebNestView.this.w;
                if (webAnimListener != null) {
                    webAnimListener.a(i, z);
                }
            }
        });
    }

    @Override // android.webkit.WebView
    public final void loadUrl(String str) {
        z(str, null);
    }

    public final String m(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (TextUtils.isEmpty(this.q1)) {
            try {
                this.q1 = Integer.toHexString(System.identityHashCode(this));
            } catch (Exception unused) {
            }
            if (TextUtils.isEmpty(this.q1)) {
                return str;
            }
        }
        StringBuilder t = a.t(str);
        t.append(this.q1);
        return t.toString();
    }

    public final int n(String str) {
        int i;
        String C;
        ArrayList arrayList;
        ArrayList arrayList2;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            arrayList2 = this.g0;
        } catch (Exception unused) {
        }
        if (arrayList2 != null && !arrayList2.isEmpty()) {
            i = arrayList2.indexOf(str);
            if (i != -1 || !URLUtil.isNetworkUrl(str)) {
                return i;
            }
            C = a.C("m3fake:", str);
            try {
                arrayList = this.g0;
                if (arrayList == null && !arrayList.isEmpty()) {
                    return arrayList.indexOf(C);
                }
                return -1;
            } catch (Exception unused2) {
                return -1;
            }
        }
        i = -1;
        if (i != -1) {
            C = a.C("m3fake:", str);
            arrayList = this.g0;
            if (arrayList == null) {
                return -1;
            }
            return arrayList.indexOf(C);
        }
        return i;
    }

    public final String o(int i) {
        try {
            ArrayList arrayList = this.i0;
            if (arrayList != null && !arrayList.isEmpty() && i >= 0 && i < arrayList.size()) {
                return (String) arrayList.get(i);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onCheckIsTextEditor() {
        try {
            return super.onCheckIsTextEditor();
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0045, code lost:
    
        if (r3 != false) goto L33;
     */
    @Override // android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo r8) {
        /*
            r7 = this;
            android.view.inputmethod.InputConnection r0 = super.onCreateInputConnection(r8)     // Catch: java.lang.Exception -> L5
            goto L6
        L5:
            r0 = 0
        L6:
            if (r8 != 0) goto L9
            goto L52
        L9:
            boolean r1 = com.mycompany.app.main.MainUtil.W5()     // Catch: java.lang.Exception -> L52
            if (r1 == 0) goto L1c
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Exception -> L52
            r2 = 26
            if (r1 < r2) goto L1c
            int r1 = r8.imeOptions     // Catch: java.lang.Exception -> L52
            r2 = 16777216(0x1000000, float:2.3509887E-38)
            r1 = r1 | r2
            r8.imeOptions = r1     // Catch: java.lang.Exception -> L52
        L1c:
            int r1 = r8.imeOptions     // Catch: java.lang.Exception -> L52
            r2 = r1 & 2
            r3 = 0
            r4 = 1
            r5 = 2
            if (r2 != r5) goto L27
            r2 = r4
            goto L28
        L27:
            r2 = r3
        L28:
            r5 = 3
            if (r2 != 0) goto L4d
            r2 = r1 & 3
            if (r2 != r5) goto L31
            r2 = r4
            goto L32
        L31:
            r2 = r3
        L32:
            if (r2 == 0) goto L35
            goto L4d
        L35:
            r2 = r1 & 5
            r6 = 5
            if (r2 != r6) goto L3c
            r2 = r4
            goto L3d
        L3c:
            r2 = r3
        L3d:
            if (r2 != 0) goto L47
            r2 = r1 & 4
            r6 = 4
            if (r2 != r6) goto L45
            r3 = r4
        L45:
            if (r3 == 0) goto L52
        L47:
            r1 = r1 & (-8)
            r1 = r1 | r5
            r8.imeOptions = r1     // Catch: java.lang.Exception -> L52
            goto L52
        L4d:
            r1 = r1 & (-8)
            r1 = r1 | r5
            r8.imeOptions = r1     // Catch: java.lang.Exception -> L52
        L52:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebNestView.onCreateInputConnection(android.view.inputmethod.EditorInfo):android.view.inputmethod.InputConnection");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ValueAnimator valueAnimator = this.F0;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.F0 = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        WebCrashView webCrashView;
        WebSslView webSslView;
        if (this.f19338c && !this.l) {
            this.H0 = true;
            if (this.c1 && (webSslView = this.b1) != null) {
                webSslView.setTranslationY(getScrollY());
            }
            if (this.e1 && (webCrashView = this.d1) != null) {
                webCrashView.setTranslationY(getScrollY());
            }
            int i = -1;
            if (this.K0 != null && this.M0 != null) {
                if (this.D0 > 0.0f) {
                    if (y()) {
                        super.onDraw(canvas);
                        this.H0 = false;
                        return;
                    }
                    if (this.J0 == 0) {
                        this.H0 = false;
                        return;
                    }
                    int width = getWidth();
                    if (width != 0) {
                        float f = width;
                        if (this.D0 < f) {
                            int height = getHeight();
                            int scrollX = getScrollX();
                            float f2 = scrollX;
                            float scrollY = getScrollY();
                            canvas.translate(f2, scrollY);
                            if (this.h) {
                                float f3 = height;
                                canvas.drawRect(0.0f, 0.0f, this.D0, f3, this.K0);
                                float f4 = this.D0 - f;
                                canvas.translate(f4 - f2, -r8);
                                super.onDraw(canvas);
                                canvas.translate(f2 - f4, scrollY);
                                canvas.drawRect(this.D0, 0.0f, f, f3, this.M0);
                            } else {
                                float f5 = height;
                                canvas.drawRect(this.D0, 0.0f, f, f5, this.K0);
                                float f6 = this.D0;
                                canvas.translate(f6 - f2, -r8);
                                super.onDraw(canvas);
                                canvas.translate(f2 - f6, scrollY);
                                canvas.drawRect(0.0f, 0.0f, this.D0, f5, this.M0);
                            }
                            this.H0 = false;
                            return;
                        }
                    }
                    this.H0 = false;
                    return;
                }
                if ((this.G0 || this.o1) && !y()) {
                    if (MainApp.L1) {
                        i = -16777216;
                    }
                    canvas.drawColor(i);
                }
                super.onDraw(canvas);
                this.H0 = false;
                return;
            }
            if ((this.G0 || this.o1) && !y()) {
                if (MainApp.L1) {
                    i = -16777216;
                }
                canvas.drawColor(i);
            }
            super.onDraw(canvas);
            this.H0 = false;
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        this.Q0 = z;
        this.R0 = z2;
        super.onOverScrolled(i, i2, z, z2);
    }

    @Override // android.webkit.WebView
    public final void onPause() {
        if (!this.f19338c || this.i == 2) {
            return;
        }
        if (this.f1) {
            return;
        }
        this.j = false;
        this.i = 2;
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.h = true;
        }
        this.n1 = MainUtil.C5(this.a1);
        this.o1 = !y();
        this.f1 = false;
        this.g1 = false;
        g();
        super.onPause();
        this.I = MainUtil.U4();
        this.J = PrefWeb.U;
        this.K = this.a1;
    }

    @Override // android.webkit.WebView
    public final void onResume() {
        int i;
        boolean z;
        if (this.f19338c && (i = this.i) != 1) {
            if (i == 2) {
                z = true;
            } else {
                z = false;
            }
            this.j = z;
            this.i = 1;
            QuickView quickView = this.Z0;
            if (quickView != null) {
                quickView.h = false;
            }
            this.Q1 = 0;
            this.R1 = false;
            this.D0 = 0.0f;
            this.J0 = 0;
            this.n1 = MainUtil.C5(this.a1);
            this.o1 = !y();
            this.u0 = false;
            this.v0 = null;
            this.w0 = null;
            this.x0 = null;
            this.f1 = false;
            this.g1 = false;
            super.onResume();
            MainApp.I(getContext(), this);
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.1
                /* JADX WARN: Removed duplicated region for block: B:101:0x01c4  */
                /* JADX WARN: Removed duplicated region for block: B:106:0x01d0  */
                /* JADX WARN: Removed duplicated region for block: B:111:0x01ea A[ORIG_RETURN, RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:113:0x01eb  */
                /* JADX WARN: Removed duplicated region for block: B:116:0x01a5  */
                /* JADX WARN: Removed duplicated region for block: B:117:0x0173  */
                /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
                /* JADX WARN: Removed duplicated region for block: B:129:0x0157  */
                /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
                /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
                /* JADX WARN: Removed duplicated region for block: B:29:0x0088  */
                /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x009b  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x00a4  */
                /* JADX WARN: Removed duplicated region for block: B:45:0x00c6  */
                /* JADX WARN: Removed duplicated region for block: B:53:0x00e2  */
                /* JADX WARN: Removed duplicated region for block: B:63:0x0100  */
                /* JADX WARN: Removed duplicated region for block: B:68:0x0114  */
                /* JADX WARN: Removed duplicated region for block: B:79:0x0171  */
                /* JADX WARN: Removed duplicated region for block: B:82:0x017e  */
                /* JADX WARN: Removed duplicated region for block: B:85:0x0189  */
                /* JADX WARN: Removed duplicated region for block: B:88:0x0193  */
                /* JADX WARN: Removed duplicated region for block: B:97:0x01ae  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 500
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebNestView.AnonymousClass1.run():void");
                }
            });
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onScrollChanged(int i, int i2, int i3, int i4) {
        this.V0 = true;
        this.W0 = i2;
        super.onScrollChanged(i, i2, i3, i4);
        WebViewListener webViewListener = this.u;
        if (webViewListener != null) {
            webViewListener.c(i2);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        WebViewListener webViewListener;
        boolean z2;
        if (this.D0 > 0.0f) {
            return super.onTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        boolean z3 = false;
        if (actionMasked == 5) {
            this.T0 = true;
        } else if (actionMasked == 0 || actionMasked == 1 || actionMasked == 3) {
            this.T0 = false;
        }
        if (this.T0) {
            return super.onTouchEvent(motionEvent);
        }
        int round = Math.round(motionEvent.getY());
        if (actionMasked == 0) {
            this.s = 0;
            if (PrefWeb.t) {
                this.U0 = true;
            } else {
                if (round > MainApp.E1) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.U0 = z2;
            }
        }
        if (this.U0 && PrefZone.z) {
            if (this.V0 || this.V1 != 1) {
                z = false;
            } else {
                z = true;
            }
            if ((z || this.R0) && (webViewListener = this.u) != null && webViewListener.d() && ((z || this.W0 == 0) && this.u.g(motionEvent.getX(), round, actionMasked))) {
                motionEvent.setAction(3);
                return super.onTouchEvent(motionEvent);
            }
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, this.s);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else {
                    int i = this.p - round;
                    int[] iArr = this.r;
                    int[] iArr2 = this.q;
                    if (dispatchNestedPreScroll(0, i, iArr, iArr2)) {
                        i -= iArr[1];
                        this.p = round - iArr2[1];
                        obtain.offsetLocation(0.0f, -r3);
                        this.s += iArr2[1];
                    }
                    z3 = super.onTouchEvent(obtain);
                    if (dispatchNestedScroll(0, iArr2[1], 0, i, iArr2)) {
                        obtain.offsetLocation(0.0f, iArr2[1]);
                        int i2 = this.s;
                        int i3 = iArr2[1];
                        this.s = i2 + i3;
                        this.p -= i3;
                    }
                }
            }
            boolean onTouchEvent = super.onTouchEvent(obtain);
            stopNestedScroll();
            this.U0 = false;
            z3 = onTouchEvent;
        } else {
            z3 = super.onTouchEvent(obtain);
            this.p = round;
            startNestedScroll(2);
        }
        obtain.recycle();
        return z3;
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onWindowVisibilityChanged(int i) {
        if (this.f1 && i == 8) {
            this.g1 = true;
        } else {
            this.g1 = false;
            super.onWindowVisibilityChanged(i);
        }
    }

    public final String p(int i) {
        try {
            ArrayList arrayList = this.h0;
            if (arrayList != null && !arrayList.isEmpty() && i >= 0 && i < arrayList.size()) {
                return (String) arrayList.get(i);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.view.View
    public final boolean post(Runnable runnable) {
        if (!this.f19338c) {
            return false;
        }
        return super.post(runnable);
    }

    @Override // android.view.View
    public final boolean postDelayed(Runnable runnable, long j) {
        if (!this.f19338c) {
            return false;
        }
        return super.postDelayed(runnable, j);
    }

    public final String q(String str) {
        if (!MainUtil.U5(str)) {
            return str;
        }
        if (!TextUtils.isEmpty(this.b0)) {
            return this.b0;
        }
        return MainUtil.X2(str);
    }

    public final void r() {
        if (this.K0 == null) {
            Paint paint = new Paint();
            this.K0 = paint;
            paint.setStyle(Paint.Style.FILL);
        }
        if (this.L0 == null) {
            Paint paint2 = new Paint();
            this.L0 = paint2;
            paint2.setStyle(Paint.Style.FILL);
        }
        if (this.M0 == null) {
            Paint paint3 = new Paint();
            this.M0 = paint3;
            paint3.setStyle(Paint.Style.FILL);
        }
    }

    @Override // android.webkit.WebView
    public final void reload() {
        if (!this.f19338c) {
            return;
        }
        this.m = true;
        this.Z1 = null;
        MainWebDestroy mainWebDestroy = this.u1;
        if (mainWebDestroy != null) {
            mainWebDestroy.i = true;
        }
        super.reload();
    }

    public final void s() {
        E();
        if (Float.compare(this.D0, 0.0f) == 0) {
            return;
        }
        this.D0 = 0.0f;
        this.J0 = 0;
        invalidate();
    }

    public void setAddPage(boolean z) {
        if (this.D != z) {
            this.D = z;
            if (z) {
                clearHistory();
            }
        }
    }

    public void setAdsChanged(boolean z) {
        this.d2 = z;
    }

    public void setAdsRunning(boolean z) {
        this.c2 = z;
    }

    public void setAnimListener(WebAnimListener webAnimListener) {
        this.w = webAnimListener;
    }

    public void setBackListener(WebBackListener webBackListener) {
        this.y = webBackListener;
    }

    public void setBackPlay(boolean z) {
        if (this.f1 != z) {
            this.f1 = z;
            if (z) {
                this.g1 = false;
            } else if (this.g1) {
                this.g1 = false;
                super.onWindowVisibilityChanged(8);
            }
        }
    }

    public void setBackTab(boolean z) {
        this.u0 = z;
    }

    public void setBackUrl(String str) {
        this.w0 = str;
        this.x0 = MainUtil.I1(str, true);
    }

    public void setBlankPage(String str) {
        this.C0 = str;
    }

    public void setBookUrl(String str) {
        this.d0 = str;
    }

    public void setDarkUi(boolean z) {
        this.E = z;
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setColor(true);
        }
        WebSslView webSslView = this.b1;
        if (webSslView != null) {
            webSslView.a();
        }
        WebCrashView webCrashView = this.d1;
        if (webCrashView != null) {
            webCrashView.a();
        }
    }

    public void setDarkWeb(boolean z) {
        this.F = z;
        this.G = PrefWeb.M;
        this.H = PrefWeb.N;
        String url = getUrl();
        String J1 = MainUtil.J1(url, true);
        if (MainUtil.j5()) {
            MainUtil.i7(this, url, J1, z);
        } else {
            MainUtil.X7(getSettings(), z);
            if (MainUtil.g5(url, J1)) {
                MainUtil.i7(this, url, J1, z);
            }
        }
        if (y()) {
            this.z = 0;
            this.A = 0;
        }
        invalidate();
    }

    public void setDeskMode(boolean z) {
        if (PrefWeb.j) {
            this.C = true;
        } else {
            this.C = z;
        }
    }

    public void setDetached(boolean z) {
        this.l = z;
        if (z) {
            S();
        }
    }

    public void setDocChecked(String str) {
        this.r1 = m(str);
    }

    public void setDownNoti(boolean z) {
        this.p0 = z;
        this.q0 = !z;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void setEnableJs(boolean z) {
        this.V = z;
        getSettings().setJavaScriptEnabled(z);
    }

    public void setErrorView(boolean z) {
        int i;
        WebSslView webSslView = this.b1;
        int i2 = 4;
        if (webSslView != null) {
            this.c1 = z;
            if (z) {
                i = 0;
            } else {
                i = 4;
            }
            webSslView.setVisibility(i);
        }
        WebCrashView webCrashView = this.d1;
        if (webCrashView != null) {
            this.e1 = z;
            if (z) {
                i2 = 0;
            }
            webCrashView.setVisibility(i2);
        }
    }

    public void setHasIcon(boolean z) {
        this.B = z;
    }

    public void setHasSetting(boolean z) {
        this.g = z;
    }

    public void setHideImage(boolean z) {
        this.N = z;
        getSettings().setLoadsImagesAutomatically(!z);
    }

    public void setHtmlListener(WebHtmlListener webHtmlListener) {
        this.x = webHtmlListener;
    }

    public void setJsAdded(boolean z) {
        this.h1 = z;
    }

    public void setListener(WebViewListener webViewListener) {
        this.u = webViewListener;
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return;
        }
        nestedScrollingChildHelper.g(z);
    }

    public void setNewsPrepared(List<QuickAdapter.QuickItem> list) {
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setNewsPrepared(list);
        }
    }

    public void setNewsProgress(int i) {
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setNewsProgress(i);
        }
    }

    public void setNoAutofill(boolean z) {
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                setImportantForAutofill(8);
            } else if (z) {
                setImportantForAccessibility(4);
            }
        } catch (Exception unused) {
        }
    }

    public void setPageState(int i) {
        if (i > this.V1) {
            this.V1 = i;
        }
    }

    public void setPageX(float f) {
        boolean z;
        if (!this.G0) {
            z = true;
            this.G0 = true;
        } else {
            z = false;
        }
        if (this.h) {
            if (f <= 0.0f) {
                f = 0.1f;
            } else if (f >= getWidth()) {
                f = getWidth() - 0.1f;
            }
        }
        if (Float.compare(this.D0, f) == 0) {
            if (z && MainUtil.C5(this.a1)) {
                invalidate();
                return;
            }
            return;
        }
        this.D0 = f;
        r();
        Q();
        invalidate();
    }

    public void setPreRaster(boolean z) {
        this.O = z;
        getSettings().setOffscreenPreRaster(z);
    }

    public void setQuickControl(QuickControl quickControl) {
        if (quickControl != null) {
            quickControl.setQuickView(this.Z0);
        }
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setQuickControl(quickControl);
        }
    }

    public void setQuickEditMode(int i) {
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setQuickEditMode(i);
        }
    }

    public void setQuickListener(WebQuickListener webQuickListener) {
        this.v = webQuickListener;
    }

    public void setQuickSearch(boolean z) {
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setQuickSearch(z);
        }
    }

    public void setScrollPos(int i) {
        this.Q = i;
        if (i != 0) {
            setVerticalScrollBarEnabled(false);
        } else {
            setVerticalScrollBarEnabled(true);
        }
    }

    public void setTextSize(int i) {
        this.P = i;
        getSettings().setTextZoom(i);
    }

    public void setTransLoaded(boolean z) {
        QuickView quickView = this.Z0;
        if (quickView != null) {
            quickView.setTransLoaded(z);
        }
    }

    public void setUrlChanged(String str) {
        this.a0 = str;
        I();
        G(null);
        this.B = false;
    }

    public void setViewCookie(Context context) {
        MainApp.M(context);
        int i = 1;
        boolean l = MainApp.l(true);
        if (!l) {
            i = 2;
        }
        if (this.T == i) {
            return;
        }
        this.T = i;
        MainApp.O(context, this, l);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        ViewParent parent;
        setWebVisible(i);
        if (!this.n && i == 0 && getVisibility() != 0 && (parent = getParent()) != null && (parent instanceof WebNestFrame)) {
            WebNestFrame webNestFrame = (WebNestFrame) parent;
            if (!webNestFrame.a0) {
                webNestFrame.a0 = true;
                Handler handler = webNestFrame.f;
                if (handler != null) {
                    handler.post(new WebNestFrame.AnonymousClass2());
                }
            }
        }
        super.setVisibility(i);
    }

    public void setWebDestroy(MainWebDestroy mainWebDestroy) {
        this.u1 = mainWebDestroy;
    }

    public void setWebLoading(boolean z) {
        this.m = z;
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
        if (webViewClient == null) {
            webViewClient = new WebViewClient();
        }
        super.setWebViewClient(webViewClient);
        this.o = true;
    }

    public void setWebVisible(int i) {
        if (i != 0) {
            E();
        }
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return false;
        }
        return nestedScrollingChildHelper.h(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        NestedScrollingChildHelper nestedScrollingChildHelper = this.t;
        if (nestedScrollingChildHelper == null) {
            return;
        }
        nestedScrollingChildHelper.i(0);
    }

    public final WebClean t() {
        if (this.s1 == null) {
            this.s1 = MainApp.v(getContext(), false);
        }
        return this.s1;
    }

    public final boolean v() {
        if (this.f19338c && !this.l && !this.u0 && !this.z0 && TextUtils.isEmpty(this.C0)) {
            return false;
        }
        return true;
    }

    public final boolean w() {
        QuickView quickView = this.Z0;
        if (quickView == null || !this.a1 || quickView.q == null) {
            return false;
        }
        return true;
    }

    public final boolean x() {
        if (this.Q0 && !this.R0) {
            return true;
        }
        return false;
    }

    public final boolean y() {
        if (!this.a1 && !this.c1 && !this.e1) {
            return false;
        }
        return true;
    }

    public final void z(String str, String str2) {
        boolean z;
        if (this.f19338c) {
            boolean z2 = true;
            this.m = true;
            HashMap hashMap = null;
            this.Z1 = null;
            this.p1 = false;
            Context context = getContext();
            String Y2 = MainUtil.Y2(context, str);
            if (DataBookLink.m(context).l(Y2)) {
                this.O1 = Y2;
                J(new AnonymousClass19());
                return;
            }
            MainWebDestroy mainWebDestroy = this.u1;
            if (mainWebDestroy != null) {
                mainWebDestroy.i = true;
            }
            MainApp.M(context);
            if (Y2 != null && Y2.startsWith("chrome://crash")) {
                Y2 = "about:blank";
            }
            int i = PrefSecret.F;
            if (i == 1) {
                z = true;
            } else if (i == 2) {
                z = PrefSync.k;
            } else {
                z = false;
            }
            if (z) {
                hashMap = new HashMap();
                hashMap.put("DNT", "1");
            }
            int i2 = PrefSecret.G;
            if (i2 != 1) {
                if (i2 == 2) {
                    z2 = PrefSync.k;
                } else {
                    z2 = false;
                }
            }
            if (z2) {
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put("Sec-GPC", "1");
            }
            if (PrefPdf.q) {
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put("Save-Data", "on");
            }
            if (!TextUtils.isEmpty(str2) && !str2.startsWith("file:///")) {
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put("referer", str2);
            }
            this.M1 = Y2;
            this.N1 = hashMap;
            Handler handler = this.f;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.web.WebNestView.18
                @Override // java.lang.Runnable
                public final void run() {
                    WebNestView.c(WebNestView.this);
                }
            });
        }
    }
}
