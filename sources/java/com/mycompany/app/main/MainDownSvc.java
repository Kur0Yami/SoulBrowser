package com.mycompany.app.main;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.v4.media.a;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.gson.JsonObject;
import com.mycompany.app.data.DataUtil;
import com.mycompany.app.db.DbUtil;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.down.DownParseDzen;
import com.mycompany.app.down.DownParseKakao;
import com.mycompany.app.down.DownParseM3u8;
import com.mycompany.app.down.DownParseReddit;
import com.mycompany.app.down.DownParseTsfile;
import com.mycompany.app.down.DownParseVimeo;
import com.mycompany.app.down.DownSaveImage;
import com.mycompany.app.down.DownSaveSplit;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.list.MainListDown;
import com.mycompany.app.pref.PrefPath;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.torrent.Torrent;
import com.mycompany.app.torrent.TorrentStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MainDownSvc extends Service {
    public static int V;
    public boolean A;
    public boolean B;
    public ArrayList C;
    public String D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public long J;
    public long K;
    public NotificationCompat.Builder L;
    public EventReceiver M;
    public String N;
    public String O;
    public String P;
    public String Q;
    public ExecutorService R;
    public boolean T;
    public Context j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public Handler o;
    public long p;
    public DownBusyListener q;
    public DownListListener r;
    public ArrayList s;
    public ArrayList t;
    public ArrayList u;
    public ArrayList v;
    public ArrayList w;
    public boolean x;
    public int y;
    public long z;

    /* renamed from: c, reason: collision with root package name */
    public final Object f16477c = new Object();
    public final Object f = new Object();
    public final Object g = new Object();
    public final Object h = new Object();
    public final Object i = new Object();
    public final Runnable S = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.3
        @Override // java.lang.Runnable
        public final void run() {
            MainDownSvc mainDownSvc = MainDownSvc.this;
            Runnable runnable = mainDownSvc.S;
            Handler handler = mainDownSvc.o;
            if (handler != null) {
                handler.removeCallbacks(runnable);
                long j = mainDownSvc.p;
                if (j == 0) {
                    return;
                }
                if (j != 0) {
                    int i = PrefWeb.Y;
                    if (i < 1) {
                        i = 1;
                    } else if (i > 5) {
                        i = 5;
                    }
                    if (System.currentTimeMillis() - j >= i * 3600000) {
                        try {
                            ArrayList arrayList = mainDownSvc.s;
                            if (arrayList != null && !arrayList.isEmpty()) {
                                int size = arrayList.size();
                                int i2 = 0;
                                while (i2 < size) {
                                    Object obj = arrayList.get(i2);
                                    i2++;
                                    DownItem downItem = (DownItem) obj;
                                    if (downItem != null && downItem.J) {
                                    }
                                }
                                mainDownSvc.Q(false, true);
                                return;
                            }
                        } catch (Exception unused) {
                        }
                    }
                }
                handler.postDelayed(runnable, 600000L);
            }
        }
    };
    public final Runnable U = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.31
        @Override // java.lang.Runnable
        public final void run() {
            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.31.1
                @Override // java.lang.Runnable
                public final void run() {
                    boolean b;
                    DownItem downItem;
                    int i;
                    MainDownSvc mainDownSvc = MainDownSvc.this;
                    int i2 = MainDownSvc.V;
                    if (!mainDownSvc.Z()) {
                        MainDownSvc mainDownSvc2 = MainDownSvc.this;
                        DownItem downItem2 = null;
                        if (mainDownSvc2.x) {
                            b = true;
                        } else {
                            DownBusyListener downBusyListener = mainDownSvc2.q;
                            if (downBusyListener == null) {
                                b = false;
                            } else {
                                b = downBusyListener.b();
                            }
                        }
                        if (b) {
                            MainDownSvc mainDownSvc3 = MainDownSvc.this;
                            Handler handler = mainDownSvc3.o;
                            if (handler == null) {
                                return;
                            }
                            handler.removeCallbacks(mainDownSvc3.U);
                            MainDownSvc mainDownSvc4 = MainDownSvc.this;
                            mainDownSvc4.o.postDelayed(mainDownSvc4.U, 400L);
                            return;
                        }
                        DownItem downItem3 = null;
                        try {
                            try {
                                synchronized (MainDownSvc.this.h) {
                                    try {
                                        ArrayList arrayList = MainDownSvc.this.v;
                                        if (arrayList != null && !arrayList.isEmpty()) {
                                            downItem = (DownItem) MainDownSvc.this.v.remove(0);
                                        }
                                        return;
                                    } catch (Throwable th) {
                                        downItem2 = null;
                                        th = th;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            throw th;
                        } catch (Exception unused2) {
                            downItem3 = downItem2;
                            downItem = downItem3;
                            if (downItem != null && ((i = downItem.f16518c) == 1 || i == 7)) {
                                MainDownSvc.this.c0(downItem);
                            }
                            MainDownSvc.this.h(true);
                        }
                    }
                }
            };
            int i = MainDownSvc.V;
            MainDownSvc.this.F(runnable);
        }
    };

    /* renamed from: com.mycompany.app.main.MainDownSvc$20, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass20 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DownItem f16494c;

        public AnonymousClass20(DownItem downItem) {
            this.f16494c = downItem;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f16494c.f16518c != 1) {
                return;
            }
            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.20.1
                @Override // java.lang.Runnable
                public final void run() {
                    File[] listFiles;
                    boolean z;
                    if (AnonymousClass20.this.f16494c.f16518c == 1 && (listFiles = new File(AnonymousClass20.this.f16494c.m).listFiles()) != null && listFiles.length != 0) {
                        DownItem downItem = AnonymousClass20.this.f16494c;
                        int i = downItem.v;
                        if (downItem.I == 15) {
                            i++;
                        }
                        String str = null;
                        String str2 = null;
                        int i2 = 0;
                        for (File file : listFiles) {
                            String name = file.getName();
                            if (!TextUtils.isEmpty(name) && name.endsWith("f")) {
                                if (AnonymousClass20.this.f16494c.I == 15 && name.endsWith("af") && file.length() != 0) {
                                    str2 = file.getPath();
                                }
                                i2++;
                            }
                        }
                        if (i2 >= i && MainDownSvc.this.j != null) {
                            if (i == 1) {
                                File file2 = listFiles[0];
                                if (file2 != null) {
                                    str = file2.getPath();
                                }
                                z = true;
                                str2 = str;
                            } else {
                                z = false;
                            }
                            AnonymousClass20 anonymousClass20 = AnonymousClass20.this;
                            MainDownSvc mainDownSvc = MainDownSvc.this;
                            DownItem downItem2 = anonymousClass20.f16494c;
                            if (downItem2 != null) {
                                try {
                                    synchronized (mainDownSvc.i) {
                                        try {
                                            if (downItem2.f16518c != 1) {
                                                return;
                                            }
                                            downItem2.f16518c = 7;
                                            downItem2.Q = false;
                                            downItem2.R = z;
                                            downItem2.S = str2;
                                            ArrayList arrayList = mainDownSvc.w;
                                            if (arrayList == null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                mainDownSvc.w = arrayList2;
                                                arrayList2.add(downItem2);
                                            } else if (arrayList.isEmpty()) {
                                                mainDownSvc.w.add(downItem2);
                                            } else {
                                                if (!mainDownSvc.w.contains(downItem2)) {
                                                    mainDownSvc.w.add(downItem2);
                                                    return;
                                                }
                                                return;
                                            }
                                            AnonymousClass20 anonymousClass202 = AnonymousClass20.this;
                                            MainDownSvc.d(MainDownSvc.this, anonymousClass202.f16494c);
                                        } finally {
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                            }
                        }
                    }
                }
            };
            int i = MainDownSvc.V;
            MainDownSvc.this.F(runnable);
        }
    }

    /* renamed from: com.mycompany.app.main.MainDownSvc$25, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass25 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.main.MainDownSvc$27, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass27 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: com.mycompany.app.main.MainDownSvc$28, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass28 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainDownSvc$30, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass30 implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DownItem f16507c;

        public AnonymousClass30(DownItem downItem) {
            this.f16507c = downItem;
        }

        @Override // java.lang.Runnable
        public final void run() {
            DownItem downItem = this.f16507c;
            if (downItem == null || downItem.p == 0 || downItem.t != 0 || downItem.f16518c != 1) {
                return;
            }
            downItem.t = System.currentTimeMillis();
            int i = MainDownSvc.V;
            MainDownSvc mainDownSvc = MainDownSvc.this;
            mainDownSvc.d0(downItem);
            mainDownSvc.J(downItem);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mycompany.app.main.MainDownSvc$32, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass32 implements DownImageListener {
        public AnonymousClass32() {
        }

        @Override // com.mycompany.app.main.MainDownSvc.DownImageListener
        public final Handler a() {
            return MainDownSvc.this.o;
        }

        @Override // com.mycompany.app.main.MainDownSvc.DownImageListener
        public final void b(List list, boolean z) {
            int i;
            int i2;
            NotificationCompat.Builder builder;
            if (list != null) {
                Iterator it = list.iterator();
                int i3 = 0;
                int i4 = 0;
                while (it.hasNext()) {
                    ImageItem imageItem = (ImageItem) it.next();
                    if (MainDownSvc.this.B) {
                        if (imageItem != null) {
                            int i5 = imageItem.g;
                            if (i5 == 3) {
                                i3++;
                            } else if (i5 == 4) {
                            }
                        }
                        i3++;
                        i4++;
                    } else {
                        return;
                    }
                }
                MainDownSvc mainDownSvc = MainDownSvc.this;
                mainDownSvc.F = mainDownSvc.H + i3;
                mainDownSvc.G = mainDownSvc.I + i4;
                if (i3 < list.size()) {
                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                    if (mainDownSvc2.B && (i = mainDownSvc2.F) < (i2 = mainDownSvc2.E) && (builder = mainDownSvc2.L) != null && mainDownSvc2.j != null) {
                        if (i2 < 0) {
                            mainDownSvc2.E = 0;
                        }
                        int i6 = mainDownSvc2.E;
                        if (i > i6) {
                            mainDownSvc2.F = i6;
                        }
                        if (mainDownSvc2.G > i6) {
                            mainDownSvc2.G = i6;
                        }
                        long currentTimeMillis = System.currentTimeMillis();
                        if (currentTimeMillis - mainDownSvc2.J >= 500) {
                            mainDownSvc2.J = currentTimeMillis;
                            StringBuilder sb = new StringBuilder();
                            sb.append(mainDownSvc2.getString(R.string.success));
                            sb.append(" (");
                            sb.append(mainDownSvc2.F - mainDownSvc2.G);
                            sb.append(")  ");
                            sb.append(mainDownSvc2.getString(R.string.fail));
                            sb.append(" (");
                            sb.append(mainDownSvc2.G);
                            sb.append(")");
                            builder.f(mainDownSvc2.E, mainDownSvc2.F, false);
                            builder.e = NotificationCompat.Builder.c(mainDownSvc2.F + " / " + mainDownSvc2.E + " - " + mainDownSvc2.getString(R.string.down_image));
                            builder.f = NotificationCompat.Builder.c(sb.toString());
                            Notification b = builder.b();
                            MainDownSvc.R(b, 1);
                            NotificationManager q = MainApp.q(mainDownSvc2.j);
                            if (q != null) {
                                q.notify(2147483644, b);
                            }
                        }
                    }
                    long currentTimeMillis2 = System.currentTimeMillis();
                    MainDownSvc mainDownSvc3 = MainDownSvc.this;
                    if (currentTimeMillis2 - mainDownSvc3.K > 2000) {
                        mainDownSvc3.K = currentTimeMillis2;
                        mainDownSvc3.L(true);
                        return;
                    }
                    return;
                }
                synchronized (MainDownSvc.this.f) {
                    try {
                        MainDownSvc mainDownSvc4 = MainDownSvc.this;
                        if (!mainDownSvc4.B) {
                            return;
                        }
                        ArrayList arrayList = mainDownSvc4.C;
                        if (arrayList != null && !arrayList.isEmpty()) {
                            MainDownSvc mainDownSvc5 = MainDownSvc.this;
                            ArrayList arrayList2 = mainDownSvc5.C;
                            mainDownSvc5.C = null;
                            mainDownSvc5.a0(arrayList2, z);
                        } else {
                            MainDownSvc.a(MainDownSvc.this);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // com.mycompany.app.main.MainDownSvc.DownImageListener
        public final boolean isRunning() {
            return MainDownSvc.this.B;
        }
    }

    /* renamed from: com.mycompany.app.main.MainDownSvc$9, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass9 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public interface DownBusyListener {
        boolean a();

        boolean b();
    }

    /* loaded from: classes3.dex */
    public interface DownImageListener {
        Handler a();

        void b(List list, boolean z);

        boolean isRunning();
    }

    /* loaded from: classes3.dex */
    public static class DownItem {
        public long A;
        public long B;
        public long C;
        public long D;
        public long E;
        public long F;
        public int G;
        public boolean H;
        public int I;
        public boolean J;
        public boolean K;
        public boolean L;
        public boolean M;
        public boolean N;
        public boolean O;
        public boolean P;
        public boolean Q;
        public boolean R;
        public String S;
        public TorrentStream T;
        public NotificationCompat.Builder U;

        /* renamed from: a, reason: collision with root package name */
        public boolean f16517a;
        public long b;

        /* renamed from: c, reason: collision with root package name */
        public int f16518c;
        public int d;
        public int e;
        public String f;
        public String g;
        public List h;
        public ArrayList i;
        public List j;
        public ArrayList k;
        public String l;
        public String m;
        public MainUri.UriItem n;
        public long o;
        public long p;
        public long q;
        public long r;
        public long s;
        public long t;
        public int u;
        public int v;
        public int w;
        public int x;
        public int y;
        public int z;
    }

    /* loaded from: classes3.dex */
    public interface DownListListener {
        void a(int i, long j);

        void b(DownItem downItem);

        void c();

        void d(ArrayList arrayList);

        void e(DownItem downItem);

        void f(boolean z);

        void onConnected();
    }

    /* loaded from: classes3.dex */
    public interface DownSaveListener {
        Handler a();

        void b(DownItem downItem);

        void c(DownItem downItem);

        void d(DownItem downItem);

        void e(DownItem downItem);
    }

    /* loaded from: classes3.dex */
    public interface DownZipListener {
        Handler a();

        void b(List list);

        boolean isRunning();
    }

    /* loaded from: classes3.dex */
    public static class EncItem {

        /* renamed from: a, reason: collision with root package name */
        public int f16519a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public byte[] f16520c;
    }

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                action.getClass();
                char c2 = 65535;
                switch (action.hashCode()) {
                    case -2128145023:
                        if (action.equals("android.intent.action.SCREEN_OFF")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1454123155:
                        if (action.equals("android.intent.action.SCREEN_ON")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -830137506:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_DOWN_CANCEL")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 832948279:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_IMAGE_CANCEL")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 1786349682:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_DOWN_PAUSE")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case 1788314916:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_DOWN_RETRY")) {
                            c2 = 5;
                            break;
                        }
                        break;
                    case 2135528194:
                        if (action.equals("com.mycompany.app.soulbrowser.ACTION_DOWN_EXIT")) {
                            c2 = 6;
                            break;
                        }
                        break;
                }
                MainDownSvc mainDownSvc = MainDownSvc.this;
                switch (c2) {
                    case 0:
                        mainDownSvc.y = 2;
                        return;
                    case 1:
                        mainDownSvc.y = 1;
                        if (mainDownSvc.Z()) {
                            return;
                        }
                        mainDownSvc.h(true);
                        return;
                    case 2:
                        final long longExtra = intent.getLongExtra("EXTRA_ID", -1L);
                        if (longExtra != -1) {
                            final String stringExtra = intent.getStringExtra("EXTRA_PATH");
                            final boolean booleanExtra = intent.getBooleanExtra("EXTRA_STOP", false);
                            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.EventReceiver.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                    Context context2 = mainDownSvc2.j;
                                    if (context2 == null) {
                                        return;
                                    }
                                    boolean z = booleanExtra;
                                    long j = longExtra;
                                    if (z) {
                                        DbBookDown.k(context2, j);
                                        mainDownSvc2.K(3, j);
                                    } else {
                                        String str = stringExtra;
                                        DbBookDown.l(j, context2, str, MainUtil.p4(str), true);
                                        mainDownSvc2.K(-1234, j);
                                    }
                                    mainDownSvc2.N(j, z);
                                }
                            };
                            int i = MainDownSvc.V;
                            mainDownSvc.F(runnable);
                            return;
                        }
                        return;
                    case 3:
                        Runnable runnable2 = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.EventReceiver.5
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainDownSvc.a(MainDownSvc.this);
                            }
                        };
                        int i2 = MainDownSvc.V;
                        mainDownSvc.F(runnable2);
                        return;
                    case 4:
                        final long longExtra2 = intent.getLongExtra("EXTRA_ID", -1L);
                        if (longExtra2 != -1) {
                            final boolean booleanExtra2 = intent.getBooleanExtra("pause", false);
                            Runnable runnable3 = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.EventReceiver.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                    int i3 = MainDownSvc.V;
                                    mainDownSvc2.S(longExtra2, booleanExtra2);
                                }
                            };
                            int i3 = MainDownSvc.V;
                            mainDownSvc.F(runnable3);
                            return;
                        }
                        return;
                    case 5:
                        final long longExtra3 = intent.getLongExtra("EXTRA_ID", -1L);
                        if (longExtra3 != -1) {
                            Runnable runnable4 = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.EventReceiver.2
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                    int i4 = MainDownSvc.V;
                                    mainDownSvc2.U(longExtra3);
                                }
                            };
                            int i4 = MainDownSvc.V;
                            mainDownSvc.F(runnable4);
                            return;
                        }
                        return;
                    case 6:
                        if (!mainDownSvc.m) {
                            mainDownSvc.F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.EventReceiver.4
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainDownSvc.this.Q(true, false);
                                }
                            });
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ImageItem {

        /* renamed from: a, reason: collision with root package name */
        public String f16527a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f16528c;
        public String d;
        public String e;
        public boolean f;
        public int g;
    }

    /* loaded from: classes3.dex */
    public static class M3u8Item {

        /* renamed from: a, reason: collision with root package name */
        public String f16529a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f16530c;
        public String d;
        public int e;
        public String f;
        public String g;
        public String h;
        public long i;
        public JsonObject j;
    }

    /* loaded from: classes3.dex */
    public static class ParseItem {

        /* renamed from: a, reason: collision with root package name */
        public String f16531a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f16532c;
    }

    /* loaded from: classes3.dex */
    public static class SortDown implements Comparator<MainItem.ChildItem> {
        @Override // java.util.Comparator
        public final int compare(MainItem.ChildItem childItem, MainItem.ChildItem childItem2) {
            MainItem.ChildItem childItem3 = childItem;
            MainItem.ChildItem childItem4 = childItem2;
            if (childItem3 == null && childItem4 == null) {
                return 0;
            }
            if (childItem3 == null) {
                return 1;
            }
            if (childItem4 == null) {
                return -1;
            }
            return MainUtil.n(childItem3.h, childItem4.h, false);
        }
    }

    public static void R(Notification notification, int i) {
        if (notification == null) {
            return;
        }
        if (i == 1) {
            notification.flags = (notification.flags | 32) & (-17);
        } else if (i == 2) {
            notification.flags &= -49;
        } else {
            notification.flags = (notification.flags & (-33)) | 16;
        }
    }

    public static void a(MainDownSvc mainDownSvc) {
        mainDownSvc.B = false;
        mainDownSvc.C = null;
        String str = mainDownSvc.D;
        mainDownSvc.D = null;
        MainUtil.z(str);
        if (mainDownSvc.j == null || mainDownSvc.L == null) {
            return;
        }
        mainDownSvc.L = null;
        if (mainDownSvc.E < 0) {
            mainDownSvc.E = 0;
        }
        int i = mainDownSvc.F;
        int i2 = mainDownSvc.E;
        if (i > i2) {
            mainDownSvc.F = i2;
        }
        if (mainDownSvc.G > i2) {
            mainDownSvc.G = i2;
        }
        Intent intent = new Intent(mainDownSvc.j, (Class<?>) MainListDown.class);
        intent.addFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(mainDownSvc.j, u(), intent, 201326592);
        mainDownSvc.E = 0;
        mainDownSvc.F = 0;
        mainDownSvc.G = 0;
        mainDownSvc.H = 0;
        mainDownSvc.I = 0;
        NotificationCompat.Builder builder = new NotificationCompat.Builder(mainDownSvc.j, "Download");
        builder.u.icon = R.drawable.outline_download_done_white_24;
        builder.e = NotificationCompat.Builder.c(mainDownSvc.getString(R.string.down_image));
        builder.f = NotificationCompat.Builder.c(mainDownSvc.getString(R.string.success) + " (" + (mainDownSvc.F - mainDownSvc.G) + ")  " + mainDownSvc.getString(R.string.fail) + " (" + mainDownSvc.G + ")");
        builder.f(0, 0, false);
        builder.g = activity;
        builder.i = 1;
        builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
        Notification b = builder.b();
        R(b, 0);
        NotificationManager q = MainApp.q(mainDownSvc.j);
        if (q != null) {
            q.notify(2147483644, b);
        }
        mainDownSvc.L(true);
        mainDownSvc.V(false);
    }

    public static void b(MainDownSvc mainDownSvc, DownItem downItem) {
        if (downItem != null) {
            synchronized (mainDownSvc.f) {
                if (mainDownSvc.s == null) {
                    return;
                }
                try {
                    ArrayList arrayList = new ArrayList(mainDownSvc.s);
                    int size = arrayList.size();
                    Iterator it = arrayList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        DownItem downItem2 = (DownItem) it.next();
                        if (downItem2 != null && downItem2.b == downItem.b) {
                            it.remove();
                            size--;
                            break;
                        }
                    }
                    if (size > 0 && arrayList.size() > 0) {
                        mainDownSvc.s = arrayList;
                        mainDownSvc.j();
                    } else {
                        mainDownSvc.s = null;
                        mainDownSvc.V(false);
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public static void c(MainDownSvc mainDownSvc, DownItem downItem, String str) {
        if (downItem != null) {
            int i = downItem.f16518c;
            if (i != 2 && (PrefZone.l0 || i != 3)) {
                Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_COMPLETE");
                intent.putExtra("EXTRA_ID", downItem.b);
                intent.putExtra("EXTRA_STATUS", downItem.f16518c);
                intent.putExtra("EXTRA_TYPE", str);
                intent.putExtra("secretMode", downItem.f16517a);
                intent.setPackage(mainDownSvc.getPackageName());
                mainDownSvc.sendBroadcast(intent);
            }
            DownListListener downListListener = mainDownSvc.r;
            if (downListListener != null) {
                downListListener.b(downItem);
            }
        }
    }

    public static void d(MainDownSvc mainDownSvc, DownItem downItem) {
        Handler handler;
        boolean z;
        Handler handler2;
        if (downItem != null) {
            if (downItem.f16518c == 7 && !downItem.Q) {
                downItem.Q = true;
                if (downItem.R) {
                    z = mainDownSvc.C(downItem, downItem.S, downItem.l, true);
                } else {
                    String str = downItem.S;
                    String B = mainDownSvc.B(downItem, false);
                    if (!TextUtils.isEmpty(B)) {
                        if (downItem.I == 15) {
                            if (!TextUtils.isEmpty(str)) {
                                z = mainDownSvc.A(downItem, B, str);
                            } else {
                                z = mainDownSvc.C(downItem, B, downItem.l, true);
                            }
                        } else if (downItem.x > 0) {
                            String B2 = mainDownSvc.B(downItem, true);
                            if (!TextUtils.isEmpty(B2)) {
                                z = mainDownSvc.A(downItem, B, B2);
                            }
                        } else {
                            z = mainDownSvc.C(downItem, B, downItem.l, true);
                        }
                    }
                    z = false;
                }
                if (z) {
                    downItem.f16518c = 3;
                } else {
                    downItem.f16518c = 4;
                }
                mainDownSvc.D(downItem);
                if (z) {
                    MainUtil.z(downItem.m);
                }
                if (mainDownSvc.E(downItem) && (handler2 = mainDownSvc.o) != null) {
                    handler2.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.21
                        @Override // java.lang.Runnable
                        public final void run() {
                            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.21.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                    int i = MainDownSvc.V;
                                    DownItem downItem2 = null;
                                    try {
                                        synchronized (mainDownSvc2.i) {
                                            try {
                                                ArrayList arrayList = mainDownSvc2.w;
                                                if (arrayList != null && !arrayList.isEmpty()) {
                                                    downItem2 = (DownItem) mainDownSvc2.w.get(0);
                                                }
                                            } finally {
                                            }
                                        }
                                    } catch (Exception unused) {
                                    }
                                    MainDownSvc.d(mainDownSvc2, downItem2);
                                }
                            };
                            int i = MainDownSvc.V;
                            MainDownSvc.this.F(runnable);
                        }
                    }, 200L);
                    return;
                }
                return;
            }
            if (mainDownSvc.E(downItem) && (handler = mainDownSvc.o) != null) {
                handler.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.21
                    @Override // java.lang.Runnable
                    public final void run() {
                        Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.21.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                int i = MainDownSvc.V;
                                DownItem downItem2 = null;
                                try {
                                    synchronized (mainDownSvc2.i) {
                                        try {
                                            ArrayList arrayList = mainDownSvc2.w;
                                            if (arrayList != null && !arrayList.isEmpty()) {
                                                downItem2 = (DownItem) mainDownSvc2.w.get(0);
                                            }
                                        } finally {
                                        }
                                    }
                                } catch (Exception unused) {
                                }
                                MainDownSvc.d(mainDownSvc2, downItem2);
                            }
                        };
                        int i = MainDownSvc.V;
                        MainDownSvc.this.F(runnable);
                    }
                }, 200L);
            }
        }
    }

    public static void e(MainDownSvc mainDownSvc) {
        NotificationManager q;
        Context context = mainDownSvc.j;
        if (context != null && (q = MainApp.q(context)) != null) {
            synchronized (mainDownSvc.f16477c) {
                try {
                    if (mainDownSvc.A) {
                        return;
                    }
                    mainDownSvc.A = true;
                    Intent intent = new Intent(mainDownSvc.j, (Class<?>) MainListDown.class);
                    intent.addFlags(268435456);
                    PendingIntent activity = PendingIntent.getActivity(mainDownSvc.j, u(), intent, 201326592);
                    Intent intent2 = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_EXIT");
                    intent2.setPackage(mainDownSvc.getPackageName());
                    NotificationCompat.Action action = new NotificationCompat.Action(R.drawable.outline_close_black_24, mainDownSvc.getString(R.string.down_exit), PendingIntent.getBroadcast(mainDownSvc.j, u(), intent2, 201326592));
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(mainDownSvc.j, "Download");
                    builder.u.icon = R.drawable.baseline_file_download_white_24;
                    builder.e = NotificationCompat.Builder.c(mainDownSvc.getString(R.string.down_manager));
                    builder.g = activity;
                    builder.i = 1;
                    builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                    builder.a(action);
                    Notification b = builder.b();
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 26) {
                        q.createNotificationChannel(new NotificationChannel("Download", mainDownSvc.getString(R.string.download), 2));
                    }
                    try {
                        if (i >= 29) {
                            mainDownSvc.startForeground(2147483646, b, 1);
                        } else if (i >= 24) {
                            mainDownSvc.startForeground(2147483646, b);
                        } else {
                            q.notify(2147483646, b);
                        }
                    } catch (Exception unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void f(MainDownSvc mainDownSvc) {
        NotificationManager q;
        Context context = mainDownSvc.j;
        if (context == null || (q = MainApp.q(context)) == null) {
            return;
        }
        Intent o4 = MainUtil.o4(mainDownSvc.j);
        o4.addFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(mainDownSvc.j, 4, o4, 201326592);
        NotificationCompat.Action action = new NotificationCompat.Action(R.drawable.baseline_play_arrow_black_24, mainDownSvc.getString(R.string.resume), activity);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(mainDownSvc.j, "Download");
        builder.u.icon = R.drawable.baseline_file_download_white_24;
        builder.e = NotificationCompat.Builder.c(mainDownSvc.getString(R.string.down_timeout));
        builder.g = activity;
        builder.i = 1;
        builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
        builder.a(action);
        Notification b = builder.b();
        b.flags |= 48;
        if (Build.VERSION.SDK_INT >= 26) {
            q.createNotificationChannel(new NotificationChannel("Download", mainDownSvc.getString(R.string.download), 2));
        }
        q.notify(2147483643, b);
    }

    public static int m(DownItem downItem) {
        if (downItem == null) {
            return R.string.server_error;
        }
        if (downItem.f16518c == 5) {
            return R.string.invalid_url;
        }
        if (downItem.N) {
            return R.string.out_of_memory;
        }
        if (z(downItem.f)) {
            return R.string.live_fail;
        }
        return R.string.server_error;
    }

    public static void n(StringBuilder sb, long j) {
        if (j / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID == 0) {
            sb.append(j);
            sb.append(".0 B");
        } else if (j / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED == 0) {
            sb.append(String.format(Locale.US, "%.1f", Float.valueOf(((float) j) / 1024.0f)));
            sb.append(" KB");
        } else if (j / 1073741824 == 0) {
            sb.append(String.format(Locale.US, "%.1f", Float.valueOf(((float) j) / 1048576.0f)));
            sb.append(" MB");
        } else {
            sb.append(String.format(Locale.US, "%.1f", Float.valueOf(((float) j) / 1.0737418E9f)));
            sb.append(" GB");
        }
    }

    public static String o(String str) {
        return a.k(str, "f");
    }

    public static int s(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        if (str.startsWith("m3u8:")) {
            return 2;
        }
        if (str.startsWith("reddit:")) {
            return 4;
        }
        if ((str.startsWith("https://v.redd.it/") && str.contains("DASHPlaylist.mpd")) || str.startsWith("https://www.redditmedia.com/mediaembed/") || str.startsWith("https://cdn.embedly.com/widgets/media.html")) {
            return 3;
        }
        if (str.startsWith("kakao1:")) {
            return 5;
        }
        if (str.startsWith("kakao2:")) {
            return 6;
        }
        if (str.startsWith("dzen1:")) {
            return 7;
        }
        if (str.startsWith("dzen2:")) {
            return 8;
        }
        if (str.startsWith("vimeo1:")) {
            return 9;
        }
        if (str.startsWith("vimeo2:")) {
            return 10;
        }
        if (str.startsWith("tsfile:")) {
            return 11;
        }
        if (str.startsWith("tsfake:")) {
            return 12;
        }
        if (str.startsWith("m3fake:") || str.startsWith("izle:")) {
            return 1;
        }
        if (str.startsWith("torrent:")) {
            return 13;
        }
        if (str.startsWith("blob:")) {
            return 14;
        }
        if (str.startsWith("mix:")) {
            return 15;
        }
        if (!str.endsWith(".m3u8") && !"m3u8".equalsIgnoreCase(MainUtil.U3(str, false))) {
            return 0;
        }
        return 1;
    }

    public static int u() {
        int i = (V + 1) % 2147483636;
        V = i;
        if (i < 13) {
            V = 13;
        }
        return V;
    }

    public static String v(int i, int i2, String str) {
        StringBuilder v = a.v(str, "/");
        v.append(MainUtil.x1(i, i2));
        v.append("v");
        return v.toString();
    }

    public static boolean z(String str) {
        int length;
        String J1 = MainUtil.J1(str, true);
        if (!TextUtils.isEmpty(J1) && (length = J1.length() + 1) < str.length() && str.indexOf("live", length) != -1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(19:5|(3:6|7|(7:9|10|11|12|13|14|15))|(15:17|18|19|20|21|22|(2:23|(2:93|94)(2:25|(2:40|41)(5:27|(1:31)|32|(2:38|39)(1:36)|37)))|42|(3:(1:45)(1:91)|46|(1:89)(2:48|(2:63|64)(5:50|(1:54)|55|(2:61|62)(1:59)|60)))|92|90|65|(1:87)(1:68)|69|(6:71|(1:73)|74|(1:76)|77|78)(6:79|(1:81)|82|(1:84)|85|86))|98|18|19|20|21|22|(3:23|(0)(0)|37)|42|(0)|92|90|65|(0)|87|69|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00e8, code lost:
    
        r7 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bc A[Catch: Exception | OutOfMemoryError -> 0x00e8, TryCatch #3 {Exception | OutOfMemoryError -> 0x00e8, blocks: (B:22:0x007f, B:23:0x00ad, B:42:0x00cf, B:45:0x00db, B:46:0x00f5, B:48:0x00fb, B:65:0x0147, B:50:0x0112, B:54:0x0128, B:55:0x012a, B:57:0x0134, B:61:0x013a, B:91:0x00ec, B:25:0x00bc, B:27:0x015b, B:31:0x0174, B:32:0x0176, B:34:0x0180, B:38:0x0186), top: B:21:0x007f }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00ba A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A(com.mycompany.app.main.MainDownSvc.DownItem r38, java.lang.String r39, java.lang.String r40) {
        /*
            Method dump skipped, instructions count: 576
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.A(com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00ed A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, java.util.Comparator] */
    /* JADX WARN: Type inference failed for: r9v8, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String B(com.mycompany.app.main.MainDownSvc.DownItem r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.B(com.mycompany.app.main.MainDownSvc$DownItem, boolean):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean C(com.mycompany.app.main.MainDownSvc.DownItem r18, java.lang.String r19, java.lang.String r20, boolean r21) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            android.content.Context r3 = r0.j
            r4 = 0
            if (r3 == 0) goto La8
            if (r1 == 0) goto La8
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto La8
            boolean r3 = android.text.TextUtils.isEmpty(r20)
            if (r3 == 0) goto L1b
            goto La8
        L1b:
            r3 = 0
            java.io.InputStream r5 = com.mycompany.app.main.MainUtil.a1(r2)     // Catch: java.lang.Exception -> L91
            android.content.Context r6 = r0.j     // Catch: java.lang.Exception -> L52
            android.content.ContentResolver r6 = r6.getContentResolver()     // Catch: java.lang.Exception -> L52
            android.net.Uri r7 = android.net.Uri.parse(r20)     // Catch: java.lang.Exception -> L52
            java.io.OutputStream r3 = r6.openOutputStream(r7)     // Catch: java.lang.Exception -> L52
            java.io.File r6 = new java.io.File     // Catch: java.lang.Exception -> L52
            r6.<init>(r2)     // Catch: java.lang.Exception -> L52
            long r6 = r6.length()     // Catch: java.lang.Exception -> L52
            byte[] r8 = com.mycompany.app.main.MainUri.d(r6)     // Catch: java.lang.Exception -> L52
            int r9 = r8.length     // Catch: java.lang.Exception -> L52
            r10 = 1
            r11 = 0
            if (r21 == 0) goto L55
            r1.J = r10     // Catch: java.lang.Exception -> L52
            long r13 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L52
            r1.r = r13     // Catch: java.lang.Exception -> L52
            r1.t = r11     // Catch: java.lang.Exception -> L52
            r1.s = r11     // Catch: java.lang.Exception -> L52
            r1.o = r6     // Catch: java.lang.Exception -> L52
            r1.p = r11     // Catch: java.lang.Exception -> L52
            goto L55
        L52:
            r1 = r3
            r3 = r5
            goto L92
        L55:
            int r6 = r5.read(r8, r4, r9)     // Catch: java.lang.Exception -> L52
            r7 = -1
            if (r6 == r7) goto L8f
            long r13 = r1.p     // Catch: java.lang.Exception -> L52
            r15 = r11
            long r10 = (long) r6     // Catch: java.lang.Exception -> L52
            long r13 = r13 + r10
            r1.p = r13     // Catch: java.lang.Exception -> L52
            long r10 = r1.o     // Catch: java.lang.Exception -> L52
            int r7 = (r10 > r15 ? 1 : (r10 == r15 ? 0 : -1))
            if (r7 == 0) goto L6f
            int r7 = (r10 > r13 ? 1 : (r10 == r13 ? 0 : -1))
            if (r7 >= 0) goto L6f
            r1.o = r13     // Catch: java.lang.Exception -> L52
        L6f:
            r3.write(r8, r4, r6)     // Catch: java.lang.Exception -> L52
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L52
            long r10 = r1.t     // Catch: java.lang.Exception -> L52
            int r12 = (r10 > r15 ? 1 : (r10 == r15 ? 0 : -1))
            if (r12 == 0) goto L84
            long r10 = r6 - r10
            r12 = 800(0x320, double:3.953E-321)
            int r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r10 <= 0) goto L8c
        L84:
            r1.t = r6     // Catch: java.lang.Exception -> L52
            r17.d0(r18)     // Catch: java.lang.Exception -> L52
            r17.J(r18)     // Catch: java.lang.Exception -> L52
        L8c:
            r11 = r15
            r10 = 1
            goto L55
        L8f:
            r4 = 1
            goto L94
        L91:
            r1 = r3
        L92:
            r5 = r3
            r3 = r1
        L94:
            if (r3 == 0) goto L99
            r3.close()     // Catch: java.lang.Exception -> L99
        L99:
            if (r5 == 0) goto L9e
            r5.close()     // Catch: java.lang.Exception -> L9e
        L9e:
            if (r4 == 0) goto La8
            java.io.File r1 = new java.io.File
            r1.<init>(r2)
            r1.delete()
        La8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.C(com.mycompany.app.main.MainDownSvc$DownItem, java.lang.String, java.lang.String, boolean):boolean");
    }

    public final void D(final DownItem downItem) {
        Handler handler;
        MainUri.UriItem uriItem;
        int i;
        int d;
        MainUri.UriItem L0;
        if (downItem != null) {
            downItem.L = false;
            Context context = this.j;
            if (context == null || (handler = this.o) == null) {
                return;
            }
            int i2 = downItem.f16518c;
            if (i2 == 6) {
                x(downItem);
                return;
            }
            if (i2 == 3 || i2 == 5) {
                long g1 = MainUtil.g1(context, downItem.l);
                downItem.o = g1;
                downItem.p = g1;
                if (g1 == 0) {
                    if (downItem.I == 0 && !TextUtils.isEmpty(downItem.f) && downItem.f.startsWith("http://") && downItem.f.length() > 7) {
                        downItem.f = "https://" + downItem.f.substring(7);
                        downItem.f16518c = 1;
                        G(downItem);
                        return;
                    }
                    if (downItem.f16518c == 3) {
                        downItem.f16518c = 4;
                    }
                    MainUtil.A(this.j, downItem.l);
                } else if (downItem.f16518c == 5) {
                    downItem.f16518c = 3;
                }
            }
            if (downItem.e == 4 && downItem.f16518c == 3 && (L0 = MainUtil.L0(this.j, downItem)) != null) {
                Context context2 = this.j;
                long j = downItem.b;
                String str = downItem.l;
                DbBookDown.l(j, context2, str, MainUtil.p4(str), true);
                downItem.n = L0;
                downItem.l = L0.e;
                downItem.O = true;
            }
            DbBookDown.u(this.j, downItem.f16518c, downItem.e, downItem.f, downItem.g, downItem.n, downItem.o, downItem.p, false, downItem.f16517a, PrefSecret.m, false);
            if (downItem.f16518c == 3 && (uriItem = downItem.n) != null && (i = downItem.e) != 4 && i != 5 && i != 6 && ((d = DataUtil.d(uriItem.f)) == 1 || d == 2 || d == 3)) {
                DataUtil.a(this.j, d, uriItem);
            }
            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.23
                @Override // java.lang.Runnable
                public final void run() {
                    final String str2;
                    MainUri.UriItem uriItem2;
                    MainDownSvc mainDownSvc = MainDownSvc.this;
                    Context context3 = mainDownSvc.j;
                    if (context3 == null) {
                        return;
                    }
                    DownItem downItem2 = downItem;
                    int i3 = downItem2.f16518c;
                    if (i3 != 2) {
                        if (i3 == 3) {
                            if (!PrefZone.l0) {
                                MainUtil.e8(context3, R.string.down_complete);
                            }
                        } else if (i3 == 4) {
                            MainUtil.e8(mainDownSvc.j, MainDownSvc.m(downItem2));
                        } else if (i3 == 5) {
                            MainUtil.e8(context3, R.string.invalid_url);
                        }
                        if (downItem2.f16518c == 3 && (uriItem2 = downItem2.n) != null) {
                            str2 = MainUtil.u2(uriItem2.f);
                            mainDownSvc.F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.23.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                                    DownItem downItem3 = downItem;
                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                    if (mainDownSvc2.j != null) {
                                        mainDownSvc2.d0(downItem3);
                                        MainDownSvc.c(mainDownSvc2, downItem3, str2);
                                        if (downItem3.O) {
                                            downItem3.O = false;
                                            mainDownSvc2.L(true);
                                        }
                                        int i4 = downItem3.f16518c;
                                        if (i4 != 2 && i4 != 4) {
                                            MainDownSvc.b(mainDownSvc2, downItem3);
                                        }
                                    }
                                }
                            });
                        }
                    }
                    str2 = null;
                    mainDownSvc.F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.23.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass23 anonymousClass23 = AnonymousClass23.this;
                            DownItem downItem3 = downItem;
                            MainDownSvc mainDownSvc2 = MainDownSvc.this;
                            if (mainDownSvc2.j != null) {
                                mainDownSvc2.d0(downItem3);
                                MainDownSvc.c(mainDownSvc2, downItem3, str2);
                                if (downItem3.O) {
                                    downItem3.O = false;
                                    mainDownSvc2.L(true);
                                }
                                int i4 = downItem3.f16518c;
                                if (i4 != 2 && i4 != 4) {
                                    MainDownSvc.b(mainDownSvc2, downItem3);
                                }
                            }
                        }
                    });
                }
            }, 200L);
        }
    }

    public final boolean E(DownItem downItem) {
        boolean z;
        if (downItem != null) {
            try {
            } catch (Exception unused) {
            }
            synchronized (this.i) {
                try {
                    downItem.Q = false;
                    downItem.R = false;
                    downItem.S = null;
                    ArrayList arrayList = this.w;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        this.w.remove(downItem);
                        try {
                            synchronized (this.i) {
                                try {
                                    ArrayList arrayList2 = this.w;
                                    if (arrayList2 != null && !arrayList2.isEmpty()) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                } finally {
                                }
                            }
                            return z;
                        } catch (Exception unused2) {
                        }
                    }
                    return false;
                } finally {
                }
            }
        }
        return false;
    }

    public final void F(Runnable runnable) {
        ExecutorService executorService = this.R;
        if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
            executorService = MainApp.i(this.j);
            if (executorService == null) {
                return;
            } else {
                this.R = executorService;
            }
        }
        try {
            executorService.execute(runnable);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:134:0x00e0, code lost:
    
        if (r7 < r17) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0179 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0123  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(final com.mycompany.app.main.MainDownSvc.DownItem r31) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.G(com.mycompany.app.main.MainDownSvc$DownItem):void");
    }

    public final void H(final DownItem downItem, final M3u8Item m3u8Item, ParseItem parseItem, final List list) {
        boolean z;
        boolean z2;
        String str;
        if (!TextUtils.isEmpty(downItem.f) && !TextUtils.isEmpty(downItem.l) && this.j != null) {
            if (list != null && !list.isEmpty()) {
                downItem.w = list.size();
                int i = downItem.I;
                ArrayList arrayList = null;
                if (i == 1) {
                    if (parseItem != null) {
                        str = parseItem.f16531a;
                        z2 = parseItem.b;
                        z = parseItem.f16532c;
                    } else {
                        z = false;
                        z2 = false;
                        str = null;
                    }
                    if (z2) {
                        String k = a.k(str, "a1");
                        boolean g6 = MainUtil.g6(this.j, k, downItem.g);
                        if (!g6) {
                            k = a.k(str, "a2");
                            g6 = MainUtil.g6(this.j, k, downItem.g);
                        }
                        if (g6) {
                            String n = DownParseM3u8.n(k);
                            final DownParseM3u8 downParseM3u8 = new DownParseM3u8(this.j);
                            downParseM3u8.k(k, downItem.g, n, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSvc.16
                                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                                public final void a(List list2) {
                                    downParseM3u8.p();
                                    int i2 = MainDownSvc.V;
                                    MainDownSvc.this.I(downItem, list, list2);
                                }
                            });
                            return;
                        }
                    } else if (z && list.size() == 1) {
                        String str2 = (String) list.get(0);
                        if (!TextUtils.isEmpty(str2) && str2.endsWith("_mp4_hd.audio.mp4")) {
                            list.set(0, str2.replace("_mp4_hd.audio.mp4", "_mp4_hd.mp4"));
                            arrayList = new ArrayList();
                            arrayList.add(str2);
                        }
                    }
                } else if (i == 2) {
                    if (m3u8Item != null && !TextUtils.isEmpty(m3u8Item.f16530c)) {
                        final String n2 = DownParseM3u8.n(m3u8Item.f16529a);
                        final DownParseM3u8 downParseM3u82 = new DownParseM3u8(this.j);
                        downParseM3u82.m(null, m3u8Item.f16529a, downItem.g, n2, m3u8Item.f16530c, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSvc.17
                            @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                            public final void a(List list2) {
                                DownParseM3u8 downParseM3u83 = downParseM3u82;
                                List list3 = downParseM3u83.g;
                                DownItem downItem2 = downItem;
                                if (list3 != null && !list3.isEmpty()) {
                                    downItem2.j = downParseM3u83.c(m3u8Item.f16529a, downItem2.g, n2);
                                    downItem2.k = downParseM3u83.h;
                                }
                                downParseM3u83.p();
                                int i2 = MainDownSvc.V;
                                MainDownSvc.this.I(downItem2, list, list2);
                            }
                        });
                        return;
                    }
                } else if (i == 4) {
                    if (m3u8Item != null) {
                        arrayList = DownParseReddit.b(m3u8Item.f16530c);
                    }
                } else if (i == 6) {
                    if (m3u8Item != null) {
                        arrayList = DownParseKakao.b(this.j, m3u8Item.f16529a, downItem.g, m3u8Item.h, m3u8Item.f16530c, downItem, null);
                    }
                } else if (i == 8) {
                    if (m3u8Item != null) {
                        arrayList = DownParseDzen.c(this.j, m3u8Item.f16529a, downItem.g, m3u8Item.h, m3u8Item.f16530c, downItem, null);
                    }
                } else if (i == 10 && m3u8Item != null) {
                    arrayList = DownParseVimeo.d(m3u8Item.j, m3u8Item.f, null, true);
                }
                I(downItem, list, arrayList);
                return;
            }
            downItem.f16518c = 5;
            D(downItem);
        }
    }

    public final void I(final DownItem downItem, List list, List list2) {
        int i;
        List list3;
        byte[] bArr;
        String str;
        EncItem c2;
        EncItem c3;
        if (!TextUtils.isEmpty(downItem.f) && !TextUtils.isEmpty(downItem.l) && this.j != null) {
            long j = downItem.o;
            int i2 = downItem.u;
            if (list2 != null) {
                i = list2.size();
            } else {
                i = 0;
            }
            downItem.x = i;
            if (i > 0) {
                list.addAll(list2);
            }
            int size = list.size();
            downItem.v = size;
            if (downItem.u < 2) {
                downItem.u = 1;
            }
            if (downItem.u > size) {
                downItem.u = size;
            }
            int i3 = downItem.u;
            int i4 = size / i3;
            int i5 = size % i3;
            if (i5 != 0) {
                i4++;
            }
            if (i4 == 0 && i5 == 0) {
                downItem.f16518c = 4;
                D(downItem);
                return;
            }
            String l = l(downItem.l);
            downItem.m = l;
            if (TextUtils.isEmpty(l)) {
                downItem.f16518c = 4;
                D(downItem);
                return;
            }
            if (downItem.o == 0) {
                list3 = list;
                downItem.o = MainUtil.w0(this.j, (String) list3.get(downItem.w / 2), downItem.g) * downItem.w;
                int i6 = downItem.x;
                if (i6 > 0) {
                    long w0 = MainUtil.w0(this.j, (String) list2.get(i6 / 2), downItem.g);
                    downItem.E = w0;
                    downItem.o = (w0 * downItem.x) + downItem.o;
                }
            } else {
                list3 = list;
            }
            long j2 = downItem.o;
            if (j2 != j || downItem.u != i2) {
                DbBookDown.o(this.j, downItem.b, j2, downItem.u);
            }
            downItem.y = 0;
            downItem.z = 0;
            downItem.C = 0L;
            downItem.D = 0L;
            downItem.p = 0L;
            downItem.r = System.currentTimeMillis();
            downItem.t = 0L;
            d0(downItem);
            downItem.L = false;
            if (downItem.f16518c == 1) {
                int y0 = MainUtil.y0(downItem.v);
                final DownSaveListener downSaveListener = new DownSaveListener() { // from class: com.mycompany.app.main.MainDownSvc.18
                    @Override // com.mycompany.app.main.MainDownSvc.DownSaveListener
                    public final Handler a() {
                        return MainDownSvc.this.o;
                    }

                    @Override // com.mycompany.app.main.MainDownSvc.DownSaveListener
                    public final void b(DownItem downItem2) {
                        if (downItem2 == null || downItem2.f16518c == 4) {
                            return;
                        }
                        downItem2.f16518c = 4;
                        int i7 = MainDownSvc.V;
                        MainDownSvc.this.D(downItem2);
                    }

                    @Override // com.mycompany.app.main.MainDownSvc.DownSaveListener
                    public final void c(DownItem downItem2) {
                        if (downItem2 == null || downItem2.f16518c == 2) {
                            return;
                        }
                        downItem2.f16518c = 2;
                        int i7 = MainDownSvc.V;
                        MainDownSvc.this.D(downItem2);
                    }

                    @Override // com.mycompany.app.main.MainDownSvc.DownSaveListener
                    public final void d(DownItem downItem2) {
                        if (downItem2 == null || downItem2.f16518c != 1) {
                            return;
                        }
                        int i7 = MainDownSvc.V;
                        MainDownSvc mainDownSvc = MainDownSvc.this;
                        mainDownSvc.d0(downItem2);
                        mainDownSvc.J(downItem2);
                    }

                    @Override // com.mycompany.app.main.MainDownSvc.DownSaveListener
                    public final void e(DownItem downItem2) {
                        MainDownSvc mainDownSvc;
                        Handler handler;
                        int i7 = MainDownSvc.V;
                        if (downItem2 == null || downItem2.f16518c != 1 || (handler = (mainDownSvc = MainDownSvc.this).o) == null) {
                            return;
                        }
                        handler.postDelayed(new AnonymousClass20(downItem2), 200L);
                    }
                };
                Context context = this.j;
                List list4 = downItem.h;
                if (list4 != null && !list4.isEmpty() && (c3 = DownSaveSplit.c(0, downItem.h)) != null && (bArr = DownSaveSplit.d(context, c3.b, downItem.g)) != null) {
                    c3.f16520c = bArr;
                    str = c3.b;
                } else {
                    bArr = null;
                    str = null;
                }
                List list5 = downItem.j;
                if (list5 != null && !list5.isEmpty() && (c2 = DownSaveSplit.c(0, downItem.j)) != null) {
                    if (MainUtil.q5(c2.b, str)) {
                        c2.f16520c = bArr;
                    } else {
                        byte[] d = DownSaveSplit.d(context, c2.b, downItem.g);
                        if (d != null) {
                            c2.f16520c = d;
                        }
                    }
                }
                int i7 = downItem.u;
                final int i8 = 0;
                while (i8 < i7 && downItem.f16518c == 1) {
                    final int i9 = y0;
                    final int i10 = i4;
                    final List list6 = list3;
                    F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.19
                        @Override // java.lang.Runnable
                        public final void run() {
                            DownSaveListener downSaveListener2;
                            int i11;
                            boolean z;
                            boolean z2;
                            boolean z3;
                            Context context2 = MainDownSvc.this.j;
                            int i12 = i9;
                            DownItem downItem2 = downItem;
                            if (downItem2 != null && (downSaveListener2 = downSaveListener) != null) {
                                List list7 = list6;
                                int size2 = list7.size();
                                for (int i13 = 0; i13 < i10 && downItem2.f16518c == 1 && (i11 = (downItem2.u * i13) + i8) < size2; i13++) {
                                    int i14 = downItem2.w;
                                    if (i11 >= i14) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (downItem2.I == 10 && (i11 == 0 || i11 == i14)) {
                                        z2 = z;
                                        z3 = true;
                                    } else {
                                        z2 = z;
                                        z3 = false;
                                    }
                                    try {
                                        DownSaveSplit.a(context2, downItem2, (String) list7.get(i11), i11, i12, z2, z3, 0, 0, false, downSaveListener2);
                                    } catch (OutOfMemoryError unused) {
                                        downItem2.N = true;
                                        downSaveListener2.b(downItem2);
                                        return;
                                    }
                                }
                                if (downItem2.f16518c == 1) {
                                    downSaveListener2.e(downItem2);
                                }
                            }
                        }
                    });
                    i8++;
                    list3 = list;
                    y0 = i9;
                }
                Handler handler = this.o;
                if (handler != null) {
                    handler.postDelayed(new AnonymousClass30(downItem), 1000L);
                }
            }
        }
    }

    public final void J(DownItem downItem) {
        DownListListener downListListener = this.r;
        if (downListListener != null && downItem != null) {
            downListListener.e(downItem);
        }
    }

    public final void K(int i, long j) {
        DownListListener downListListener = this.r;
        if (downListListener == null) {
            return;
        }
        downListListener.a(i, j);
    }

    public final void L(boolean z) {
        DownListListener downListListener = this.r;
        if (downListListener == null) {
            return;
        }
        downListListener.f(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0114  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.mycompany.app.main.MainUri$UriItem] */
    /* JADX WARN: Type inference failed for: r4v6, types: [com.mycompany.app.main.MainDownSvc$DownItem, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M(int r18, long r19) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.M(int, long):void");
    }

    public final void N(long j, boolean z) {
        if (this.j != null) {
            synchronized (this.f) {
                try {
                    ArrayList arrayList = this.s;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        try {
                            ArrayList arrayList2 = this.s;
                            int size = arrayList2.size();
                            int i = 0;
                            while (true) {
                                if (i >= size) {
                                    break;
                                }
                                Object obj = arrayList2.get(i);
                                i++;
                                DownItem downItem = (DownItem) obj;
                                if (downItem != null && downItem.b == j) {
                                    if (z) {
                                        downItem.f16518c = 3;
                                    } else {
                                        downItem.f16518c = 6;
                                    }
                                    TorrentStream torrentStream = downItem.T;
                                    if (torrentStream != null) {
                                        torrentStream.d();
                                    }
                                    x(downItem);
                                    ArrayList arrayList3 = new ArrayList(this.s);
                                    int size2 = arrayList3.size();
                                    Iterator it = arrayList3.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        DownItem downItem2 = (DownItem) it.next();
                                        if (downItem2 != null && downItem2.b == downItem.b) {
                                            it.remove();
                                            size2--;
                                            break;
                                        }
                                    }
                                    if (size2 > 0 && arrayList3.size() > 0) {
                                        this.s = arrayList3;
                                        j();
                                    } else {
                                        this.s = null;
                                        V(false);
                                    }
                                }
                            }
                        } catch (Exception unused) {
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void O() {
        if (!this.k) {
            return;
        }
        this.k = false;
        EventReceiver eventReceiver = this.M;
        if (eventReceiver != null) {
            try {
                unregisterReceiver(eventReceiver);
                this.M = null;
            } catch (Exception unused) {
            }
        }
        synchronized (this.f16477c) {
            try {
                if (this.A) {
                    this.A = false;
                    NotificationManager q = MainApp.q(this.j);
                    if (q != null) {
                        q.cancel(2147483646);
                    }
                }
            } finally {
            }
        }
        w();
        MainApp p = MainApp.p(this.j);
        if (p != null) {
            p.u = false;
            p.v = null;
            p.w = false;
            DownListListener downListListener = p.G;
            if (downListListener != null) {
                downListListener.c();
            }
        }
        MainUtil.R6(this.o);
        this.o = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
    }

    public final void P(final DownItem downItem) {
        downItem.N = false;
        F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.10
            /* JADX WARN: Type inference failed for: r6v4, types: [java.lang.Object, com.mycompany.app.main.MainDownSvc$ParseItem] */
            @Override // java.lang.Runnable
            public final void run() {
                M3u8Item m3u8Item;
                ArrayList arrayList;
                M3u8Item b;
                DownItem downItem2;
                boolean startsWith;
                final DownItem downItem3 = downItem;
                int i = downItem3.I;
                final MainDownSvc mainDownSvc = MainDownSvc.this;
                if (i != 0 && i != 15) {
                    if (i == 13) {
                        int i2 = MainDownSvc.V;
                        if (!TextUtils.isEmpty(downItem3.f) && !TextUtils.isEmpty(downItem3.l) && mainDownSvc.j != null && mainDownSvc.o != null) {
                            String str = downItem3.f;
                            if (!TextUtils.isEmpty(str)) {
                                if (str.startsWith("torrent:")) {
                                    str = str.substring(8);
                                    if (TextUtils.isEmpty(str)) {
                                        return;
                                    }
                                }
                                String l = mainDownSvc.l(downItem3.l);
                                downItem3.m = l;
                                if (TextUtils.isEmpty(l)) {
                                    downItem3.f16518c = 4;
                                    mainDownSvc.D(downItem3);
                                    return;
                                }
                                downItem3.r = System.currentTimeMillis();
                                downItem3.t = 0L;
                                mainDownSvc.Y(downItem3);
                                TorrentStream torrentStream = new TorrentStream(downItem3.m, new TorrentStream.TorrentListener() { // from class: com.mycompany.app.main.MainDownSvc.22
                                    @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
                                    public final void a(Torrent torrent) {
                                        DownItem downItem4 = downItem3;
                                        if (downItem4.f16518c != 1) {
                                            return;
                                        }
                                        downItem4.t = System.currentTimeMillis();
                                        int i3 = MainDownSvc.V;
                                        MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                        mainDownSvc2.d0(downItem4);
                                        mainDownSvc2.J(downItem4);
                                    }

                                    @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
                                    public final void b(final Torrent torrent) {
                                        DownItem downItem4 = downItem3;
                                        int i3 = downItem4.f16518c;
                                        if (i3 != 3 && i3 != 4 && i3 != 7) {
                                            downItem4.f16518c = 7;
                                            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.22.1
                                                /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
                                                    java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
                                                    	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
                                                    	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
                                                    	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
                                                    	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
                                                    	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
                                                    */
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    /*
                                                        Method dump skipped, instructions count: 488
                                                        To view this dump add '--comments-level debug' option
                                                    */
                                                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.AnonymousClass22.AnonymousClass1.run():void");
                                                }
                                            };
                                            int i4 = MainDownSvc.V;
                                            MainDownSvc.this.F(runnable);
                                        }
                                    }

                                    @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
                                    public final void c() {
                                        DownItem downItem4 = downItem3;
                                        int i3 = downItem4.f16518c;
                                        if (i3 != 3 && i3 != 4 && i3 != 7) {
                                            downItem4.f16518c = 7;
                                            Runnable runnable = new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.22.2
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    AnonymousClass22 anonymousClass22 = AnonymousClass22.this;
                                                    DownItem downItem5 = downItem3;
                                                    downItem5.f16518c = 4;
                                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                                    int i4 = MainDownSvc.V;
                                                    mainDownSvc2.D(downItem5);
                                                    MainUtil.z(downItem5.m);
                                                }
                                            };
                                            int i4 = MainDownSvc.V;
                                            MainDownSvc.this.F(runnable);
                                        }
                                    }

                                    @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
                                    public final void d(Torrent torrent, float f) {
                                        DownItem downItem4 = downItem3;
                                        if (downItem4.f16518c == 1) {
                                            long j = downItem4.o;
                                            if (j != 0) {
                                                long j2 = ((float) j) * f;
                                                downItem4.p = j2;
                                                if (j < j2) {
                                                    downItem4.o = j2;
                                                }
                                            }
                                            long currentTimeMillis = System.currentTimeMillis();
                                            if (currentTimeMillis - downItem4.t > 800) {
                                                downItem4.t = currentTimeMillis;
                                                int i3 = MainDownSvc.V;
                                                MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                                mainDownSvc2.d0(downItem4);
                                                mainDownSvc2.J(downItem4);
                                            }
                                        }
                                    }

                                    @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
                                    public final void e() {
                                        DownItem downItem4 = downItem3;
                                        if (downItem4.m == null) {
                                            return;
                                        }
                                        Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_DELETE");
                                        intent.putExtra("EXTRA_PATH", downItem4.m);
                                        MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                        intent.setPackage(mainDownSvc2.getPackageName());
                                        mainDownSvc2.sendBroadcast(intent);
                                    }
                                });
                                downItem3.T = torrentStream;
                                torrentStream.c(mainDownSvc.j, str, downItem3.g);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (i == 14) {
                        int i3 = MainDownSvc.V;
                        if (!TextUtils.isEmpty(downItem3.f) && !TextUtils.isEmpty(downItem3.l) && mainDownSvc.j != null && mainDownSvc.o != null) {
                            mainDownSvc.Y(downItem3);
                            downItem3.n.getClass();
                            if (TextUtils.isEmpty(null)) {
                                downItem3.f16518c = 4;
                                mainDownSvc.D(downItem3);
                                return;
                            }
                            throw null;
                        }
                        return;
                    }
                    int i4 = MainDownSvc.V;
                    if (!TextUtils.isEmpty(downItem3.f) && !TextUtils.isEmpty(downItem3.l) && mainDownSvc.j != null && mainDownSvc.o != null) {
                        downItem3.L = true;
                        mainDownSvc.Y(downItem3);
                        int i5 = downItem3.I;
                        if (i5 == 1) {
                            final ?? obj = new Object();
                            final String M0 = MainUtil.M0(downItem3.f);
                            if (downItem3.f.startsWith("izle:")) {
                                obj.f16531a = M0;
                                obj.b = true;
                            } else if (downItem3.f.endsWith("_mp4_hd.audio.m3u8")) {
                                obj.f16532c = true;
                            }
                            final String n = DownParseM3u8.n(M0);
                            final DownParseM3u8 downParseM3u8 = new DownParseM3u8(mainDownSvc.j);
                            String str2 = downItem3.f;
                            if (TextUtils.isEmpty(str2)) {
                                startsWith = false;
                            } else {
                                startsWith = str2.startsWith("m3fake:");
                            }
                            downParseM3u8.f15574c = startsWith;
                            downParseM3u8.k(M0, downItem3.g, n, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSvc.14
                                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                                public final void a(List list) {
                                    MainDownSvc mainDownSvc2 = MainDownSvc.this;
                                    DownParseM3u8 downParseM3u82 = downParseM3u8;
                                    DownItem downItem4 = downItem3;
                                    if ((list == null || list.isEmpty()) && downParseM3u82.f15574c) {
                                        downParseM3u82.p();
                                        downItem4.f = MainUtil.M0(downItem4.f);
                                        downItem4.I = 0;
                                        downItem4.f16518c = 1;
                                        int i6 = MainDownSvc.V;
                                        mainDownSvc2.G(downItem4);
                                        return;
                                    }
                                    if (downParseM3u82.e) {
                                        boolean z = MainConst.f16452a;
                                        downItem4.g = null;
                                    }
                                    List list2 = downParseM3u82.g;
                                    if (list2 != null && !list2.isEmpty()) {
                                        downItem4.h = downParseM3u82.c(M0, downItem4.g, n);
                                        downItem4.i = downParseM3u82.h;
                                    }
                                    downParseM3u82.p();
                                    int i7 = MainDownSvc.V;
                                    mainDownSvc2.H(downItem4, null, obj, list);
                                }
                            });
                            return;
                        }
                        if (i5 == 2) {
                            final M3u8Item l2 = DownParseM3u8.l(downItem3.f);
                            if (l2 == null) {
                                mainDownSvc.H(downItem3, l2, null, null);
                                return;
                            }
                            final String n2 = DownParseM3u8.n(l2.f16529a);
                            final DownParseM3u8 downParseM3u82 = new DownParseM3u8(mainDownSvc.j);
                            downParseM3u82.m(null, l2.f16529a, downItem3.g, n2, l2.b, new DownParseM3u8.DownParseListener() { // from class: com.mycompany.app.main.MainDownSvc.15
                                @Override // com.mycompany.app.down.DownParseM3u8.DownParseListener
                                public final void a(List list) {
                                    DownParseM3u8 downParseM3u83 = downParseM3u82;
                                    boolean z = downParseM3u83.e;
                                    DownItem downItem4 = downItem3;
                                    if (z) {
                                        boolean z2 = MainConst.f16452a;
                                        downItem4.g = null;
                                    }
                                    List list2 = downParseM3u83.g;
                                    M3u8Item m3u8Item2 = l2;
                                    if (list2 != null && !list2.isEmpty()) {
                                        downItem4.h = downParseM3u83.c(m3u8Item2.f16529a, downItem4.g, n2);
                                        downItem4.i = downParseM3u83.h;
                                    }
                                    downParseM3u83.p();
                                    int i6 = MainDownSvc.V;
                                    MainDownSvc.this.H(downItem4, m3u8Item2, null, list);
                                }
                            });
                            return;
                        }
                        if (i5 == 4) {
                            m3u8Item = DownParseReddit.a(downItem3.f);
                            if (m3u8Item != null) {
                                arrayList = DownParseReddit.b(m3u8Item.b);
                            }
                            arrayList = null;
                        } else {
                            if (i5 == 6) {
                                b = DownParseKakao.a(downItem3.f);
                                if (b != null) {
                                    downItem2 = downItem3;
                                    arrayList = DownParseKakao.b(mainDownSvc.j, b.f16529a, downItem3.g, b.g, b.b, downItem2, null);
                                    downItem3 = downItem2;
                                }
                                arrayList = null;
                            } else if (i5 == 8) {
                                b = DownParseDzen.b(downItem3.f);
                                if (b != null) {
                                    downItem2 = downItem3;
                                    arrayList = DownParseDzen.c(mainDownSvc.j, b.f16529a, downItem3.g, b.g, b.b, downItem2, null);
                                    downItem3 = downItem2;
                                }
                                arrayList = null;
                            } else if (i5 == 10) {
                                m3u8Item = DownParseVimeo.b(mainDownSvc.j, downItem3.f, downItem3.g);
                                if (m3u8Item != null) {
                                    arrayList = DownParseVimeo.d(m3u8Item.j, m3u8Item.f, m3u8Item.b, false);
                                }
                                arrayList = null;
                            } else {
                                if (i5 == 11) {
                                    arrayList = DownParseTsfile.a(mainDownSvc.j, downItem3.f, downItem3.g, downItem3, false, null);
                                } else if (i5 == 12) {
                                    arrayList = DownParseTsfile.a(mainDownSvc.j, downItem3.f, downItem3.g, downItem3, true, null);
                                } else {
                                    m3u8Item = null;
                                    arrayList = null;
                                }
                                m3u8Item = null;
                            }
                            m3u8Item = b;
                        }
                        mainDownSvc.H(downItem3, m3u8Item, null, arrayList);
                        return;
                    }
                    return;
                }
                int i6 = MainDownSvc.V;
                mainDownSvc.G(downItem3);
            }
        });
    }

    public final void Q(boolean z, boolean z2) {
        boolean z3;
        if (!this.m) {
            ArrayList arrayList = this.s;
            this.s = null;
            if (arrayList != null && !arrayList.isEmpty()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!z3 && !this.B) {
                V(false);
                return;
            }
            Context context = this.j;
            if (context == null) {
                return;
            }
            this.m = true;
            if (z2 && !PrefWeb.Z) {
                PrefWeb.Z = true;
                PrefSet.d(14, context, "mCheckDown", true);
            }
            synchronized (this.f) {
                try {
                    try {
                        b0();
                        if (z3) {
                            int size = arrayList.size();
                            int i = 0;
                            while (i < size) {
                                Object obj = arrayList.get(i);
                                i++;
                                DownItem downItem = (DownItem) obj;
                                if (downItem != null) {
                                    int i2 = downItem.f16518c;
                                    if (i2 == 1) {
                                        downItem.H = true;
                                        if (z) {
                                            downItem.f16518c = 6;
                                            TorrentStream torrentStream = downItem.T;
                                            if (torrentStream != null) {
                                                torrentStream.d();
                                            }
                                            Context context2 = this.j;
                                            long j = downItem.b;
                                            String str = downItem.l;
                                            DbBookDown.l(j, context2, str, MainUtil.p4(str), true);
                                            MainUtil.z(downItem.m);
                                        } else {
                                            downItem.f16518c = 2;
                                            TorrentStream torrentStream2 = downItem.T;
                                            if (torrentStream2 != null) {
                                                torrentStream2.b();
                                            }
                                            DbBookDown.n(this.j, downItem.b, downItem.o, downItem.p, true);
                                        }
                                    } else if (i2 == 2 && downItem.K) {
                                        downItem.H = true;
                                        DbBookDown.n(this.j, downItem.b, 0L, 0L, true);
                                    }
                                    x(downItem);
                                    downItem.H = false;
                                }
                            }
                        }
                        L(true);
                        V(z2);
                    } catch (Exception unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.m = false;
        }
    }

    public final void S(long j, boolean z) {
        boolean z2;
        long j2;
        synchronized (this.f) {
            ArrayList arrayList = this.s;
            if (arrayList != null && !arrayList.isEmpty()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.z >= 500) {
                    this.z = currentTimeMillis;
                    synchronized (this.f) {
                        try {
                            ArrayList arrayList2 = this.s;
                            int size = arrayList2.size();
                            z2 = false;
                            int i = 0;
                            while (true) {
                                if (i >= size) {
                                    break;
                                }
                                Object obj = arrayList2.get(i);
                                i++;
                                DownItem downItem = (DownItem) obj;
                                if (downItem != null && downItem.b == j) {
                                    if (!downItem.H && !downItem.J) {
                                        if (z) {
                                            if (downItem.f16518c == 1) {
                                                downItem.H = true;
                                                downItem.f16518c = 2;
                                                TorrentStream torrentStream = downItem.T;
                                                if (torrentStream != null) {
                                                    torrentStream.b();
                                                }
                                                j2 = j;
                                                DbBookDown.n(this.j, j2, downItem.o, downItem.p, z);
                                                K(downItem.f16518c, j);
                                                d0(downItem);
                                                downItem.H = false;
                                            } else {
                                                downItem.H = false;
                                            }
                                        } else {
                                            j2 = j;
                                            Context context = this.j;
                                            if (downItem.f16518c == 2) {
                                                downItem.H = true;
                                                downItem.f16518c = 1;
                                                downItem.K = false;
                                                DbBookDown.n(context, j2, downItem.o, downItem.p, z);
                                                K(downItem.f16518c, j);
                                                P(downItem);
                                                downItem.H = false;
                                            }
                                            downItem.H = false;
                                        }
                                    } else {
                                        Handler handler = this.o;
                                        if (handler != null) {
                                            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.26
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MainUtil.e8(MainDownSvc.this.j, R.string.wait_retry);
                                                }
                                            });
                                        }
                                    }
                                    z2 = true;
                                }
                            }
                        } finally {
                        }
                    }
                    if (!z2 && !z) {
                        M(1, j);
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r14v1, types: [java.lang.Object, com.mycompany.app.main.MainUri$UriItem] */
    /* JADX WARN: Type inference failed for: r2v7, types: [com.mycompany.app.main.MainDownSvc$DownItem, java.lang.Object] */
    public final void T() {
        Cursor cursor;
        MainDownSvc mainDownSvc = this;
        Context context = mainDownSvc.j;
        if (context != null) {
            ArrayList arrayList = null;
            try {
                cursor = DbUtil.g(DbBookDown.b(context).getWritableDatabase(), "DbBookDown_table", null, "_status!=?", new String[]{"3"}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            int columnIndex = cursor.getColumnIndex("_secret");
                            int columnIndex2 = cursor.getColumnIndex("_status");
                            int columnIndex3 = cursor.getColumnIndex("_url");
                            int columnIndex4 = cursor.getColumnIndex("_rsv1");
                            int columnIndex5 = cursor.getColumnIndex("_dir");
                            int columnIndex6 = cursor.getColumnIndex("_dname");
                            int columnIndex7 = cursor.getColumnIndex("_path");
                            int columnIndex8 = cursor.getColumnIndex("_name");
                            int columnIndex9 = cursor.getColumnIndex("_size");
                            int columnIndex10 = cursor.getColumnIndex("_fast");
                            do {
                                try {
                                    int i = cursor.getInt(columnIndex2);
                                    if (i != 3 && i != 4 && i != 5) {
                                        ?? obj = new Object();
                                        obj.f16986c = cursor.getString(columnIndex5);
                                        obj.d = cursor.getString(columnIndex6);
                                        obj.e = cursor.getString(columnIndex7);
                                        obj.f = cursor.getString(columnIndex8);
                                        ArrayList arrayList2 = arrayList;
                                        try {
                                            obj.h = cursor.getLong(columnIndex9);
                                            ?? obj2 = new Object();
                                            obj2.n = obj;
                                            boolean z = true;
                                            if (cursor.getInt(columnIndex) != 1) {
                                                z = false;
                                            }
                                            obj2.f16517a = z;
                                            obj2.f = cursor.getString(columnIndex3);
                                            obj2.g = cursor.getString(columnIndex4);
                                            obj2.u = cursor.getInt(columnIndex10);
                                            if (arrayList2 == null) {
                                                arrayList = new ArrayList();
                                            } else {
                                                arrayList = arrayList2;
                                            }
                                            arrayList.add(obj2);
                                        } catch (Exception unused) {
                                            arrayList = arrayList2;
                                        }
                                    } else {
                                        arrayList = arrayList;
                                    }
                                } catch (Exception unused2) {
                                }
                            } while (cursor.moveToNext());
                        }
                    } catch (Exception unused3) {
                    }
                }
            } catch (Exception unused4) {
                cursor = null;
            }
            ArrayList arrayList3 = arrayList;
            if (cursor != null) {
                try {
                    cursor.close();
                } catch (Exception unused5) {
                }
            }
            if (arrayList3 != null && !arrayList3.isEmpty()) {
                int size = arrayList3.size();
                int i2 = 0;
                while (i2 < size) {
                    int i3 = i2 + 1;
                    DownItem downItem = (DownItem) arrayList3.get(i2);
                    if (downItem != null) {
                        mainDownSvc.i(downItem.f, downItem.g, downItem.n, downItem.u, downItem.f16517a, true);
                        mainDownSvc = this;
                    }
                    i2 = i3;
                }
            }
        }
    }

    public final void U(long j) {
        boolean z;
        synchronized (this.f) {
            ArrayList arrayList = this.s;
            if (arrayList != null && !arrayList.isEmpty()) {
                long currentTimeMillis = System.currentTimeMillis();
                if (currentTimeMillis - this.z >= 500) {
                    this.z = currentTimeMillis;
                    synchronized (this.f) {
                        try {
                            ArrayList arrayList2 = this.s;
                            int size = arrayList2.size();
                            z = false;
                            int i = 0;
                            while (true) {
                                if (i >= size) {
                                    break;
                                }
                                Object obj = arrayList2.get(i);
                                i++;
                                DownItem downItem = (DownItem) obj;
                                if (downItem != null && downItem.b == j) {
                                    if (downItem.H) {
                                        Handler handler = this.o;
                                        if (handler != null) {
                                            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.29
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    MainUtil.e8(MainDownSvc.this.j, R.string.wait_retry);
                                                }
                                            });
                                        }
                                    } else {
                                        if (downItem.f16518c != 1) {
                                            downItem.H = true;
                                            downItem.f16518c = 1;
                                            downItem.K = false;
                                            DbBookDown.n(this.j, j, downItem.o, downItem.p, false);
                                            K(downItem.f16518c, j);
                                            P(downItem);
                                        }
                                        downItem.H = false;
                                    }
                                    z = true;
                                }
                            }
                        } finally {
                        }
                    }
                    if (!z) {
                        M(2, j);
                    }
                }
            }
        }
    }

    public final void V(boolean z) {
        if (this.s == null && !this.B) {
            if (this.l) {
                this.n = false;
            } else if (!this.n) {
                this.n = true;
                this.T = z;
                F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainDownSvc mainDownSvc = MainDownSvc.this;
                        boolean z2 = mainDownSvc.T;
                        if (mainDownSvc.l) {
                            mainDownSvc.n = false;
                            return;
                        }
                        mainDownSvc.O();
                        if (z2) {
                            MainDownSvc.f(mainDownSvc);
                        }
                        try {
                            mainDownSvc.stopSelf();
                        } catch (Exception unused) {
                        }
                        mainDownSvc.n = false;
                    }
                });
            }
        }
    }

    public final void W(boolean z) {
        Handler handler;
        long j = this.p;
        Runnable runnable = this.S;
        if (j != 0 && (handler = this.o) != null) {
            handler.removeCallbacks(runnable);
        }
        if (!z) {
            this.p = 0L;
            return;
        }
        this.p = System.currentTimeMillis();
        if (this.o == null) {
            this.o = new Handler(Looper.getMainLooper());
        }
        Handler handler2 = this.o;
        if (handler2 != null) {
            handler2.postDelayed(runnable, 600000L);
        }
    }

    public final void X(DownItem downItem) {
        NotificationManager q;
        String str;
        MainUri.UriItem uriItem;
        Context context = this.j;
        if (context == null || (q = MainApp.q(context)) == null) {
            return;
        }
        if (downItem != null && (uriItem = downItem.n) != null) {
            str = uriItem.f;
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str)) {
            str = getString(R.string.down_fail);
        }
        int m = m(downItem);
        Intent intent = new Intent(this.j, (Class<?>) MainListDown.class);
        intent.putExtra("EXTRA_ID", downItem.b);
        intent.addFlags(268435456);
        PendingIntent activity = PendingIntent.getActivity(this.j, u(), intent, 201326592);
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this.j, "Download");
        builder.u.icon = R.drawable.outline_error_white_24;
        builder.e = NotificationCompat.Builder.c(str);
        builder.f = NotificationCompat.Builder.c(getString(m));
        builder.g = activity;
        builder.i = 1;
        builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
        Bitmap B3 = MainUtil.B3(this.j, R.drawable.baseline_error_gray_20);
        if (MainUtil.f6(B3)) {
            builder.e(B3);
        }
        Notification b = builder.b();
        R(b, downItem.f16518c);
        if (Build.VERSION.SDK_INT >= 26) {
            q.createNotificationChannel(new NotificationChannel("Download", getString(R.string.download), 2));
        }
        q.notify(2147483645, b);
    }

    public final void Y(DownItem downItem) {
        NotificationManager q;
        float f;
        int i;
        if (this.j != null && downItem != null && downItem.n != null && downItem.G > 0 && !TextUtils.isEmpty(downItem.l) && (q = MainApp.q(this.j)) != null) {
            Intent intent = new Intent(this.j, (Class<?>) MainListDown.class);
            intent.putExtra("EXTRA_ID", downItem.b);
            intent.addFlags(268435456);
            PendingIntent activity = PendingIntent.getActivity(this.j, u(), intent, 201326592);
            int i2 = downItem.f16518c;
            downItem.d = i2;
            if (i2 == 2) {
                NotificationCompat.Builder builder = new NotificationCompat.Builder(this.j, "Download");
                builder.u.icon = R.drawable.baseline_file_download_white_24;
                builder.e = NotificationCompat.Builder.c(downItem.n.f);
                if (downItem.K) {
                    i = R.string.reserved;
                } else {
                    i = R.string.paused;
                }
                builder.f = NotificationCompat.Builder.c(getString(i));
                builder.g = activity;
                builder.i = 1;
                builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                builder.a(k(downItem));
                builder.a(p(downItem));
                downItem.U = builder;
            } else if (i2 != 4 && i2 != 5) {
                boolean z = false;
                if (downItem.L) {
                    NotificationCompat.Builder builder2 = new NotificationCompat.Builder(this.j, "Download");
                    builder2.u.icon = R.drawable.ic_download;
                    builder2.e = NotificationCompat.Builder.c(downItem.n.f);
                    builder2.f = NotificationCompat.Builder.c(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    builder2.f(100, 0, true);
                    builder2.g = activity;
                    builder2.i = 1;
                    builder2.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                    builder2.a(k(downItem));
                    builder2.a(p(downItem));
                    downItem.U = builder2;
                } else {
                    long j = downItem.o;
                    if (j == 0 && downItem.p > 0) {
                        z = true;
                    }
                    downItem.M = z;
                    String str = downItem.n.f;
                    if (!z) {
                        f = (((float) downItem.p) * 100.0f) / ((float) j);
                    } else {
                        f = 0.0f;
                    }
                    NotificationCompat.Builder builder3 = new NotificationCompat.Builder(this.j, "Download");
                    builder3.u.icon = R.drawable.ic_download;
                    builder3.e = NotificationCompat.Builder.c(str);
                    builder3.f = NotificationCompat.Builder.c(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    builder3.f(100, Math.round(f), downItem.M);
                    builder3.g = activity;
                    builder3.i = 1;
                    builder3.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                    builder3.a(k(downItem));
                    builder3.a(p(downItem));
                    downItem.U = builder3;
                }
            } else {
                int m = m(downItem);
                NotificationCompat.Builder builder4 = new NotificationCompat.Builder(this.j, "Download");
                builder4.u.icon = R.drawable.outline_error_white_24;
                builder4.e = NotificationCompat.Builder.c(downItem.n.f);
                builder4.f = NotificationCompat.Builder.c(getString(m));
                builder4.g = activity;
                builder4.i = 1;
                builder4.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                builder4.a(k(downItem));
                builder4.a(q(downItem));
                downItem.U = builder4;
                Bitmap B3 = MainUtil.B3(this.j, R.drawable.baseline_error_gray_20);
                if (MainUtil.f6(B3)) {
                    downItem.U.e(B3);
                }
            }
            Notification b = downItem.U.b();
            R(b, downItem.f16518c);
            if (Build.VERSION.SDK_INT >= 26) {
                q.createNotificationChannel(new NotificationChannel("Download", getString(R.string.download), 2));
            }
            g(downItem);
            q.notify(downItem.G, b);
        }
    }

    public final boolean Z() {
        if (this.y == 2) {
            return true;
        }
        DownBusyListener downBusyListener = this.q;
        if (downBusyListener == null) {
            return false;
        }
        return downBusyListener.a();
    }

    public final void a0(final List list, final boolean z) {
        final int i;
        Context context;
        NotificationManager q;
        if (list != null && !list.isEmpty() && this.j != null && this.o != null) {
            String str = this.D;
            if (TextUtils.isEmpty(str)) {
                str = MainUtil.m0(this.j);
                if (!TextUtils.isEmpty(str) && new File(str).mkdir()) {
                    this.D = str;
                }
            }
            final String str2 = str;
            this.B = true;
            int i2 = this.F;
            this.H = i2;
            this.I = this.G;
            this.K = 0L;
            if (i2 == 0 && (context = this.j) != null && (q = MainApp.q(context)) != null) {
                if (this.L != null) {
                    q.cancel(2147483644);
                }
                if (this.E < 0) {
                    this.E = 0;
                }
                int i3 = this.F;
                int i4 = this.E;
                if (i3 > i4) {
                    this.F = i4;
                }
                if (this.G > i4) {
                    this.G = i4;
                }
                Intent intent = new Intent(this.j, (Class<?>) MainListDown.class);
                intent.addFlags(268435456);
                PendingIntent activity = PendingIntent.getActivity(this.j, u(), intent, 201326592);
                Intent intent2 = new Intent("com.mycompany.app.soulbrowser.ACTION_IMAGE_CANCEL");
                intent2.setPackage(getPackageName());
                NotificationCompat.Action action = new NotificationCompat.Action(R.drawable.outline_close_black_24, getString(R.string.cancel), PendingIntent.getBroadcast(this.j, u(), intent2, 201326592));
                StringBuilder sb = new StringBuilder();
                sb.append(getString(R.string.success));
                sb.append(" (");
                sb.append(this.F - this.G);
                sb.append(")  ");
                sb.append(getString(R.string.fail));
                sb.append(" (");
                sb.append(this.G);
                sb.append(")");
                NotificationCompat.Builder builder = new NotificationCompat.Builder(this.j, "Download");
                builder.u.icon = R.drawable.ic_download;
                builder.e = NotificationCompat.Builder.c(this.F + " / " + this.E + " - " + getString(R.string.down_image));
                builder.f = NotificationCompat.Builder.c(sb.toString());
                builder.f(this.E, this.F, false);
                builder.g = activity;
                builder.i = 1;
                builder.o = "com.mycompany.app.soulbrowser.NOTI_GROUP_DOWN";
                builder.a(action);
                this.L = builder;
                Notification b = builder.b();
                R(b, 1);
                if (Build.VERSION.SDK_INT >= 26) {
                    q.createNotificationChannel(new NotificationChannel("Download", getString(R.string.download), 2));
                }
                q.notify(2147483644, b);
                this.J = System.currentTimeMillis();
            }
            int size = list.size();
            if (10 > size) {
                i = size;
            } else {
                i = 10;
            }
            int i5 = size / i;
            if (size % i != 0) {
                i5++;
            }
            final int i6 = i5;
            final AnonymousClass32 anonymousClass32 = new AnonymousClass32();
            for (final int i7 = 0; i7 < i && this.B; i7++) {
                F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.33
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i8;
                        Context context2 = MainDownSvc.this.j;
                        String str3 = str2;
                        boolean z2 = z;
                        long j = PrefSecret.m;
                        List list2 = list;
                        if (list2 != null) {
                            int size2 = list2.size();
                            for (int i9 = 0; i9 < i6; i9++) {
                                DownImageListener downImageListener = anonymousClass32;
                                AnonymousClass32 anonymousClass322 = (AnonymousClass32) downImageListener;
                                if (MainDownSvc.this.B && (i8 = (i * i9) + i7) < size2) {
                                    try {
                                        DownSaveImage.a(context2, list2, str3, i8, z2, j, 0, 0, downImageListener);
                                    } catch (OutOfMemoryError unused) {
                                        ImageItem imageItem = (ImageItem) list2.get(i8);
                                        if (imageItem != null) {
                                            imageItem.g = 4;
                                            anonymousClass322.b(list2, z2);
                                        } else {
                                            return;
                                        }
                                    }
                                } else {
                                    return;
                                }
                            }
                        }
                    }
                });
            }
        }
    }

    public final void b0() {
        if (this.j != null) {
            this.B = false;
            this.C = null;
            this.E = 0;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            String str = this.D;
            this.D = null;
            MainUtil.z(str);
            if (this.L != null) {
                this.L = null;
                NotificationManager q = MainApp.q(this.j);
                if (q != null) {
                    q.cancel(2147483644);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x035a, code lost:
    
        if (r24.f16518c != 5) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x035c, code lost:
    
        X(r24);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x035f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:?, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:45:0x034f A[Catch: Exception -> 0x035f, TryCatch #0 {Exception -> 0x035f, blocks: (B:3:0x0004, B:6:0x000a, B:8:0x000e, B:11:0x0014, B:13:0x0019, B:16:0x001f, B:21:0x0038, B:23:0x003c, B:25:0x0042, B:29:0x004a, B:37:0x0070, B:39:0x0076, B:41:0x007e, B:42:0x00b3, B:43:0x0339, B:45:0x034f, B:48:0x0099, B:50:0x00a1, B:57:0x0113, B:59:0x0119, B:60:0x012d, B:62:0x0131, B:63:0x016b, B:65:0x01b1, B:66:0x0143, B:68:0x0161, B:69:0x0166, B:77:0x01c2, B:79:0x022d, B:80:0x0234, B:82:0x023a, B:84:0x0248, B:86:0x026f, B:88:0x0277, B:89:0x027f, B:90:0x0290, B:91:0x0285, B:94:0x02c8, B:95:0x031f, B:96:0x02a7, B:98:0x02b0, B:102:0x0357, B:104:0x035c), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x023a A[Catch: Exception -> 0x035f, TryCatch #0 {Exception -> 0x035f, blocks: (B:3:0x0004, B:6:0x000a, B:8:0x000e, B:11:0x0014, B:13:0x0019, B:16:0x001f, B:21:0x0038, B:23:0x003c, B:25:0x0042, B:29:0x004a, B:37:0x0070, B:39:0x0076, B:41:0x007e, B:42:0x00b3, B:43:0x0339, B:45:0x034f, B:48:0x0099, B:50:0x00a1, B:57:0x0113, B:59:0x0119, B:60:0x012d, B:62:0x0131, B:63:0x016b, B:65:0x01b1, B:66:0x0143, B:68:0x0161, B:69:0x0166, B:77:0x01c2, B:79:0x022d, B:80:0x0234, B:82:0x023a, B:84:0x0248, B:86:0x026f, B:88:0x0277, B:89:0x027f, B:90:0x0290, B:91:0x0285, B:94:0x02c8, B:95:0x031f, B:96:0x02a7, B:98:0x02b0, B:102:0x0357, B:104:0x035c), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02c8 A[Catch: Exception -> 0x035f, TRY_ENTER, TryCatch #0 {Exception -> 0x035f, blocks: (B:3:0x0004, B:6:0x000a, B:8:0x000e, B:11:0x0014, B:13:0x0019, B:16:0x001f, B:21:0x0038, B:23:0x003c, B:25:0x0042, B:29:0x004a, B:37:0x0070, B:39:0x0076, B:41:0x007e, B:42:0x00b3, B:43:0x0339, B:45:0x034f, B:48:0x0099, B:50:0x00a1, B:57:0x0113, B:59:0x0119, B:60:0x012d, B:62:0x0131, B:63:0x016b, B:65:0x01b1, B:66:0x0143, B:68:0x0161, B:69:0x0166, B:77:0x01c2, B:79:0x022d, B:80:0x0234, B:82:0x023a, B:84:0x0248, B:86:0x026f, B:88:0x0277, B:89:0x027f, B:90:0x0290, B:91:0x0285, B:94:0x02c8, B:95:0x031f, B:96:0x02a7, B:98:0x02b0, B:102:0x0357, B:104:0x035c), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x031f A[Catch: Exception -> 0x035f, TryCatch #0 {Exception -> 0x035f, blocks: (B:3:0x0004, B:6:0x000a, B:8:0x000e, B:11:0x0014, B:13:0x0019, B:16:0x001f, B:21:0x0038, B:23:0x003c, B:25:0x0042, B:29:0x004a, B:37:0x0070, B:39:0x0076, B:41:0x007e, B:42:0x00b3, B:43:0x0339, B:45:0x034f, B:48:0x0099, B:50:0x00a1, B:57:0x0113, B:59:0x0119, B:60:0x012d, B:62:0x0131, B:63:0x016b, B:65:0x01b1, B:66:0x0143, B:68:0x0161, B:69:0x0166, B:77:0x01c2, B:79:0x022d, B:80:0x0234, B:82:0x023a, B:84:0x0248, B:86:0x026f, B:88:0x0277, B:89:0x027f, B:90:0x0290, B:91:0x0285, B:94:0x02c8, B:95:0x031f, B:96:0x02a7, B:98:0x02b0, B:102:0x0357, B:104:0x035c), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a7 A[Catch: Exception -> 0x035f, TryCatch #0 {Exception -> 0x035f, blocks: (B:3:0x0004, B:6:0x000a, B:8:0x000e, B:11:0x0014, B:13:0x0019, B:16:0x001f, B:21:0x0038, B:23:0x003c, B:25:0x0042, B:29:0x004a, B:37:0x0070, B:39:0x0076, B:41:0x007e, B:42:0x00b3, B:43:0x0339, B:45:0x034f, B:48:0x0099, B:50:0x00a1, B:57:0x0113, B:59:0x0119, B:60:0x012d, B:62:0x0131, B:63:0x016b, B:65:0x01b1, B:66:0x0143, B:68:0x0161, B:69:0x0166, B:77:0x01c2, B:79:0x022d, B:80:0x0234, B:82:0x023a, B:84:0x0248, B:86:0x026f, B:88:0x0277, B:89:0x027f, B:90:0x0290, B:91:0x0285, B:94:0x02c8, B:95:0x031f, B:96:0x02a7, B:98:0x02b0, B:102:0x0357, B:104:0x035c), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c0(com.mycompany.app.main.MainDownSvc.DownItem r24) {
        /*
            Method dump skipped, instructions count: 864
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownSvc.c0(com.mycompany.app.main.MainDownSvc$DownItem):void");
    }

    public final void d0(DownItem downItem) {
        Handler handler;
        if (this.j != null && downItem != null && downItem.n != null && downItem.U != null) {
            int i = downItem.f16518c;
            if (i == 6) {
                downItem.d = i;
                x(downItem);
                return;
            }
            if (i != 1 && i != 7) {
                this.x = true;
                c0(downItem);
                this.x = false;
                return;
            }
            try {
                synchronized (this.h) {
                    try {
                        ArrayList arrayList = this.v;
                        if (arrayList == null) {
                            ArrayList arrayList2 = new ArrayList();
                            this.v = arrayList2;
                            arrayList2.add(downItem);
                        } else if (arrayList.isEmpty()) {
                            this.v.add(downItem);
                        } else if (!this.v.contains(downItem)) {
                            this.v.add(downItem);
                        } else {
                            return;
                        }
                        if (!Z() && (handler = this.o) != null) {
                            handler.removeCallbacks(this.U);
                            this.o.postDelayed(this.U, 400L);
                            return;
                        }
                        return;
                    } finally {
                    }
                }
            } catch (Exception unused) {
                return;
            }
        }
        if (downItem != null && downItem.f16518c == 5) {
            X(downItem);
        }
    }

    public final void g(DownItem downItem) {
        if (downItem != null) {
            try {
                synchronized (this.g) {
                    try {
                        ArrayList arrayList = this.t;
                        if (arrayList == null) {
                            this.t = new ArrayList();
                        } else if (arrayList.contains(downItem)) {
                            return;
                        }
                        this.t.add(downItem);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void h(boolean z) {
        try {
        } catch (Exception unused) {
        }
        synchronized (this.h) {
            try {
                ArrayList arrayList = this.v;
                if (arrayList != null && !arrayList.isEmpty()) {
                    Handler handler = this.o;
                    if (handler != null) {
                        handler.removeCallbacks(this.U);
                        if (z) {
                            handler.postDelayed(this.U, 400L);
                        } else {
                            handler.post(this.U);
                        }
                    }
                }
            } finally {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.mycompany.app.main.MainDownSvc$DownItem, java.lang.Object] */
    public final void i(String str, String str2, MainUri.UriItem uriItem, int i, boolean z, boolean z2) {
        MainUri.UriItem uriItem2;
        boolean z3;
        boolean z4;
        int i2;
        Handler handler;
        MainUri.NumItem g;
        if (!TextUtils.isEmpty(str) && uriItem != null && !TextUtils.isEmpty(uriItem.e) && this.j != null) {
            if (!z2 && y(uriItem.e, z)) {
                String str3 = uriItem.f;
                MainUri.UriItem uriItem3 = null;
                if (!TextUtils.isEmpty(str3) && (g = MainUri.g(str3)) != null) {
                    MainUri.UriItem c2 = MainUri.c(this.j, PrefPath.t(this.j), null, g.f16983a + "_" + System.currentTimeMillis() + g.b);
                    if (c2 != null && !y(c2.e, z)) {
                        uriItem3 = c2;
                    }
                }
                if (uriItem3 == null) {
                    Handler handler2 = this.o;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.6
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainUtil.e8(MainDownSvc.this.j, R.string.exist_file);
                            }
                        });
                        return;
                    }
                    return;
                }
                uriItem2 = uriItem3;
            } else {
                uriItem2 = uriItem;
            }
            int P0 = MainUtil.P0(uriItem2.f);
            if (P0 == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            int i3 = 2;
            if (PrefWeb.X > 0 && r(z3) >= PrefWeb.X) {
                i2 = 2;
                z4 = true;
            } else {
                z4 = false;
                i2 = 2;
                i3 = 1;
            }
            long u = DbBookDown.u(this.j, i3, P0, str, str2, uriItem2, uriItem2.h, 0L, z4, z, PrefSecret.m, true);
            if (u > 0) {
                int i4 = i;
                if (i4 < i2) {
                    i4 = 1;
                }
                ?? obj = new Object();
                obj.f16517a = z;
                obj.b = u;
                obj.G = ((int) (u % 2147483635)) + 1;
                obj.f16518c = i3;
                obj.e = P0;
                obj.f = str;
                obj.g = str2;
                obj.l = uriItem2.e;
                obj.o = uriItem2.h;
                obj.q = 0L;
                obj.n = uriItem2;
                obj.u = i4;
                obj.I = s(str);
                obj.K = z4;
                synchronized (this.f) {
                    try {
                        if (this.s == null) {
                            this.s = new ArrayList();
                        }
                        this.s.add(obj);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z4) {
                    Y(obj);
                    if (!z2 && (handler = this.o) != null) {
                        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.7
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainUtil.e8(MainDownSvc.this.j, R.string.registered);
                            }
                        });
                        return;
                    }
                    return;
                }
                if (!z2) {
                    Handler handler3 = this.o;
                    if (handler3 != null) {
                        handler3.post(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.8
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainUtil.e8(MainDownSvc.this.j, R.string.down_start);
                            }
                        });
                    } else {
                        return;
                    }
                }
                P(obj);
            }
        }
    }

    public final void j() {
        if (PrefWeb.X > 0) {
            synchronized (this.f) {
                ArrayList arrayList = this.s;
                if (arrayList != null && !arrayList.isEmpty()) {
                    if (this.j != null && r(false) < PrefWeb.X) {
                        synchronized (this.f) {
                            try {
                                ArrayList arrayList2 = this.s;
                                int size = arrayList2.size();
                                int i = 0;
                                while (true) {
                                    if (i >= size) {
                                        break;
                                    }
                                    Object obj = arrayList2.get(i);
                                    i++;
                                    DownItem downItem = (DownItem) obj;
                                    if (downItem != null) {
                                        Context context = this.j;
                                        if (downItem.f16518c == 2 && downItem.K) {
                                            downItem.f16518c = 1;
                                            downItem.K = false;
                                            DbBookDown.n(context, downItem.b, downItem.o, downItem.p, false);
                                            K(downItem.f16518c, downItem.b);
                                            P(downItem);
                                            break;
                                        }
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                }
            }
        }
    }

    public final NotificationCompat.Action k(DownItem downItem) {
        boolean z;
        int i;
        if (this.j != null && downItem != null) {
            long max = Math.max(downItem.p, downItem.q);
            if (downItem.o == 0 && max > 0) {
                z = true;
            } else {
                z = false;
            }
            downItem.M = z;
            Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_CANCEL");
            intent.putExtra("EXTRA_ID", downItem.b);
            intent.putExtra("EXTRA_PATH", downItem.l);
            intent.putExtra("EXTRA_STOP", downItem.M);
            intent.setPackage(getPackageName());
            PendingIntent broadcast = PendingIntent.getBroadcast(this.j, u(), intent, 201326592);
            int i2 = R.drawable.outline_close_black_24;
            if (downItem.M) {
                i = R.string.stop;
            } else {
                i = R.string.cancel;
            }
            return new NotificationCompat.Action(i2, getString(i), broadcast);
        }
        return null;
    }

    public final String l(String str) {
        String K0 = MainUtil.K0(this.j, str);
        if (TextUtils.isEmpty(K0)) {
            return null;
        }
        File file = new File(K0);
        if (!file.isDirectory() && !file.mkdir()) {
            return null;
        }
        return K0;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        this.k = true;
        this.j = getApplicationContext();
        W(false);
        if (this.l) {
            return;
        }
        this.l = true;
        if (PrefWeb.Z) {
            PrefWeb.Z = false;
            PrefSet.d(14, this.j, "mCheckDown", false);
        }
        F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.1
            @Override // java.lang.Runnable
            public final void run() {
                NotificationManager q;
                MainDownSvc mainDownSvc = MainDownSvc.this;
                if (mainDownSvc.o == null) {
                    mainDownSvc.o = new Handler(Looper.getMainLooper());
                }
                MainDownSvc.e(mainDownSvc);
                Context context = mainDownSvc.j;
                if (context != null && (q = MainApp.q(context)) != null) {
                    q.cancel(2147483643);
                }
                if (mainDownSvc.M == null) {
                    try {
                        mainDownSvc.M = new EventReceiver();
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_DOWN_PAUSE");
                        intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_DOWN_RETRY");
                        intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_DOWN_CANCEL");
                        intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_DOWN_EXIT");
                        intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_IMAGE_CANCEL");
                        intentFilter.addAction("android.intent.action.SCREEN_ON");
                        intentFilter.addAction("android.intent.action.SCREEN_OFF");
                        ContextCompat.f(mainDownSvc, mainDownSvc.M, intentFilter, null, 4);
                    } catch (Exception unused) {
                    }
                }
                mainDownSvc.l = false;
            }
        });
    }

    @Override // android.app.Service
    public final void onDestroy() {
        O();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        this.j = getApplicationContext();
        W(false);
        F(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.2
            @Override // java.lang.Runnable
            public final void run() {
                MainDownSvc mainDownSvc = MainDownSvc.this;
                if (mainDownSvc.o == null) {
                    mainDownSvc.o = new Handler(Looper.getMainLooper());
                }
                MainDownSvc.e(mainDownSvc);
                final MainApp p = MainApp.p(mainDownSvc.j);
                if (p != null) {
                    if (!p.u) {
                        p.u = true;
                        p.w = true;
                        p.D = true;
                        p.x = 0L;
                        p.y = 0;
                        p.z = null;
                        p.A = null;
                        p.B = null;
                        p.C = 0;
                        p.E = null;
                    }
                    p.v = mainDownSvc;
                    DownBusyListener downBusyListener = p.F;
                    DownListListener downListListener = p.G;
                    mainDownSvc.q = downBusyListener;
                    mainDownSvc.r = downListListener;
                    p.K(new Runnable() { // from class: com.mycompany.app.main.MainApp.12
                        public AnonymousClass12() {
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            MainDownSvc mainDownSvc2;
                            Handler handler;
                            MainUri.UriItem uriItem;
                            MainDownSvc mainDownSvc3;
                            MainApp mainApp = MainApp.this;
                            boolean z = mainApp.D;
                            mainApp.D = false;
                            try {
                                if (mainApp.u && (mainDownSvc2 = mainApp.v) != null) {
                                    if (z) {
                                        mainDownSvc2.T();
                                    }
                                    long j = mainApp.x;
                                    if (j != 0) {
                                        int i3 = mainApp.y;
                                        if (mainApp.u && (mainDownSvc3 = mainApp.v) != null && j != 0 && i3 != 0) {
                                            mainDownSvc3.M(i3, j);
                                        }
                                        mainApp.x = 0L;
                                        mainApp.y = 0;
                                    }
                                    if (!TextUtils.isEmpty(mainApp.z) && (uriItem = mainApp.B) != null) {
                                        MainApp.b(mainApp, mainApp.z, mainApp.A, uriItem, mainApp.C);
                                        mainApp.z = null;
                                        mainApp.A = null;
                                        mainApp.B = null;
                                        mainApp.C = 0;
                                    }
                                    ArrayList arrayList = mainApp.E;
                                    if (arrayList != null) {
                                        MainApp.a(mainApp, arrayList);
                                        mainApp.E = null;
                                    }
                                    mainApp.w = false;
                                    MainDownSvc.DownListListener downListListener2 = mainApp.G;
                                    if (downListListener2 != null) {
                                        downListListener2.onConnected();
                                    }
                                    final MainDownSvc mainDownSvc4 = mainApp.v;
                                    if (mainDownSvc4.s == null && !mainDownSvc4.B && (handler = mainDownSvc4.o) != null) {
                                        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainDownSvc.4
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                int i4 = MainDownSvc.V;
                                                MainDownSvc.this.V(false);
                                            }
                                        });
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
            }
        });
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public final void onTaskRemoved(Intent intent) {
        Q(false, false);
        super.onTaskRemoved(intent);
    }

    public final NotificationCompat.Action p(DownItem downItem) {
        int i;
        if (this.j != null && downItem != null) {
            if (downItem.f16518c == 2) {
                if (downItem.K) {
                    i = R.string.start;
                } else {
                    i = R.string.resume;
                }
                Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_PAUSE");
                intent.putExtra("EXTRA_ID", downItem.b);
                intent.putExtra("pause", false);
                intent.setPackage(getPackageName());
                return new NotificationCompat.Action(R.drawable.baseline_play_arrow_black_24, getString(i), PendingIntent.getBroadcast(this.j, u(), intent, 201326592));
            }
            Intent intent2 = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_PAUSE");
            intent2.putExtra("EXTRA_ID", downItem.b);
            intent2.putExtra("pause", true);
            intent2.setPackage(getPackageName());
            return new NotificationCompat.Action(R.drawable.baseline_pause_black_24, getString(R.string.pause), PendingIntent.getBroadcast(this.j, u(), intent2, 201326592));
        }
        return null;
    }

    public final NotificationCompat.Action q(DownItem downItem) {
        if (this.j != null && downItem != null) {
            Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_DOWN_RETRY");
            intent.putExtra("EXTRA_ID", downItem.b);
            intent.setPackage(getPackageName());
            return new NotificationCompat.Action(R.drawable.baseline_play_arrow_black_24, getString(R.string.retry), PendingIntent.getBroadcast(this.j, u(), intent, 201326592));
        }
        return null;
    }

    public final int r(boolean z) {
        synchronized (this.f) {
            try {
                ArrayList arrayList = this.s;
                int i = 0;
                if (arrayList != null && !arrayList.isEmpty()) {
                    ArrayList arrayList2 = this.s;
                    int size = arrayList2.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = arrayList2.get(i2);
                        i2++;
                        DownItem downItem = (DownItem) obj;
                        if (downItem != null && downItem.f16518c == 1 && (!z || downItem.e == 4)) {
                            i++;
                        }
                    }
                    return i;
                }
                return 0;
            } finally {
            }
        }
    }

    public final void t(StringBuilder sb, long j) {
        if (j <= 0) {
            if (TextUtils.isEmpty(this.P)) {
                this.P = getString(R.string.time_s);
            }
            sb.append("0");
            sb.append(this.P);
            return;
        }
        long j2 = j / 1000;
        if (j2 == 0) {
            if (TextUtils.isEmpty(this.P)) {
                this.P = getString(R.string.time_s);
            }
            sb.append("1");
            sb.append(this.P);
            return;
        }
        long j3 = j / 60000;
        if (j3 == 0) {
            if (TextUtils.isEmpty(this.P)) {
                this.P = getString(R.string.time_s);
            }
            sb.append(j2);
            sb.append(this.P);
            return;
        }
        long j4 = j / 3600000;
        if (j4 == 0) {
            if (TextUtils.isEmpty(this.O)) {
                this.O = getString(R.string.time_m);
            }
            if (TextUtils.isEmpty(this.P)) {
                this.P = getString(R.string.time_s);
            }
            sb.append(j3);
            sb.append(this.O);
            sb.append(" ");
            sb.append((j % 60000) / 1000);
            sb.append(this.P);
            return;
        }
        if (j / 86400000 == 0) {
            if (TextUtils.isEmpty(this.N)) {
                this.N = getString(R.string.time_h);
            }
            if (TextUtils.isEmpty(this.O)) {
                this.O = getString(R.string.time_m);
            }
            sb.append(j4);
            sb.append(this.N);
            sb.append(" ");
            sb.append((j % 3600000) / 60000);
            sb.append(this.O);
            return;
        }
        if (TextUtils.isEmpty(this.N)) {
            this.N = getString(R.string.time_h);
        }
        if (j4 > 999) {
            j4 = 999;
        }
        sb.append(j4);
        sb.append(this.N);
    }

    public final void w() {
        NotificationManager notificationManager;
        NotificationCompat.Builder builder;
        Notification b;
        if (this.j != null) {
            int i = 0;
            try {
                try {
                    synchronized (this.g) {
                        try {
                            ArrayList arrayList = this.t;
                            this.t = null;
                            if (arrayList != null && !arrayList.isEmpty()) {
                                notificationManager = MainApp.q(this.j);
                                if (notificationManager != null) {
                                    int size = arrayList.size();
                                    int i2 = 0;
                                    while (i2 < size) {
                                        Object obj = arrayList.get(i2);
                                        i2++;
                                        DownItem downItem = (DownItem) obj;
                                        if (downItem != null && (builder = downItem.U) != null && (b = builder.b()) != null) {
                                            notificationManager.notify(downItem.G, b);
                                        }
                                    }
                                }
                            } else {
                                notificationManager = null;
                            }
                        } catch (Throwable th) {
                            th = th;
                            notificationManager = null;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    throw th;
                } catch (Exception unused) {
                    try {
                        synchronized (this.g) {
                            try {
                                ArrayList arrayList2 = this.u;
                                this.u = null;
                                if (arrayList2 != null && !arrayList2.isEmpty()) {
                                    if (notificationManager == null) {
                                        notificationManager = MainApp.q(this.j);
                                    }
                                    if (notificationManager != null) {
                                        int size2 = arrayList2.size();
                                        while (i < size2) {
                                            Object obj2 = arrayList2.get(i);
                                            i++;
                                            DownItem downItem2 = (DownItem) obj2;
                                            if (downItem2 != null) {
                                                notificationManager.cancel(downItem2.G);
                                            }
                                        }
                                    }
                                }
                            } catch (Throwable th3) {
                                throw th3;
                            }
                        }
                    } catch (Exception unused2) {
                    }
                }
            } catch (Exception unused3) {
                notificationManager = null;
            }
        }
    }

    public final void x(DownItem downItem) {
        if (this.j != null && downItem != null && downItem.U != null) {
            downItem.U = null;
            try {
                synchronized (this.g) {
                    try {
                        ArrayList arrayList = this.t;
                        if (arrayList != null && !arrayList.isEmpty()) {
                            this.t.remove(downItem);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Exception unused) {
            }
            try {
                synchronized (this.g) {
                    try {
                        ArrayList arrayList2 = this.u;
                        if (arrayList2 == null) {
                            this.u = new ArrayList();
                        } else if (arrayList2.contains(downItem)) {
                        }
                        this.u.add(downItem);
                    } finally {
                    }
                }
            } catch (Exception unused2) {
            }
            NotificationManager q = MainApp.q(this.j);
            if (q != null) {
                q.cancel(downItem.G);
            }
        }
    }

    public final boolean y(String str, boolean z) {
        int i = 0;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        synchronized (this.f) {
            try {
                ArrayList arrayList = this.s;
                if (arrayList != null && !arrayList.isEmpty()) {
                    ArrayList arrayList2 = this.s;
                    int size = arrayList2.size();
                    while (i < size) {
                        Object obj = arrayList2.get(i);
                        i++;
                        DownItem downItem = (DownItem) obj;
                        if (downItem != null && str.equals(downItem.l)) {
                            return true;
                        }
                    }
                }
                return DbBookDown.f(this.j, str, z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
