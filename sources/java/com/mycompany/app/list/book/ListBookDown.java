package com.mycompany.app.list.book;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.list.MainListDown;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ListBookDown extends com.mycompany.app.list.ListTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f16263a;
    public ListTask.ListTaskListener b;

    /* renamed from: c, reason: collision with root package name */
    public ListTask f16264c;
    public boolean d;
    public String e;

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public final boolean g;
        public final long h;
        public final String i;
        public final boolean j;
        public MainItem.ChildItem k;
        public ArrayList l;
        public ArrayList m;
        public ArrayList n;
        public boolean[] o;
        public int[] p;
        public boolean[] q;
        public int r;
        public boolean s;
        public final boolean t;
        public final String u;

        public ListTask(ListBookDown listBookDown, boolean z, long j) {
            WeakReference weakReference = new WeakReference(listBookDown);
            this.e = weakReference;
            ListBookDown listBookDown2 = (ListBookDown) weakReference.get();
            if (listBookDown2 != null) {
                this.g = z;
                this.h = j;
                this.t = listBookDown2.d;
                this.u = listBookDown2.e;
                this.i = MainListDown.W1;
                MainListDown.W1 = null;
                this.j = !TextUtils.isEmpty(r3);
                ListTask.ListTaskListener listTaskListener = listBookDown2.b;
                if (listTaskListener != null) {
                    listTaskListener.f();
                }
            }
        }

        /* JADX WARN: Can't wrap try/catch for region: R(13:326|327|(5:328|329|(1:331)|332|333)|(5:376|377|378|(2:(2:(3:383|384|385)|382)|(3:391|(4:394|(5:396|397|398|399|(2:401|402)(2:404|405))(1:410)|403|392)|411))|412)(14:335|(1:375)(2:339|(1:341)(2:366|(12:369|370|(1:372)(1:374)|373|346|347|348|349|350|302|303|(1:307)(2:309|308))(0)))|342|343|344|(12:356|357|358|359|360|347|348|349|350|302|303|(1:309)(2:305|307))|346|347|348|349|350|302|303|(0)(0))|368|346|347|348|349|350|302|303|(0)(0)) */
        /* JADX WARN: Can't wrap try/catch for region: R(14:335|(1:375)(2:339|(1:341)(2:366|(12:369|370|(1:372)(1:374)|373|346|347|348|349|350|302|303|(1:307)(2:309|308))(0)))|342|343|344|(12:356|357|358|359|360|347|348|349|350|302|303|(1:309)(2:305|307))|346|347|348|349|350|302|303|(0)(0)) */
        /* JADX WARN: Can't wrap try/catch for region: R(20:614|(1:616)|617|618|(1:620)|621|(8:622|623|624|625|626|(1:628)|629|630)|(5:672|673|674|(2:(2:(3:679|680|681)|678)|(3:688|(4:691|(5:693|694|695|696|(2:698|699)(2:701|702))(1:706)|700|689)|707))|708)(14:632|(4:661|662|663|(13:665|666|667|668|669|642|643|644|645|600|601|602|(1:610)(1:611)))(2:638|(5:650|651|652|(1:654)(1:657)|655)(0))|656|641|642|643|644|645|600|601|602|(1:604)|608|610)|640|641|642|643|644|645|600|601|602|(0)|608|610) */
        /* JADX WARN: Can't wrap try/catch for region: R(25:29|(1:31)|754|33|(1:35)(1:753)|36|(2:37|38)|(3:551|552|(47:554|555|556|557|558|559|560|561|562|563|564|565|566|567|568|569|570|571|572|573|574|575|576|577|578|579|580|581|582|583|584|585|586|587|588|589|590|591|592|593|594|(10:595|596|(1:598)(27:614|(1:616)|617|618|(1:620)|621|622|623|624|625|626|(1:628)|629|630|(5:672|673|674|(2:(2:(3:679|680|681)|678)|(3:688|(4:691|(5:693|694|695|696|(2:698|699)(2:701|702))(1:706)|700|689)|707))|708)(14:632|(4:661|662|663|(13:665|666|667|668|669|642|643|644|645|600|601|602|(1:610)(1:611)))(2:638|(5:650|651|652|(1:654)(1:657)|655)(0))|656|641|642|643|644|645|600|601|602|(1:604)|608|610)|640|641|642|643|644|645|600|601|602|(0)|608|610)|599|600|601|602|(0)|608|610)|(1:43)|44|(12:450|(1:452)(1:550)|453|454|455|(3:465|466|(30:468|469|470|471|472|473|474|475|476|477|478|479|480|481|482|483|484|485|486|487|488|489|490|491|492|(10:493|494|(13:510|(1:512)|513|514|515|516|517|518|519|520|521|499|(1:507)(1:508))|496|497|498|499|(1:501)|505|507)|(1:460)|461|(1:463)|50))|457|458|(0)|461|(0)|50)(1:48)|49|50))|40|41|(0)|44|(1:46)|450|(0)(0)|453|454|455|(0)|457|458|(0)|461|(0)|50) */
        /* JADX WARN: Code restructure failed: missing block: B:220:0x0972, code lost:
        
            if (r2.f12839c != false) goto L484;
         */
        /* JADX WARN: Code restructure failed: missing block: B:263:0x0882, code lost:
        
            if (r2.f12839c != false) goto L484;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x00ed, code lost:
        
            if (r30 > 0) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:364:0x07dd, code lost:
        
            r2 = r53;
         */
        /* JADX WARN: Code restructure failed: missing block: B:464:0x050d, code lost:
        
            if (r1.f12839c != false) goto L211;
         */
        /* JADX WARN: Code restructure failed: missing block: B:549:0x04fd, code lost:
        
            r4 = r32;
            r6 = r37;
            r1 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:797:0x005b, code lost:
        
            if (r13 <= 0) goto L30;
         */
        /* JADX WARN: Removed duplicated region for block: B:231:0x0963 A[Catch: Exception -> 0x096b, TRY_LEAVE, TryCatch #1 {Exception -> 0x096b, blocks: (B:222:0x08bc, B:224:0x08c2, B:229:0x095f, B:231:0x0963), top: B:221:0x08bc }] */
        /* JADX WARN: Removed duplicated region for block: B:235:0x096b A[EDGE_INSN: B:235:0x096b->B:217:0x096b BREAK  A[LOOP:4: B:225:0x08f2->B:234:?], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:261:0x087d  */
        /* JADX WARN: Removed duplicated region for block: B:305:0x080c A[Catch: Exception -> 0x081d, TRY_LEAVE, TryCatch #46 {Exception -> 0x081d, blocks: (B:303:0x0808, B:305:0x080c), top: B:302:0x0808 }] */
        /* JADX WARN: Removed duplicated region for block: B:309:0x087b A[ADDED_TO_REGION, EDGE_INSN: B:309:0x087b->B:260:0x087b BREAK  A[LOOP:5: B:295:0x06b0->B:307:0x0814], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:43:0x03d6  */
        /* JADX WARN: Removed duplicated region for block: B:449:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:452:0x03ee  */
        /* JADX WARN: Removed duplicated region for block: B:460:0x0504  */
        /* JADX WARN: Removed duplicated region for block: B:463:0x050b  */
        /* JADX WARN: Removed duplicated region for block: B:465:0x040d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:46:0x03dd  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x051a  */
        /* JADX WARN: Removed duplicated region for block: B:550:0x03f1  */
        /* JADX WARN: Removed duplicated region for block: B:604:0x02dc A[Catch: Exception -> 0x03d4, TryCatch #58 {Exception -> 0x03d4, blocks: (B:602:0x02d8, B:604:0x02dc, B:608:0x02e2), top: B:601:0x02d8 }] */
        /* JADX WARN: Type inference failed for: r11v31, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r13v25, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v17, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v43, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v30, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r6v44, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 2996
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.book.ListBookDown.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListBookDown listBookDown;
            ListTask.ListTaskListener listTaskListener;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listBookDown = (ListBookDown) weakReference.get()) == null) {
                return;
            }
            listBookDown.f16264c = null;
            if (this.f && (listTaskListener = listBookDown.b) != null) {
                listTaskListener.a();
            }
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
            this.q = null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.list.ListTask$ListTaskConfig, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListBookDown listBookDown;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listBookDown = (ListBookDown) weakReference.get()) != null) {
                listBookDown.f16264c = null;
                if (this.f12839c) {
                    return;
                }
                ListTask.ListTaskListener listTaskListener = listBookDown.b;
                if (listTaskListener != 0) {
                    ?? obj = new Object();
                    if (!PrefSync.k || PrefSecret.m != 0) {
                        obj.f16239c = this.l;
                        obj.d = this.m;
                        obj.e = this.o;
                        obj.f = this.p;
                        obj.g = this.q;
                        obj.h = this.r;
                        obj.k = -1;
                        obj.m = -1;
                        obj.n = this.k;
                        obj.p = this.s;
                        obj.u = this.u;
                    }
                    listTaskListener.g(obj);
                }
                this.k = null;
                this.l = null;
                this.m = null;
                this.n = null;
                this.o = null;
                this.p = null;
                this.q = null;
            }
        }
    }

    public static String p(ListBookDown listBookDown, String str, int i, int i2) {
        Context context = listBookDown.f16263a;
        if (i2 != 1 && i2 != 2 && i2 != 4) {
            if (PrefList.a1 == 3) {
                int length = MainConst.j0.length;
                int i3 = length - 1;
                int i4 = 0;
                while (true) {
                    if (i4 >= length) {
                        break;
                    }
                    if (i == MainConst.j0[i4]) {
                        i3 = i4;
                        break;
                    }
                    i4++;
                }
                int[] iArr = MainConst.k0;
                return context.getString(iArr[i3 % iArr.length]);
            }
            return str;
        }
        if (context == null) {
            return "Download";
        }
        return context.getString(R.string.download);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainItem$GroupItem, java.lang.Object] */
    public static void q(ListBookDown listBookDown, ArrayList arrayList, String str, int i, int i2, int i3) {
        if (arrayList == null) {
            return;
        }
        ?? obj = new Object();
        obj.d = arrayList.size();
        boolean z = false;
        obj.f16552a = 0;
        obj.b = str;
        obj.f16553c = i;
        obj.e = i3 - i;
        obj.f = i2;
        if (i2 == i) {
            z = true;
        }
        obj.g = z;
        arrayList.add(obj);
    }

    public static void r(MainItem.ChildItem childItem) {
        int i = PrefList.a1;
        if (i != 0) {
            int i2 = childItem.d;
            if (i2 != 1 && i2 != 2 && i2 != 4) {
                if (i == 1) {
                    childItem.l = childItem.e;
                    String str = childItem.f;
                    childItem.m = str;
                    if (!TextUtils.isEmpty(str)) {
                        childItem.m = childItem.m.toLowerCase(Locale.US);
                    }
                } else if (i == 3) {
                    if (childItem.f16550a == 2) {
                        childItem.l = "7";
                    } else {
                        childItem.l = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + childItem.f16550a;
                    }
                    childItem.m = childItem.l;
                }
            } else {
                childItem.l = "44";
                childItem.m = "44";
            }
        }
        if (PrefList.b1 == 0 && !TextUtils.isEmpty(childItem.h)) {
            childItem.n = childItem.h.toLowerCase(Locale.US);
        }
    }

    @Override // com.mycompany.app.list.ListTask
    public final void a() {
        ListTask listTask = this.f16264c;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.f16264c = null;
    }

    @Override // com.mycompany.app.list.ListTask
    public final boolean d() {
        return true;
    }

    @Override // com.mycompany.app.list.ListTask
    public final void i(boolean z, boolean z2, boolean z3) {
        a();
        ListTask listTask = new ListTask(this, true, -1L);
        this.f16264c = listTask;
        listTask.b(this.f16263a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void j(String str) {
        a();
        this.d = true;
        this.e = str;
        ListTask listTask = new ListTask(this, true, -1L);
        this.f16264c = listTask;
        listTask.b(this.f16263a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void k(long j, boolean z) {
        a();
        ListTask listTask = new ListTask(this, z, j);
        this.f16264c = listTask;
        listTask.b(this.f16263a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void l(String str, boolean z, boolean z2) {
        a();
        ListTask listTask = new ListTask(this, z, -1L);
        this.f16264c = listTask;
        listTask.b(this.f16263a);
    }

    @Override // com.mycompany.app.list.ListTask
    public final void n() {
        this.d = false;
        this.e = null;
    }
}
