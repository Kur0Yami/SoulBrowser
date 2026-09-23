package com.mycompany.app.web;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.ads.AdSize;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class WebLoadTask {
    public static WebLoadTask i;

    /* renamed from: a, reason: collision with root package name */
    public boolean f19284a;
    public WebView b;

    /* renamed from: c, reason: collision with root package name */
    public WebLoadTaskListener f19285c;
    public LoadTask d;
    public int e;
    public boolean f;
    public String g;
    public String h;

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public String g;
        public String h;
        public String i;
        public boolean j;
        public String k;
        public List l;
        public ArrayList m;
        public DataUrl.ImgCntItem n;
        public int o;
        public int p;
        public boolean q;
        public boolean r;
        public boolean s;
        public boolean t;

        /* JADX WARN: Type inference failed for: r2v5, types: [com.mycompany.app.data.DataUrl$ImgCntItem, java.lang.Object] */
        public LoadTask(WebLoadTask webLoadTask, String str, String str2) {
            WeakReference weakReference = new WeakReference(webLoadTask);
            this.e = weakReference;
            if (((WebLoadTask) weakReference.get()) == null) {
                return;
            }
            this.f = str;
            this.g = str2;
            this.l = new ArrayList();
            this.m = new ArrayList();
            this.n = new Object();
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x033d, code lost:
        
            if (r6 != null) goto L224;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x033f, code lost:
        
            r6 = new java.util.ArrayList();
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0344, code lost:
        
            r6.add(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x034c, code lost:
        
            if (r6 == null) goto L273;
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0352, code lost:
        
            if (r6.isEmpty() == false) goto L230;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0356, code lost:
        
            r0 = new java.util.ArrayList();
            r3 = r2.size();
            r7 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0360, code lost:
        
            if (r7 >= r3) goto L345;
         */
        /* JADX WARN: Code restructure failed: missing block: B:111:0x0362, code lost:
        
            r9 = r2.get(r7);
            r7 = r7 + 1;
            r9 = com.mycompany.app.main.MainUtil.J1((java.lang.String) r9, true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x0372, code lost:
        
            if (android.text.TextUtils.isEmpty(r9) == false) goto L346;
         */
        /* JADX WARN: Code restructure failed: missing block: B:114:0x0375, code lost:
        
            r10 = r0.size();
            r11 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x037a, code lost:
        
            if (r11 >= r10) goto L347;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x037c, code lost:
        
            r12 = r0.get(r11);
            r11 = r11 + 1;
            r12 = (com.mycompany.app.web.WebLoadTask.MimagDir) r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:117:0x0384, code lost:
        
            if (r12 != null) goto L353;
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x038d, code lost:
        
            if (r9.equals(r12.f19289a) == false) goto L356;
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x038f, code lost:
        
            r12.b++;
         */
        /* JADX WARN: Code restructure failed: missing block: B:129:0x0395, code lost:
        
            r10 = new java.lang.Object();
            r10.f19289a = r9;
            r10.b = 1;
            r0.add(r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x03a6, code lost:
        
            if (r0.isEmpty() == false) goto L247;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:0x03aa, code lost:
        
            r3 = r0.size();
            r9 = 0;
            r10 = 0;
            r7 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:0x03b1, code lost:
        
            if (r10 >= r3) goto L357;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:0x03b3, code lost:
        
            r11 = r0.get(r10);
            r10 = r10 + 1;
            r11 = (com.mycompany.app.web.WebLoadTask.MimagDir) r11;
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x03bb, code lost:
        
            if (r11 != null) goto L358;
         */
        /* JADX WARN: Code restructure failed: missing block: B:140:0x03be, code lost:
        
            r12 = r11.b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:141:0x03c0, code lost:
        
            if (r12 < r9) goto L362;
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x03c2, code lost:
        
            r7 = r11.f19289a;
            r9 = r12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x03ca, code lost:
        
            if (android.text.TextUtils.isEmpty(r7) == false) goto L258;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x03cd, code lost:
        
            r0 = new java.util.ArrayList();
            r3 = r2.size();
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x03d6, code lost:
        
            if (r1 >= r3) goto L364;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x03d8, code lost:
        
            r9 = r2.get(r1);
            r1 = r1 + 1;
            r9 = (java.lang.String) r9;
            r10 = androidx.webkit.URLUtilCompat.b(r9, null, "image/*");
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x03e8, code lost:
        
            if (android.text.TextUtils.isEmpty(r10) != false) goto L366;
         */
        /* JADX WARN: Code restructure failed: missing block: B:156:0x03ee, code lost:
        
            if (r6.contains(r10) == false) goto L367;
         */
        /* JADX WARN: Code restructure failed: missing block: B:157:0x03f0, code lost:
        
            r10 = com.mycompany.app.main.MainUtil.J1(r9, true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:158:0x03f8, code lost:
        
            if (android.text.TextUtils.isEmpty(r10) == false) goto L365;
         */
        /* JADX WARN: Code restructure failed: missing block: B:161:0x03ff, code lost:
        
            if (r7.equals(r10) != false) goto L368;
         */
        /* JADX WARN: Code restructure failed: missing block: B:163:0x0402, code lost:
        
            r0.add(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:171:0x0406, code lost:
        
            r1 = r0.isEmpty();
            r0 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:172:0x040a, code lost:
        
            if (r1 == false) goto L274;
         */
        /* JADX WARN: Code restructure failed: missing block: B:173:0x040c, code lost:
        
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:174:0x040d, code lost:
        
            r14.l = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:175:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:178:0x0412, code lost:
        
            if (r14.q == false) goto L456;
         */
        /* JADX WARN: Code restructure failed: missing block: B:179:0x0414, code lost:
        
            r0 = r14.l;
         */
        /* JADX WARN: Code restructure failed: missing block: B:180:0x0416, code lost:
        
            if (r0 == null) goto L296;
         */
        /* JADX WARN: Code restructure failed: missing block: B:182:0x041c, code lost:
        
            if (r0.isEmpty() == false) goto L282;
         */
        /* JADX WARN: Code restructure failed: missing block: B:183:0x041f, code lost:
        
            r1 = new java.util.ArrayList();
            r2 = r0.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:185:0x042c, code lost:
        
            if (r2.hasNext() == false) goto L374;
         */
        /* JADX WARN: Code restructure failed: missing block: B:186:0x042e, code lost:
        
            r3 = (java.lang.String) r2.next();
         */
        /* JADX WARN: Code restructure failed: missing block: B:187:0x0438, code lost:
        
            if (android.text.TextUtils.isEmpty(r3) == false) goto L373;
         */
        /* JADX WARN: Code restructure failed: missing block: B:189:0x043b, code lost:
        
            r4 = com.mycompany.app.main.MainUtil.d3(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:190:0x0443, code lost:
        
            if (android.text.TextUtils.isEmpty(r4) != false) goto L291;
         */
        /* JADX WARN: Code restructure failed: missing block: B:191:0x0445, code lost:
        
            r3 = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:192:0x0446, code lost:
        
            r1.add(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:198:0x044e, code lost:
        
            if (r1.isEmpty() == false) goto L295;
         */
        /* JADX WARN: Code restructure failed: missing block: B:199:0x0451, code lost:
        
            r0 = r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:200:0x0452, code lost:
        
            r14.l = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:201:0x0454, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:202:?, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0253, code lost:
        
            if (r14.o != 2) goto L275;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0255, code lost:
        
            r0 = r14.l;
            r0 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0257, code lost:
        
            if (r0 == null) goto L274;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0259, code lost:
        
            r2 = r0.isEmpty();
            r0 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x025d, code lost:
        
            if (r2 == false) goto L170;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0261, code lost:
        
            r2 = new java.util.ArrayList();
            r3 = r0.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x026e, code lost:
        
            if (r3.hasNext() == false) goto L312;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0270, code lost:
        
            r5 = com.mycompany.app.web.WebLoadTask.d((java.lang.String) r3.next());
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x027e, code lost:
        
            if (android.text.TextUtils.isEmpty(r5) == false) goto L311;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0281, code lost:
        
            r6 = r2.size();
            r7 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0286, code lost:
        
            if (r7 >= r6) goto L313;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0288, code lost:
        
            r8 = r2.get(r7);
            r7 = r7 + 1;
            r8 = (com.mycompany.app.web.WebLoadTask.MimagDir) r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0290, code lost:
        
            if (r8 != null) goto L319;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0299, code lost:
        
            if (r5.equals(r8.f19289a) == false) goto L322;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x029b, code lost:
        
            r8.b++;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x02a1, code lost:
        
            r6 = new java.lang.Object();
            r6.f19289a = r5;
            r6.b = 1;
            r2.add(r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x02ae, code lost:
        
            r0 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x02b2, code lost:
        
            if (r2.isEmpty() == false) goto L188;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x02b6, code lost:
        
            r3 = r2.size();
            r7 = 0;
            r8 = 0;
            r6 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x02be, code lost:
        
            if (r8 >= r3) goto L324;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x02c0, code lost:
        
            r9 = r2.get(r8);
            r8 = r8 + 1;
            r9 = (com.mycompany.app.web.WebLoadTask.MimagDir) r9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x02c8, code lost:
        
            if (r9 != null) goto L323;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x02cb, code lost:
        
            r10 = r9.b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x02cd, code lost:
        
            if (r10 < r7) goto L328;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x02cf, code lost:
        
            r6 = r9.f19289a;
            r7 = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x02d3, code lost:
        
            r0 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x02d7, code lost:
        
            if (android.text.TextUtils.isEmpty(r6) == false) goto L199;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x02db, code lost:
        
            r2 = new java.util.ArrayList();
            r3 = r0.iterator();
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x02e8, code lost:
        
            if (r3.hasNext() == false) goto L331;
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x02ea, code lost:
        
            r7 = (java.lang.String) r3.next();
            r8 = com.mycompany.app.web.WebLoadTask.d(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x02f8, code lost:
        
            if (android.text.TextUtils.isEmpty(r8) == false) goto L330;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x02ff, code lost:
        
            if (r6.equals(r8) == false) goto L335;
         */
        /* JADX WARN: Code restructure failed: missing block: B:77:0x0301, code lost:
        
            r2.add(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0305, code lost:
        
            r0 = r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0309, code lost:
        
            if (r2.isEmpty() == false) goto L211;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0311, code lost:
        
            if (r2.isEmpty() == false) goto L214;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0315, code lost:
        
            r0 = new java.util.ArrayList();
            r3 = r2.size();
            r7 = 0;
            r6 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x0322, code lost:
        
            if (r7 >= r3) goto L337;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x0324, code lost:
        
            r9 = r2.get(r7);
            r7 = r7 + 1;
            r8 = androidx.webkit.URLUtilCompat.b((java.lang.String) r9, null, "image/*");
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0334, code lost:
        
            if (android.text.TextUtils.isEmpty(r8) == false) goto L338;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x033b, code lost:
        
            if (r0.contains(r8) == false) goto L339;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0348, code lost:
        
            r0.add(r8);
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v9, types: [com.mycompany.app.web.WebLoadTask$MimagDir, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v11, types: [com.mycompany.app.web.WebLoadTask$MimagDir, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 1109
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebLoadTask.LoadTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            WebLoadTask webLoadTask;
            WeakReference weakReference = this.e;
            if (weakReference == null || (webLoadTask = (WebLoadTask) weakReference.get()) == null) {
                return;
            }
            webLoadTask.d = null;
            this.f = null;
            this.g = null;
            this.h = null;
            this.i = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003e, code lost:
        
            if (android.text.TextUtils.isEmpty(r4) == false) goto L24;
         */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void e() {
            /*
                r7 = this;
                java.lang.ref.WeakReference r0 = r7.e
                if (r0 != 0) goto L5
                goto Ld
            L5:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.web.WebLoadTask r0 = (com.mycompany.app.web.WebLoadTask) r0
                if (r0 != 0) goto Le
            Ld:
                return
            Le:
                r1 = 0
                r0.d = r1
                java.util.List r2 = r7.l
                if (r2 == 0) goto L71
                boolean r2 = r2.isEmpty()
                if (r2 == 0) goto L1c
                goto L71
            L1c:
                boolean r2 = r0.f19284a
                if (r2 != 0) goto L21
                goto L71
            L21:
                java.lang.String r2 = r7.k
                boolean r2 = android.text.TextUtils.isEmpty(r2)
                if (r2 == 0) goto L53
                java.lang.String r2 = r7.i
                java.lang.String r3 = r7.f
                android.webkit.WebView r4 = r0.b
                r5 = 1
                if (r4 == 0) goto L41
                java.lang.String r4 = r4.getTitle()
                java.lang.String r4 = com.mycompany.app.main.MainUtil.K1(r4, r5)
                boolean r6 = android.text.TextUtils.isEmpty(r4)
                if (r6 != 0) goto L41
                goto L49
            L41:
                java.lang.String r3 = com.mycompany.app.main.MainUtil.H1(r3, r5)
                java.lang.String r4 = com.mycompany.app.main.MainUtil.r1(r3)
            L49:
                java.lang.String r2 = com.mycompany.app.main.MainUtil.u3(r2, r4)
                java.lang.String r2 = com.mycompany.app.main.MainUtil.p3(r2)
                r7.k = r2
            L53:
                com.mycompany.app.web.WebLoadTask$WebLoadTaskListener r0 = r0.f19285c
                if (r0 == 0) goto L60
                java.lang.String r2 = r7.k
                java.util.List r3 = r7.l
                com.mycompany.app.data.DataUrl$ImgCntItem r4 = r7.n
                r0.c(r2, r3, r4)
            L60:
                r7.f = r1
                r7.g = r1
                r7.h = r1
                r7.i = r1
                r7.k = r1
                r7.l = r1
                r7.m = r1
                r7.n = r1
                return
            L71:
                com.mycompany.app.web.WebLoadTask$WebLoadTaskListener r0 = r0.f19285c
                if (r0 == 0) goto L78
                r0.c(r1, r1, r1)
            L78:
                r7.f = r1
                r7.g = r1
                r7.h = r1
                r7.i = r1
                r7.k = r1
                r7.l = r1
                r7.m = r1
                r7.n = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebLoadTask.LoadTask.e():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0099  */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void f() {
            /*
                r5 = this;
                java.lang.ref.WeakReference r0 = r5.e
                if (r0 != 0) goto L5
                goto L12
            L5:
                java.lang.Object r0 = r0.get()
                com.mycompany.app.web.WebLoadTask r0 = (com.mycompany.app.web.WebLoadTask) r0
                if (r0 != 0) goto Le
                goto L12
            Le:
                boolean r1 = r0.f19284a
                if (r1 != 0) goto L13
            L12:
                return
            L13:
                com.mycompany.app.web.WebLoadTask$WebLoadTaskListener r0 = r0.f19285c
                if (r0 == 0) goto L1a
                r0.b()
            L1a:
                java.lang.String r0 = r5.f
                r1 = 1
                java.lang.String r0 = com.mycompany.app.main.MainUtil.J1(r0, r1)
                r5.h = r0
                if (r0 != 0) goto L29
                java.lang.String r0 = ""
                r5.h = r0
            L29:
                java.lang.String r0 = r5.h
                java.lang.String r0 = com.mycompany.app.main.MainUtil.Q2(r0)
                r5.i = r0
                r5.j = r1
                int r0 = com.mycompany.app.main.MainUtil.v3(r0)
                r5.o = r0
                r2 = 2
                r3 = 0
                if (r0 != 0) goto L9b
                java.lang.String r0 = r5.f
                boolean r4 = android.text.TextUtils.isEmpty(r0)
                if (r4 == 0) goto L47
            L45:
                r0 = r3
                goto L6e
            L47:
                java.lang.String r4 = "m.comic.naver.com/webtoon/detail"
                boolean r4 = r0.contains(r4)
                if (r4 == 0) goto L51
                r0 = r1
                goto L6e
            L51:
                java.lang.String r4 = "comic.naver.com/webtoon/detail"
                boolean r4 = r0.contains(r4)
                if (r4 == 0) goto L5b
                r0 = r2
                goto L6e
            L5b:
                java.lang.String r4 = "m.webtoon.daum.net/m/webtoon/viewer/"
                boolean r4 = r0.contains(r4)
                if (r4 == 0) goto L65
                r0 = 3
                goto L6e
            L65:
                java.lang.String r4 = "webtoon.daum.net/webtoon/viewer/"
                boolean r0 = r0.contains(r4)
                if (r0 == 0) goto L45
                r0 = 4
            L6e:
                r5.p = r0
                if (r0 != 0) goto L99
                java.lang.String r0 = r5.h
                java.lang.String r4 = "pinterest.com"
                boolean r0 = r0.endsWith(r4)
                if (r0 == 0) goto L7f
                r5.q = r1
                goto L9b
            L7f:
                java.lang.String r0 = r5.h
                java.lang.String r4 = "facebook.com"
                boolean r0 = r0.endsWith(r4)
                if (r0 == 0) goto L8c
                r5.r = r1
                goto L9b
            L8c:
                java.lang.String r0 = r5.h
                java.lang.String r4 = "instagram.com"
                boolean r0 = r0.endsWith(r4)
                if (r0 == 0) goto L9b
                r5.s = r1
                goto L9b
            L99:
                r5.j = r3
            L9b:
                boolean r0 = r5.s
                if (r0 != 0) goto La5
                int r0 = r5.o
                if (r0 != r2) goto La4
                goto La5
            La4:
                r1 = r3
            La5:
                r5.t = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebLoadTask.LoadTask.f():void");
        }
    }

    /* loaded from: classes3.dex */
    public static class MimagDir {

        /* renamed from: a, reason: collision with root package name */
        public String f19289a;
        public int b;
    }

    /* loaded from: classes3.dex */
    public interface WebLoadTaskListener {
        void a();

        void b();

        void c(String str, List list, DataUrl.ImgCntItem imgCntItem);

        void d(int i);

        void e();
    }

    public static void a(WebLoadTask webLoadTask, String str, DataUrl.ImgCntItem imgCntItem) {
        if (imgCntItem == null) {
            return;
        }
        String W3 = MainUtil.W3(str, true);
        if (TextUtils.isEmpty(W3)) {
            imgCntItem.f++;
            return;
        }
        if (W3.equals("jpg")) {
            imgCntItem.f12903a++;
            return;
        }
        if (W3.equals("png")) {
            imgCntItem.b++;
            return;
        }
        if (W3.equals("gif")) {
            imgCntItem.f12904c++;
        } else if (W3.equals("webp")) {
            imgCntItem.d++;
        } else {
            imgCntItem.e++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b3, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f8, code lost:
    
        if (r3.contains("sns-") == false) goto L29;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b(com.mycompany.app.web.WebLoadTask r3, java.lang.String r4, int r5, int r6) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.web.WebLoadTask.b(com.mycompany.app.web.WebLoadTask, java.lang.String, int, int):java.lang.String");
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.mycompany.app.web.WebLoadTask] */
    public static WebLoadTask c() {
        if (i == null) {
            synchronized (WebLoadTask.class) {
                try {
                    if (i == null) {
                        i = new Object();
                    }
                } finally {
                }
            }
        }
        return i;
    }

    public static String d(String str) {
        int lastIndexOf;
        int lastIndexOf2;
        int i2;
        if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(47)) > 0 && lastIndexOf + 1 < str.length() && (lastIndexOf2 = str.lastIndexOf(47, lastIndexOf - 1)) != -1 && (i2 = lastIndexOf2 + 1) < lastIndexOf) {
            return str.substring(i2, lastIndexOf);
        }
        return null;
    }

    public final void e(String str) {
        this.f = false;
        if (this.b == null) {
            WebLoadTaskListener webLoadTaskListener = this.f19285c;
            if (webLoadTaskListener != null) {
                webLoadTaskListener.a();
                return;
            }
            return;
        }
        this.f = false;
        LoadTask loadTask = this.d;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.d = null;
        if (MainUtil.D5(str)) {
            WebView webView = this.b;
            if (webView == null) {
                return;
            }
            webView.evaluateJavascript("document.documentElement.innerHTML", new ValueCallback<String>() { // from class: com.mycompany.app.web.WebLoadTask.1
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(String str2) {
                    WebLoadTask webLoadTask = WebLoadTask.this;
                    webLoadTask.g = str2;
                    WebView webView2 = webLoadTask.b;
                    if (webView2 == null) {
                        return;
                    }
                    MainApp.J(webView2.getContext(), new Runnable() { // from class: com.mycompany.app.web.WebLoadTask.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            final WebLoadTask webLoadTask2 = WebLoadTask.this;
                            String str3 = webLoadTask2.g;
                            webLoadTask2.g = null;
                            if (webLoadTask2.b != null) {
                                webLoadTask2.h = MainUtil.k8(MainUtil.X6(str3));
                                WebView webView3 = webLoadTask2.b;
                                if (webView3 == null) {
                                    return;
                                }
                                webView3.post(new Runnable() { // from class: com.mycompany.app.web.WebLoadTask.2
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        WebLoadTask webLoadTask3 = WebLoadTask.this;
                                        String str4 = webLoadTask3.h;
                                        webLoadTask3.h = null;
                                        WebLoadTask.c().g(str4);
                                    }
                                });
                            }
                        }
                    });
                }
            });
            return;
        }
        MainUtil.I(this.b, "(function(){android.onLoadHtml(document.documentElement.innerHTML);})();", false);
    }

    public final void f(int i2) {
        boolean z = true;
        switch (i2) {
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

    public final void g(String str) {
        WebView webView = this.b;
        if (webView == null) {
            WebLoadTaskListener webLoadTaskListener = this.f19285c;
            if (webLoadTaskListener != null) {
                webLoadTaskListener.a();
                return;
            }
            return;
        }
        Context context = webView.getContext();
        String url = this.b.getUrl();
        if (this.b == null) {
            WebLoadTaskListener webLoadTaskListener2 = this.f19285c;
            if (webLoadTaskListener2 != null) {
                webLoadTaskListener2.a();
                return;
            }
            return;
        }
        this.f = false;
        LoadTask loadTask = this.d;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.d = null;
        if (!URLUtil.isNetworkUrl(url)) {
            WebLoadTaskListener webLoadTaskListener3 = this.f19285c;
            if (webLoadTaskListener3 != null) {
                webLoadTaskListener3.a();
                return;
            }
            return;
        }
        LoadTask loadTask2 = new LoadTask(this, url, str);
        this.d = loadTask2;
        loadTask2.b(context);
    }

    public final void h(int i2) {
        if (this.b != null) {
            this.e = 1;
            WebLoadTaskListener webLoadTaskListener = this.f19285c;
            if (webLoadTaskListener != null) {
                webLoadTaskListener.d(i2);
            }
        }
    }
}
