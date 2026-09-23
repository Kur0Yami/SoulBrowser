package com.mycompany.app.main;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.MimeTypeMap;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogDownPage;
import com.mycompany.app.dialog.DialogSaveSource;
import com.mycompany.app.dialog.DialogSeekAudio;
import com.mycompany.app.dialog.DialogSeekBright;
import com.mycompany.app.dialog.DialogSeekText;
import com.mycompany.app.dialog.DialogSetTts;
import com.mycompany.app.dialog.DialogViewRead;
import com.mycompany.app.main.MainTxtAdapter;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.CastActivity;
import com.mycompany.app.setting.SettingFont;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.video.VideoActivity;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyFadeListener;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MyScrollBar;
import com.mycompany.app.view.MySnackbar;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

/* loaded from: classes3.dex */
public class MainTxtView extends CastActivity {
    public static final /* synthetic */ int X2 = 0;
    public boolean A2;
    public int B2;
    public MyMainRelative C1;
    public boolean C2;
    public MyButtonImage D1;
    public MyPopupMenu D2;
    public MyButtonImage E1;
    public DialogSaveSource E2;
    public MyButtonImage F1;
    public DialogSeekBright F2;
    public MyButtonImage G1;
    public DialogSeekText G2;
    public MyButtonImage H1;
    public DialogSeekAudio H2;
    public MyRoundItem I1;
    public DialogSetTts I2;
    public MyRecyclerView J1;
    public boolean J2;
    public MyManagerLinear K1;
    public int K2;
    public MainTxtAdapter L1;
    public HttpURLConnection L2;
    public MyScrollBar M1;
    public InputStream M2;
    public MyFadeFrame N1;
    public BufferedReader N2;
    public RelativeLayout O1;
    public boolean O2;
    public LinearLayout P1;
    public boolean P2;
    public LinearLayout Q1;
    public boolean Q2;
    public MyButtonImage R1;
    public List R2;
    public MyButtonImage S1;
    public int S2;
    public MyButtonImage T1;
    public boolean T2;
    public MyButtonImage U1;
    public MyButtonImage V1;
    public MyButtonImage W1;
    public MySnackbar W2;
    public MyButtonImage X1;
    public MyButtonImage Y1;
    public MyButtonImage Z1;
    public MyButtonImage a2;
    public MyFadeImage b2;
    public MyCoverView c2;
    public MyFadeFrame d2;
    public GestureDetector e2;
    public ScaleGestureDetector f2;
    public String g2;
    public String h2;
    public String i2;
    public ArrayList j2;
    public LoadTask k2;
    public boolean l2;
    public boolean m2;
    public TextToSpeech n2;
    public float o2;
    public float p2;
    public String q2;
    public String r2;
    public ArrayList s2;
    public int t2;
    public ArrayList u2;
    public int v2;
    public int w2;
    public boolean x2;
    public int y2;
    public int z2;
    public final Runnable U2 = new Runnable() { // from class: com.mycompany.app.main.MainTxtView.35
        @Override // java.lang.Runnable
        public final void run() {
            MyManagerLinear myManagerLinear;
            MainTxtView mainTxtView = MainTxtView.this;
            if (mainTxtView.M1 != null && (myManagerLinear = mainTxtView.K1) != null) {
                mainTxtView.M1.p((myManagerLinear.V0() - mainTxtView.K1.U0()) + 1, mainTxtView.K1.H());
            }
            mainTxtView.T2 = false;
        }
    };
    public final Runnable V2 = new Runnable() { // from class: com.mycompany.app.main.MainTxtView.44
        @Override // java.lang.Runnable
        public final void run() {
            int i;
            MainTxtView mainTxtView = MainTxtView.this;
            if (mainTxtView.x2 && (i = mainTxtView.B2) != -1234) {
                mainTxtView.B2 = -1234;
                mainTxtView.C2 = false;
                if (mainTxtView.w2 == 2) {
                    mainTxtView.t2 = i - 1;
                    mainTxtView.a1(false);
                } else {
                    mainTxtView.W0(mainTxtView.t2, false);
                }
            }
            mainTxtView.P2 = false;
        }
    };

    /* renamed from: com.mycompany.app.main.MainTxtView$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.main.MainTxtView$26, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass26 implements MainTxtAdapter.MainTxtListener {
        public AnonymousClass26() {
        }
    }

    /* renamed from: com.mycompany.app.main.MainTxtView$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* renamed from: com.mycompany.app.main.MainTxtView$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class LoadTask extends MyAsyncTask {
        public final WeakReference e;
        public final String f;
        public final String g;
        public ArrayList h;
        public boolean i;

        public LoadTask(MainTxtView mainTxtView) {
            WeakReference weakReference = new WeakReference(mainTxtView);
            this.e = weakReference;
            MainTxtView mainTxtView2 = (MainTxtView) weakReference.get();
            if (mainTxtView2 == null) {
                return;
            }
            this.f = mainTxtView2.g2;
            this.g = mainTxtView2.h2;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            MainTxtView mainTxtView;
            Charset charset;
            Charset charset2;
            InputStream Y1;
            boolean z;
            BufferedReader bufferedReader;
            String readLine;
            HttpURLConnection S3;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainTxtView = (MainTxtView) weakReference.get()) != null && !this.f12839c) {
                String str = this.f;
                if (!TextUtils.isEmpty(str)) {
                    int i = MainTxtView.X2;
                    mainTxtView.b1(true);
                    if (URLUtil.isNetworkUrl(str)) {
                        HttpURLConnection S32 = MainUtil.S3(0, 0, mainTxtView.f1, this.f, this.g, true);
                        mainTxtView.L2 = S32;
                        if (S32 != null && S32.getResponseCode() == 200) {
                            Y1 = S32.getInputStream();
                            z = "gzip".equals(S32.getContentEncoding());
                            if (z) {
                                try {
                                    charset2 = Charset.forName(MainUtil.o0(new GZIPInputStream(Y1)));
                                } catch (Exception unused) {
                                    charset2 = StandardCharsets.UTF_8;
                                }
                                S32.disconnect();
                                S3 = MainUtil.S3(0, 0, mainTxtView.f1, this.f, this.g, true);
                                mainTxtView.L2 = S3;
                                if (S3 != null && S3.getResponseCode() == 200) {
                                    Y1 = S3.getInputStream();
                                }
                            } else {
                                try {
                                    charset2 = Charset.forName(MainUtil.o0(Y1));
                                } catch (Exception unused2) {
                                    charset2 = StandardCharsets.UTF_8;
                                }
                                S32.disconnect();
                                S3 = MainUtil.S3(0, 0, mainTxtView.f1, this.f, this.g, true);
                                mainTxtView.L2 = S3;
                                if (S3 != null) {
                                    Y1 = S3.getInputStream();
                                }
                            }
                            mainTxtView.b1(true);
                        }
                        Y1 = null;
                        charset2 = null;
                        z = false;
                    } else {
                        try {
                            charset = Charset.forName(MainUtil.o0(MainUtil.Y1(mainTxtView.f1, str)));
                        } catch (Exception unused3) {
                            charset = StandardCharsets.UTF_8;
                        }
                        charset2 = charset;
                        Y1 = MainUtil.Y1(mainTxtView.f1, str);
                        z = false;
                    }
                    mainTxtView.M2 = Y1;
                    if (charset2 == null) {
                        charset2 = StandardCharsets.UTF_8;
                    }
                    if (z) {
                        bufferedReader = new BufferedReader(new InputStreamReader(new GZIPInputStream(Y1), charset2));
                    } else {
                        bufferedReader = new BufferedReader(new InputStreamReader(Y1, charset2));
                    }
                    mainTxtView.N2 = bufferedReader;
                    while (!this.f12839c) {
                        try {
                            readLine = bufferedReader.readLine();
                        } catch (Exception unused4) {
                        } catch (OutOfMemoryError unused5) {
                            this.i = true;
                        }
                        if (readLine == null) {
                            break;
                        }
                        if (this.h == null) {
                            ArrayList arrayList = new ArrayList();
                            this.h = arrayList;
                            arrayList.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        }
                        int length = readLine.length();
                        if (length > 128) {
                            int i2 = 0;
                            for (int F0 = MainTxtView.F0(length, 0, readLine); F0 < length; F0 = MainTxtView.F0(length, F0, readLine)) {
                                this.h.add(readLine.substring(i2, F0));
                                i2 = F0;
                            }
                            if (i2 < length) {
                                this.h.add(readLine.substring(i2));
                            }
                        } else {
                            this.h.add(readLine);
                        }
                    }
                    ArrayList arrayList2 = this.h;
                    if (arrayList2 != null) {
                        arrayList2.add(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    }
                    mainTxtView.b1(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainTxtView mainTxtView;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainTxtView = (MainTxtView) weakReference.get()) != null) {
                mainTxtView.k2 = null;
                MyCoverView myCoverView = mainTxtView.c2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v15, types: [com.mycompany.app.main.MainTxtAdapter, androidx.recyclerview.widget.RecyclerView$Adapter] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final MainTxtView mainTxtView;
            Handler handler;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainTxtView = (MainTxtView) weakReference.get()) != null) {
                mainTxtView.k2 = null;
                ArrayList arrayList = this.h;
                if (mainTxtView.b2 != null) {
                    boolean isNetworkUrl = URLUtil.isNetworkUrl(mainTxtView.g2);
                    mainTxtView.j2 = arrayList;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        mainTxtView.b2.d();
                        mainTxtView.J1.setVisibility(0);
                        if (isNetworkUrl) {
                            mainTxtView.E1.setVisibility(0);
                            mainTxtView.F1.setVisibility(0);
                        } else {
                            mainTxtView.E1.setVisibility(8);
                            mainTxtView.F1.setVisibility(8);
                        }
                        MainTxtAdapter mainTxtAdapter = mainTxtView.L1;
                        if (mainTxtAdapter == null) {
                            Context context = mainTxtView.f1;
                            MyManagerLinear myManagerLinear = mainTxtView.K1;
                            AnonymousClass26 anonymousClass26 = new AnonymousClass26();
                            ?? adapter = new RecyclerView.Adapter();
                            adapter.f = arrayList;
                            adapter.g = true;
                            adapter.l = myManagerLinear;
                            adapter.m = anonymousClass26;
                            adapter.d = 50;
                            adapter.e = 500;
                            int i = PrefRead.m;
                            adapter.i = i;
                            adapter.j = i;
                            adapter.k = -1;
                            if (PrefRead.n && !TextUtils.isEmpty(PrefRead.o)) {
                                adapter.h = MainUtil.w1(context, MainUtil.j3(context));
                            } else if (PrefRead.p) {
                                adapter.h = Typeface.create(Typeface.DEFAULT, 1);
                            }
                            mainTxtView.L1 = adapter;
                            mainTxtView.J1.setAdapter(adapter);
                        } else {
                            mainTxtAdapter.f = arrayList;
                            mainTxtAdapter.g();
                            mainTxtView.K1.x0(0);
                        }
                        boolean z = PrefRead.k;
                        if (z && z && mainTxtView.d2 == null && mainTxtView.C1 != null && (handler = mainTxtView.O0) != null) {
                            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.22
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyFadeFrame Z0;
                                    if (PrefRead.k) {
                                        final MainTxtView mainTxtView2 = MainTxtView.this;
                                        if (mainTxtView2.d2 == null && mainTxtView2.C1 != null && (Z0 = VideoActivity.Z0(mainTxtView2)) != null) {
                                            mainTxtView2.d2 = Z0;
                                            Z0.setListener(new MyFadeListener() { // from class: com.mycompany.app.main.MainTxtView.23
                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void a(boolean z2) {
                                                    if (z2) {
                                                        return;
                                                    }
                                                    MainTxtView mainTxtView3 = MainTxtView.this;
                                                    MyFadeFrame myFadeFrame = mainTxtView3.d2;
                                                    if (myFadeFrame != null && mainTxtView3.C1 != null) {
                                                        myFadeFrame.f();
                                                        mainTxtView3.C1.removeView(mainTxtView3.d2);
                                                        mainTxtView3.d2 = null;
                                                    }
                                                    MainTxtView.E0(mainTxtView3);
                                                }

                                                @Override // com.mycompany.app.view.MyFadeListener
                                                public final void b(boolean z2, boolean z3) {
                                                }
                                            });
                                            mainTxtView2.d2.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.MainTxtView.24
                                                @Override // android.view.View.OnTouchListener
                                                public final boolean onTouch(View view, MotionEvent motionEvent) {
                                                    boolean z2 = PrefRead.k;
                                                    MainTxtView mainTxtView3 = MainTxtView.this;
                                                    if (z2) {
                                                        PrefRead.k = false;
                                                        PrefSet.d(8, mainTxtView3.f1, "mGuideTxt", false);
                                                    }
                                                    MyFadeFrame myFadeFrame = mainTxtView3.d2;
                                                    if (myFadeFrame != null) {
                                                        myFadeFrame.d(true);
                                                    }
                                                    return false;
                                                }
                                            });
                                            mainTxtView2.C1.addView(mainTxtView2.d2, -1, -1);
                                            return;
                                        }
                                        return;
                                    }
                                    int i2 = MainTxtView.X2;
                                }
                            });
                        }
                    } else {
                        mainTxtView.b2.f();
                        mainTxtView.J1.setVisibility(8);
                        mainTxtView.E1.setVisibility(8);
                        mainTxtView.F1.setVisibility(8);
                        MainTxtAdapter mainTxtAdapter2 = mainTxtView.L1;
                        if (mainTxtAdapter2 != null) {
                            mainTxtAdapter2.f = null;
                            mainTxtAdapter2.g();
                        }
                    }
                    Handler handler2 = mainTxtView.O0;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.27
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainTxtView mainTxtView2 = MainTxtView.this;
                                if (mainTxtView2.O0 == null) {
                                    return;
                                }
                                MainTxtView.D0(mainTxtView2);
                            }
                        });
                    }
                }
                MyCoverView myCoverView = mainTxtView.c2;
                if (myCoverView != null) {
                    myCoverView.f(true);
                }
                if (this.i) {
                    MainUtil.e8(mainTxtView, R.string.out_of_memory);
                }
            }
        }
    }

    public static void D0(MainTxtView mainTxtView) {
        boolean L0 = mainTxtView.L0();
        if (mainTxtView.n2 != null) {
            float f = PrefTts.l;
            if (f < 0.5f) {
                PrefTts.l = 0.5f;
            } else if (f > 3.0f) {
                PrefTts.l = 3.0f;
            }
            float f2 = PrefTts.m;
            if (f2 < 0.5f) {
                PrefTts.m = 0.5f;
            } else if (f2 > 2.0f) {
                PrefTts.m = 2.0f;
            }
            try {
                if (L0) {
                    float f3 = PrefTts.l;
                    mainTxtView.o2 = f3;
                    mainTxtView.p2 = PrefTts.m;
                    if (Float.compare(f3, 1.0f) != 0) {
                        mainTxtView.n2.setSpeechRate(PrefTts.l);
                    }
                    if (Float.compare(PrefTts.m, 1.0f) != 0) {
                        mainTxtView.n2.setPitch(PrefTts.m);
                        return;
                    }
                    return;
                }
                if (Float.compare(PrefTts.l, mainTxtView.o2) != 0) {
                    float f4 = PrefTts.l;
                    mainTxtView.o2 = f4;
                    mainTxtView.n2.setSpeechRate(f4);
                }
                if (Float.compare(PrefTts.m, mainTxtView.p2) != 0) {
                    float f5 = PrefTts.m;
                    mainTxtView.p2 = f5;
                    mainTxtView.n2.setPitch(f5);
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void E0(MainTxtView mainTxtView) {
        if (mainTxtView.x2 || mainTxtView.N1 == null) {
            return;
        }
        mainTxtView.R0();
        mainTxtView.N1.h(true);
    }

    public static int F0(int i, int i2, String str) {
        if (i - i2 > 128) {
            int i3 = i2 + 80;
            if (i3 < i) {
                int indexOf = str.indexOf(". ", i3);
                int i4 = indexOf + 2;
                if (indexOf > i3 && i4 <= i && i4 - i2 <= 128) {
                    if (i - i4 >= 10) {
                        return i4;
                    }
                } else {
                    int indexOf2 = str.indexOf(46, i3);
                    int i5 = indexOf2 + 1;
                    if (indexOf2 > i3 && i5 <= i && i5 - i2 <= 128) {
                        if (i - i5 >= 10) {
                            return i5;
                        }
                    } else {
                        int indexOf3 = str.indexOf(32, i3);
                        int i6 = indexOf3 + 1;
                        if (indexOf3 > i3 && i6 <= i && i6 - i2 <= 128) {
                            if (i - i6 >= 10) {
                                return i6;
                            }
                        }
                    }
                }
            }
            return i3;
        }
        return i;
    }

    public final boolean G0() {
        boolean z = true;
        if (!this.P2 && !this.Q2 && !this.m2) {
            this.m2 = true;
            Handler handler = this.O0;
            z = false;
            if (handler == null) {
                return false;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.43
                @Override // java.lang.Runnable
                public final void run() {
                    MainTxtView.this.m2 = false;
                }
            });
        }
        return z;
    }

    public final void H0() {
        MyCoverView myCoverView = this.c2;
        if (myCoverView != null) {
            myCoverView.m(true);
        }
        LoadTask loadTask = this.k2;
        if (loadTask != null) {
            loadTask.f12839c = true;
        }
        this.k2 = null;
        LoadTask loadTask2 = new LoadTask(this);
        this.k2 = loadTask2;
        loadTask2.b(this.f1);
    }

    public final int I0(int i) {
        ArrayList arrayList = this.u2;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return ((Integer) this.u2.get(i)).intValue();
        }
        return -1;
    }

    public final void J0() {
        MyPopupMenu myPopupMenu = this.D2;
        if (myPopupMenu != null) {
            this.Z0 = null;
            myPopupMenu.a();
            this.D2 = null;
        }
        MyFadeFrame myFadeFrame = this.N1;
        if (myFadeFrame != null) {
            myFadeFrame.setAutoHide(true);
        }
    }

    public final void K0() {
        MyFadeFrame myFadeFrame = this.N1;
        if (myFadeFrame == null || !this.l2) {
            return;
        }
        this.l2 = false;
        this.Y1 = null;
        myFadeFrame.d(true);
    }

    public final boolean L0() {
        if (this.f1 != null && this.n2 == null) {
            this.q2 = PrefTts.k;
            try {
                TextToSpeech textToSpeech = new TextToSpeech(this.f1, new TextToSpeech.OnInitListener() { // from class: com.mycompany.app.main.MainTxtView.28
                    @Override // android.speech.tts.TextToSpeech.OnInitListener
                    public final void onInit(int i) {
                        if (i == -1) {
                            int i2 = MainTxtView.X2;
                            MainTxtView.this.P0();
                        }
                    }
                });
                this.n2 = textToSpeech;
                textToSpeech.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: com.mycompany.app.main.MainTxtView.29
                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onDone(String str) {
                        MainTxtView mainTxtView = MainTxtView.this;
                        if (mainTxtView.s2 != null && mainTxtView.t2 < r0.size() - 1) {
                            mainTxtView.a1(false);
                        } else {
                            mainTxtView.Z0(0, false);
                        }
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onError(String str) {
                        int i = MainTxtView.X2;
                        MainTxtView.this.Z0(0, false);
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onRangeStart(String str, int i, int i2, int i3) {
                        MainTxtView mainTxtView = MainTxtView.this;
                        mainTxtView.z2 = i;
                        if (mainTxtView.C2) {
                            return;
                        }
                        mainTxtView.W0(mainTxtView.t2, false);
                    }

                    @Override // android.speech.tts.UtteranceProgressListener
                    public final void onStart(String str) {
                        Handler handler;
                        MainTxtView mainTxtView = MainTxtView.this;
                        int i = mainTxtView.w2;
                        if (i == 1) {
                            mainTxtView.Z0(1, false);
                            return;
                        }
                        if (i == 2) {
                            mainTxtView.O0(true);
                        } else {
                            if (mainTxtView.l2 || (handler = mainTxtView.O0) == null) {
                                return;
                            }
                            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.29.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MainTxtView mainTxtView2 = MainTxtView.this;
                                    if (mainTxtView2.l2) {
                                        return;
                                    }
                                    mainTxtView2.c1();
                                }
                            }, 100L);
                        }
                    }
                });
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
        return false;
    }

    public final boolean M0() {
        if (this.E2 != null || this.F2 != null || this.G2 != null || this.H2 != null || this.I2 != null) {
            return true;
        }
        return false;
    }

    public final boolean N0() {
        MyCoverView myCoverView = this.c2;
        if (myCoverView != null && myCoverView.h()) {
            return true;
        }
        return false;
    }

    public final void O0(boolean z) {
        if (z && this.J1 != null) {
            this.S2 = -1;
            U0();
        }
        this.w2 = 2;
        try {
            TextToSpeech textToSpeech = this.n2;
            if (textToSpeech != null && textToSpeech.isSpeaking()) {
                this.n2.stop();
            }
        } catch (Exception unused) {
        }
    }

    public final void P0() {
        if (this.J1 != null) {
            this.S2 = -1;
            U0();
        }
        this.w2 = 0;
        this.x2 = false;
        this.q2 = null;
        this.r2 = null;
        this.s2 = null;
        this.t2 = 0;
        this.u2 = null;
        this.v2 = -1;
        this.y2 = 0;
        this.z2 = 0;
        TextToSpeech textToSpeech = this.n2;
        if (textToSpeech != null) {
            try {
                if (textToSpeech.isSpeaking()) {
                    this.n2.stop();
                }
                this.n2.shutdown();
            } catch (Exception unused) {
            }
            this.n2 = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0042 A[Catch: Exception -> 0x0096, TryCatch #0 {Exception -> 0x0096, blocks: (B:5:0x0011, B:7:0x0015, B:8:0x001d, B:11:0x0025, B:14:0x002c, B:17:0x003c, B:19:0x0042, B:22:0x0052, B:24:0x0063, B:26:0x0073, B:28:0x007b, B:29:0x0080, B:31:0x008d, B:37:0x0091, B:38:0x003a), top: B:4:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052 A[Catch: Exception -> 0x0096, TryCatch #0 {Exception -> 0x0096, blocks: (B:5:0x0011, B:7:0x0015, B:8:0x001d, B:11:0x0025, B:14:0x002c, B:17:0x003c, B:19:0x0042, B:22:0x0052, B:24:0x0063, B:26:0x0073, B:28:0x007b, B:29:0x0080, B:31:0x008d, B:37:0x0091, B:38:0x003a), top: B:4:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003a A[Catch: Exception -> 0x0096, TryCatch #0 {Exception -> 0x0096, blocks: (B:5:0x0011, B:7:0x0015, B:8:0x001d, B:11:0x0025, B:14:0x002c, B:17:0x003c, B:19:0x0042, B:22:0x0052, B:24:0x0063, B:26:0x0073, B:28:0x007b, B:29:0x0080, B:31:0x008d, B:37:0x0091, B:38:0x003a), top: B:4:0x0011 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Q0() {
        /*
            r7 = this;
            r7.L0()
            android.speech.tts.TextToSpeech r0 = r7.n2
            if (r0 != 0) goto L9
            goto La9
        L9:
            r0 = 1
            r7.w2 = r0
            r7.x2 = r0
            r1 = -1
            r2 = 0
            r3 = 0
            int r4 = r7.v2     // Catch: java.lang.Exception -> L96
            if (r4 == r1) goto L1d
            int r4 = r7.I0(r4)     // Catch: java.lang.Exception -> L96
            r7.t2 = r4     // Catch: java.lang.Exception -> L96
            r7.v2 = r1     // Catch: java.lang.Exception -> L96
        L1d:
            int r4 = r7.t2     // Catch: java.lang.Exception -> L96
            java.util.ArrayList r5 = r7.s2     // Catch: java.lang.Exception -> L96
            if (r5 == 0) goto L35
            if (r4 < 0) goto L35
            int r5 = r5.size()     // Catch: java.lang.Exception -> L96
            if (r4 < r5) goto L2c
            goto L35
        L2c:
            java.util.ArrayList r5 = r7.s2     // Catch: java.lang.Exception -> L96
            java.lang.Object r4 = r5.get(r4)     // Catch: java.lang.Exception -> L96
            com.mycompany.app.dialog.DialogViewRead$TtsItem r4 = (com.mycompany.app.dialog.DialogViewRead.TtsItem) r4     // Catch: java.lang.Exception -> L96
            goto L36
        L35:
            r4 = r2
        L36:
            if (r4 != 0) goto L3a
            r4 = r2
            goto L3c
        L3a:
            java.lang.String r4 = r4.f15242c     // Catch: java.lang.Exception -> L96
        L3c:
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L96
            if (r5 == 0) goto L52
            r7.w2 = r3     // Catch: java.lang.Exception -> L96
            r7.x2 = r3     // Catch: java.lang.Exception -> L96
            r7.s2 = r2     // Catch: java.lang.Exception -> L96
            r7.t2 = r3     // Catch: java.lang.Exception -> L96
            r7.u2 = r2     // Catch: java.lang.Exception -> L96
            r7.v2 = r1     // Catch: java.lang.Exception -> L96
            r7.Z0(r3, r3)     // Catch: java.lang.Exception -> L96
            return
        L52:
            int r5 = r7.y2     // Catch: java.lang.Exception -> L96
            int r6 = r7.z2     // Catch: java.lang.Exception -> L96
            int r5 = r5 + r6
            r7.y2 = r5     // Catch: java.lang.Exception -> L96
            java.lang.String r4 = r4.substring(r5)     // Catch: java.lang.Exception -> L96
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L96
            if (r5 == 0) goto L73
            r7.w2 = r3     // Catch: java.lang.Exception -> L96
            r7.x2 = r3     // Catch: java.lang.Exception -> L96
            r7.s2 = r2     // Catch: java.lang.Exception -> L96
            r7.t2 = r3     // Catch: java.lang.Exception -> L96
            r7.u2 = r2     // Catch: java.lang.Exception -> L96
            r7.v2 = r1     // Catch: java.lang.Exception -> L96
            r7.Z0(r3, r3)     // Catch: java.lang.Exception -> L96
            return
        L73:
            android.speech.tts.TextToSpeech r5 = r7.n2     // Catch: java.lang.Exception -> L96
            boolean r5 = r5.isSpeaking()     // Catch: java.lang.Exception -> L96
            if (r5 == 0) goto L80
            android.speech.tts.TextToSpeech r5 = r7.n2     // Catch: java.lang.Exception -> L96
            r5.stop()     // Catch: java.lang.Exception -> L96
        L80:
            r7.V0()     // Catch: java.lang.Exception -> L96
            android.speech.tts.TextToSpeech r5 = r7.n2     // Catch: java.lang.Exception -> L96
            java.lang.String r6 = "0"
            int r4 = r5.speak(r4, r3, r2, r6)     // Catch: java.lang.Exception -> L96
            if (r4 != 0) goto L91
            r7.Z0(r0, r0)     // Catch: java.lang.Exception -> L96
            goto L9a
        L91:
            r7.w2 = r3     // Catch: java.lang.Exception -> L96
            r7.x2 = r3     // Catch: java.lang.Exception -> L96
            goto L9a
        L96:
            r7.w2 = r3
            r7.x2 = r3
        L9a:
            int r0 = r7.w2
            if (r0 != 0) goto La9
            r7.s2 = r2
            r7.t2 = r3
            r7.u2 = r2
            r7.v2 = r1
            r7.Z0(r3, r3)
        La9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTxtView.Q0():void");
    }

    public final void R0() {
        LinearLayout linearLayout = this.P1;
        if (linearLayout == null) {
            return;
        }
        if (this.x2) {
            linearLayout.setVisibility(8);
            this.Q1.setVisibility(0);
        } else {
            linearLayout.setVisibility(0);
            this.Q1.setVisibility(8);
        }
    }

    public final void S0(boolean z) {
        int i;
        MyMainRelative myMainRelative = this.C1;
        if (myMainRelative == null) {
            return;
        }
        if (z) {
            Window window = getWindow();
            if (MainApp.K1) {
                i = -16777216;
            } else {
                i = -460552;
            }
            myMainRelative.b(window, i);
        }
        if (MainApp.K1) {
            this.I1.setBackgroundColor(-14606047);
            this.M1.setPreColor(-12632257);
            this.O1.setBackgroundColor(-14606047);
            this.P1.setBackgroundColor(-14606047);
            this.Q1.setBackgroundColor(-14606047);
            this.D1.setImageResource(R.drawable.outline_chevron_left_dark_24);
            this.E1.setImageResource(R.drawable.outline_download_dark_20);
            this.F1.setImageResource(R.drawable.outline_link_dark_20);
            this.G1.setImageResource(R.drawable.outline_sticky_note_dark_20);
            this.H1.setImageResource(R.drawable.outline_more_vert_dark_20);
            this.R1.setImageResource(R.drawable.outline_brightness_6_dark_24);
            this.S1.setImageResource(R.drawable.outline_text_fields_dark_24);
            this.T1.setImageResource(R.drawable.outline_volume_up_dark_24);
            this.U1.setImageResource(R.drawable.baseline_play_arrow_dark_24);
            this.V1.setImageResource(R.drawable.baseline_fast_rewind_dark_24);
            this.W1.setImageResource(R.drawable.baseline_pause_dark_24);
            this.X1.setImageResource(R.drawable.baseline_stop_dark_24);
            this.Z1.setImageResource(R.drawable.outline_search_dark_24);
            this.a2.setImageResource(R.drawable.baseline_fast_forward_dark_24);
            this.D1.setBgPreColor(-12632257);
            this.E1.setBgPreColor(-12632257);
            this.F1.setBgPreColor(-12632257);
            this.G1.setBgPreColor(-12632257);
            this.H1.setBgPreColor(-12632257);
            this.R1.setBgNorColor(-11513776);
            this.S1.setBgNorColor(-11513776);
            this.T1.setBgNorColor(-11513776);
            this.U1.setBgNorColor(-11513776);
            this.V1.setBgNorColor(-11513776);
            this.W1.setBgNorColor(-11513776);
            this.X1.setBgNorColor(-11513776);
            this.Z1.setBgNorColor(-11513776);
            this.a2.setBgNorColor(-11513776);
            this.c2.setBackColor(-1593835520);
            this.R1.setBgPreColor(-12632257);
            this.S1.setBgPreColor(-12632257);
            this.T1.setBgPreColor(-12632257);
            this.U1.setBgPreColor(-12632257);
            this.V1.setBgPreColor(-12632257);
            this.W1.setBgPreColor(-12632257);
            this.X1.setBgPreColor(-12632257);
            this.Z1.setBgPreColor(-12632257);
            this.a2.setBgPreColor(-12632257);
            return;
        }
        this.I1.setBackgroundColor(-1);
        this.M1.setPreColor(-2434342);
        this.O1.setBackgroundColor(-1);
        this.P1.setBackgroundColor(-1);
        this.Q1.setBackgroundColor(-1);
        this.D1.setImageResource(R.drawable.outline_chevron_left_black_24);
        this.E1.setImageResource(R.drawable.outline_download_black_20);
        this.F1.setImageResource(R.drawable.outline_link_black_20);
        this.G1.setImageResource(R.drawable.outline_sticky_note_black_20);
        this.H1.setImageResource(R.drawable.outline_more_vert_black_20);
        this.R1.setImageResource(R.drawable.outline_brightness_6_black_24);
        this.S1.setImageResource(R.drawable.outline_text_fields_black_24);
        this.T1.setImageResource(R.drawable.outline_volume_up_black_24);
        this.U1.setImageResource(R.drawable.baseline_play_arrow_black_24);
        this.V1.setImageResource(R.drawable.baseline_fast_rewind_black_24);
        this.W1.setImageResource(R.drawable.baseline_pause_black_24);
        this.X1.setImageResource(R.drawable.baseline_stop_black_24);
        this.Z1.setImageResource(R.drawable.outline_search_black_24);
        this.a2.setImageResource(R.drawable.baseline_fast_forward_black_24);
        this.D1.setBgPreColor(-2039584);
        this.E1.setBgPreColor(-2039584);
        this.F1.setBgPreColor(-2039584);
        this.G1.setBgPreColor(-2039584);
        this.H1.setBgPreColor(-2039584);
        this.R1.setBgNorColor(-460552);
        this.S1.setBgNorColor(-460552);
        this.T1.setBgNorColor(-460552);
        this.U1.setBgNorColor(-460552);
        this.V1.setBgNorColor(-460552);
        this.W1.setBgNorColor(-460552);
        this.X1.setBgNorColor(-460552);
        this.Z1.setBgNorColor(-460552);
        this.a2.setBgNorColor(-460552);
        this.c2.setBackColor(-1577058305);
        this.R1.setBgPreColor(-2039584);
        this.S1.setBgPreColor(-2039584);
        this.T1.setBgPreColor(-2039584);
        this.U1.setBgPreColor(-2039584);
        this.V1.setBgPreColor(-2039584);
        this.W1.setBgPreColor(-2039584);
        this.X1.setBgPreColor(-2039584);
        this.Z1.setBgPreColor(-2039584);
        this.a2.setBgPreColor(-2039584);
    }

    public final void T0() {
        int i;
        if (this.x2) {
            this.v2 = -1;
            return;
        }
        if (N0()) {
            this.v2 = -1;
            MainUtil.e8(this.f1, R.string.wait_retry);
            return;
        }
        int i2 = this.w2;
        if (i2 == 2) {
            Q0();
        } else if (i2 == 0) {
            a1(true);
        }
        this.A2 = true;
        if (this.N1 == null || this.l2) {
            return;
        }
        this.l2 = true;
        this.B2 = -1234;
        this.C2 = false;
        this.Y1 = this.X1;
        if (N0()) {
            MyButtonImage myButtonImage = this.Y1;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -16777216;
            }
            myButtonImage.o(i, true);
        }
        R0();
        this.N1.h(false);
    }

    public final void U0() {
        MainTxtAdapter mainTxtAdapter = this.L1;
        if (mainTxtAdapter != null && this.S2 != mainTxtAdapter.k) {
            this.Q2 = true;
            Handler handler = this.O0;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.33
                @Override // java.lang.Runnable
                public final void run() {
                    MainTxtView mainTxtView = MainTxtView.this;
                    MainTxtAdapter mainTxtAdapter2 = mainTxtView.L1;
                    if (mainTxtAdapter2 == null) {
                        return;
                    }
                    int i = mainTxtView.S2;
                    int i2 = mainTxtAdapter2.k;
                    if (i2 != i) {
                        mainTxtAdapter2.k = i;
                        mainTxtAdapter2.v(i2);
                        mainTxtAdapter2.v(i);
                    }
                    mainTxtView.Q2 = false;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void V0() {
        /*
            r4 = this;
            java.lang.String r0 = com.mycompany.app.pref.PrefTts.k
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r1 = 0
            if (r0 != 0) goto Lf
            java.lang.String r0 = com.mycompany.app.pref.PrefTts.k
        Lb:
            r3 = r1
            r1 = r0
            r0 = r3
            goto L24
        Lf:
            java.lang.String r0 = r4.q2
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1a
            java.lang.String r0 = r4.q2
            goto Lb
        L1a:
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
            if (r0 == 0) goto L24
            java.lang.String r1 = r0.toString()
        L24:
            java.lang.String r2 = r4.r2
            boolean r2 = com.mycompany.app.main.MainUtil.q5(r2, r1)
            if (r2 == 0) goto L2d
            goto L52
        L2d:
            r4.r2 = r1
            if (r0 != 0) goto L35
            java.util.Locale r0 = com.mycompany.app.main.MainUtil.O3(r1)
        L35:
            if (r0 != 0) goto L3c
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
            goto L4d
        L3c:
            android.speech.tts.TextToSpeech r1 = r4.n2     // Catch: java.lang.Exception -> L43
            int r1 = r1.isLanguageAvailable(r0)     // Catch: java.lang.Exception -> L43
            goto L44
        L43:
            r1 = -2
        L44:
            if (r1 == 0) goto L4d
            r2 = 1
            if (r1 == r2) goto L4d
            java.util.Locale r0 = com.mycompany.app.main.MainApp.j()
        L4d:
            android.speech.tts.TextToSpeech r1 = r4.n2     // Catch: java.lang.Exception -> L52
            r1.setLanguage(r0)     // Catch: java.lang.Exception -> L52
        L52:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTxtView.V0():void");
    }

    public final void W0(int i, boolean z) {
        DialogViewRead.TtsItem ttsItem;
        if (this.A2) {
            this.A2 = false;
            z = true;
        }
        if (this.J1 != null) {
            ArrayList arrayList = this.s2;
            if (arrayList != null && i >= 0 && i < arrayList.size()) {
                ttsItem = (DialogViewRead.TtsItem) this.s2.get(i);
            } else {
                ttsItem = null;
            }
            if (ttsItem != null) {
                this.S2 = ttsItem.f15241a;
                if (!z) {
                    U0();
                    return;
                }
                Handler handler = this.O0;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.32
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i2;
                        MainTxtView mainTxtView = MainTxtView.this;
                        MainTxtAdapter mainTxtAdapter = mainTxtView.L1;
                        if (mainTxtAdapter != null && mainTxtView.K1 != null && (i2 = mainTxtView.S2) >= 0 && i2 < mainTxtAdapter.d()) {
                            View s = mainTxtView.K1.s(i2);
                            if (s == null) {
                                if (mainTxtView.S2 < mainTxtView.K1.U0()) {
                                    mainTxtView.K1.k1(i2, mainTxtView.O1.getHeight());
                                } else if (mainTxtView.S2 > mainTxtView.K1.V0()) {
                                    mainTxtView.K1.k1(i2, (mainTxtView.I1.getHeight() - mainTxtView.Q1.getHeight()) - MainApp.g1);
                                } else {
                                    mainTxtView.K1.x0(i2);
                                }
                            } else {
                                int y = (int) s.getY();
                                int height = mainTxtView.O1.getHeight();
                                if (y < height) {
                                    mainTxtView.K1.k1(i2, height);
                                } else {
                                    int height2 = s.getHeight();
                                    int i3 = y + height2;
                                    int height3 = mainTxtView.I1.getHeight() - mainTxtView.Q1.getHeight();
                                    if (i3 > height3 && height3 > height2) {
                                        mainTxtView.K1.k1(i2, height3 - height2);
                                    } else {
                                        mainTxtView.K1.x0(i2);
                                    }
                                }
                            }
                        }
                        mainTxtView.U0();
                    }
                });
            }
        }
    }

    public final void X0(int i, boolean z) {
        DialogViewRead.TtsItem ttsItem;
        ArrayList arrayList = this.s2;
        String str = null;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            ttsItem = (DialogViewRead.TtsItem) this.s2.get(i);
        } else {
            ttsItem = null;
        }
        if (ttsItem != null) {
            str = ttsItem.f15242c;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.x2 = true;
        MyRecyclerView myRecyclerView = this.J1;
        Runnable runnable = this.V2;
        myRecyclerView.removeCallbacks(runnable);
        if (z) {
            O0(false);
        }
        W0(i, true);
        this.B2 = i;
        this.C2 = true;
        this.P2 = true;
        this.J1.postDelayed(runnable, 200L);
    }

    public final void Y0(int i) {
        ArrayList arrayList;
        int i2;
        if (this.J1 == null || (arrayList = this.s2) == null) {
            return;
        }
        if (this.B2 == -1234) {
            this.B2 = this.t2;
        }
        boolean z = true;
        if (i == 1) {
            i2 = this.B2 - 1;
        } else if (i == 2) {
            i2 = this.B2 + 1;
        } else {
            i2 = this.B2;
        }
        if (i2 >= arrayList.size()) {
            i2 = this.s2.size() - 1;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if (i == 0) {
            z = false;
        }
        X0(i2, z);
    }

    public final void Z0(int i, boolean z) {
        Handler handler;
        if (this.U1 != null) {
            this.w2 = i;
            if (i == 1) {
                this.x2 = true;
            } else {
                this.x2 = false;
                if (this.J1 != null) {
                    this.S2 = -1;
                    U0();
                }
            }
            if ((this.w2 == 1 && z) || (handler = this.O0) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.31
                @Override // java.lang.Runnable
                public final void run() {
                    MainTxtView mainTxtView = MainTxtView.this;
                    try {
                        if (!mainTxtView.x2) {
                            mainTxtView.K0();
                        }
                        MyButtonImage myButtonImage = mainTxtView.Y1;
                        if (myButtonImage != null) {
                            myButtonImage.setLoad(false);
                            mainTxtView.Y1 = null;
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    public final void a1(boolean z) {
        if (this.J1 == null) {
            return;
        }
        this.x2 = true;
        this.y2 = 0;
        this.z2 = 0;
        ArrayList arrayList = null;
        if (z) {
            ArrayList arrayList2 = this.j2;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                arrayList = arrayList2;
            } else {
                this.w2 = 0;
                this.x2 = false;
                this.s2 = null;
                this.t2 = 0;
                this.u2 = null;
                this.v2 = -1;
                Z0(0, false);
                return;
            }
        }
        this.R2 = arrayList;
        m0(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.30
            /* JADX WARN: Code restructure failed: missing block: B:28:0x00b1, code lost:
            
                if (r5 >= r15) goto L58;
             */
            /* JADX WARN: Code restructure failed: missing block: B:29:0x00b3, code lost:
            
                r3 = r5;
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x00ba, code lost:
            
                if (r10.startsWith(" ", r3) != false) goto L120;
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
            
                if (r10.startsWith("\n", r3) == false) goto L119;
             */
            /* JADX WARN: Code restructure failed: missing block: B:36:0x00cb, code lost:
            
                r3 = r3 + 1;
             */
            /* JADX WARN: Code restructure failed: missing block: B:38:0x00c3, code lost:
            
                if (r3 <= r14) goto L55;
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00c5, code lost:
            
                if (r3 >= r15) goto L55;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00c7, code lost:
            
                r15 = r3;
             */
            /* JADX WARN: Code restructure failed: missing block: B:41:0x00c9, code lost:
            
                r15 = r5;
             */
            /* JADX WARN: Removed duplicated region for block: B:101:0x0180 A[Catch: Exception -> 0x01ab, TryCatch #0 {Exception -> 0x01ab, blocks: (B:6:0x001a, B:8:0x003b, B:12:0x012a, B:13:0x0056, B:19:0x0066, B:22:0x006f, B:24:0x0081, B:30:0x00b4, B:32:0x00bc, B:36:0x00cb, B:43:0x00d0, B:45:0x00da, B:47:0x00e4, B:49:0x00ee, B:55:0x0086, B:57:0x008e, B:60:0x0093, B:62:0x009b, B:65:0x00a0, B:67:0x00a8, B:74:0x0104, B:76:0x0110, B:78:0x011a, B:84:0x013c, B:86:0x0141, B:87:0x0149, B:90:0x0151, B:93:0x0158, B:96:0x0168, B:98:0x016e, B:101:0x0180, B:103:0x0188, B:104:0x018d, B:108:0x0197, B:110:0x01a2, B:116:0x01a6, B:117:0x0166, B:119:0x0134), top: B:4:0x0018 }] */
            /* JADX WARN: Removed duplicated region for block: B:117:0x0166 A[Catch: Exception -> 0x01ab, TryCatch #0 {Exception -> 0x01ab, blocks: (B:6:0x001a, B:8:0x003b, B:12:0x012a, B:13:0x0056, B:19:0x0066, B:22:0x006f, B:24:0x0081, B:30:0x00b4, B:32:0x00bc, B:36:0x00cb, B:43:0x00d0, B:45:0x00da, B:47:0x00e4, B:49:0x00ee, B:55:0x0086, B:57:0x008e, B:60:0x0093, B:62:0x009b, B:65:0x00a0, B:67:0x00a8, B:74:0x0104, B:76:0x0110, B:78:0x011a, B:84:0x013c, B:86:0x0141, B:87:0x0149, B:90:0x0151, B:93:0x0158, B:96:0x0168, B:98:0x016e, B:101:0x0180, B:103:0x0188, B:104:0x018d, B:108:0x0197, B:110:0x01a2, B:116:0x01a6, B:117:0x0166, B:119:0x0134), top: B:4:0x0018 }] */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0164  */
            /* JADX WARN: Removed duplicated region for block: B:98:0x016e A[Catch: Exception -> 0x01ab, TryCatch #0 {Exception -> 0x01ab, blocks: (B:6:0x001a, B:8:0x003b, B:12:0x012a, B:13:0x0056, B:19:0x0066, B:22:0x006f, B:24:0x0081, B:30:0x00b4, B:32:0x00bc, B:36:0x00cb, B:43:0x00d0, B:45:0x00da, B:47:0x00e4, B:49:0x00ee, B:55:0x0086, B:57:0x008e, B:60:0x0093, B:62:0x009b, B:65:0x00a0, B:67:0x00a8, B:74:0x0104, B:76:0x0110, B:78:0x011a, B:84:0x013c, B:86:0x0141, B:87:0x0149, B:90:0x0151, B:93:0x0158, B:96:0x0168, B:98:0x016e, B:101:0x0180, B:103:0x0188, B:104:0x018d, B:108:0x0197, B:110:0x01a2, B:116:0x01a6, B:117:0x0166, B:119:0x0134), top: B:4:0x0018 }] */
            /* JADX WARN: Type inference failed for: r4v14, types: [java.lang.Object, com.mycompany.app.dialog.DialogViewRead$TtsItem] */
            /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Object, com.mycompany.app.dialog.DialogViewRead$TtsItem] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 449
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainTxtView.AnonymousClass30.run():void");
            }
        });
    }

    public final void b1(boolean z) {
        BufferedReader bufferedReader = this.N2;
        if (bufferedReader != null) {
            try {
                bufferedReader.close();
            } catch (Exception unused) {
            }
        }
        InputStream inputStream = this.M2;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception unused2) {
            }
        }
        if (z) {
            HttpURLConnection httpURLConnection = this.L2;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                this.L2 = null;
                return;
            }
            return;
        }
        final HttpURLConnection httpURLConnection2 = this.L2;
        this.L2 = null;
        if (httpURLConnection2 == null) {
            return;
        }
        m0(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.25
            @Override // java.lang.Runnable
            public final void run() {
                httpURLConnection2.disconnect();
            }
        });
    }

    public final void c1() {
        if (this.J1 != null) {
            this.S2 = -1;
            U0();
        }
        this.w2 = 0;
        this.x2 = false;
        this.s2 = null;
        this.t2 = 0;
        this.u2 = null;
        this.v2 = -1;
        this.y2 = 0;
        this.z2 = 0;
        try {
            TextToSpeech textToSpeech = this.n2;
            if (textToSpeech != null && textToSpeech.isSpeaking()) {
                this.n2.stop();
            }
            MyButtonImage myButtonImage = this.Y1;
            if (myButtonImage != null) {
                myButtonImage.setLoad(false);
                this.Y1 = null;
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1 && actionMasked != 3) {
            if (actionMasked == 5 && motionEvent.getPointerCount() > 1 && this.f2 == null && this.f1 != null) {
                this.f2 = new ScaleGestureDetector(this.f1, new ScaleGestureDetector.SimpleOnScaleGestureListener() { // from class: com.mycompany.app.main.MainTxtView.46
                    @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
                    public final boolean onScale(ScaleGestureDetector scaleGestureDetector) {
                        MainTxtAdapter mainTxtAdapter = MainTxtView.this.L1;
                        if (mainTxtAdapter == null) {
                            return true;
                        }
                        PrefRead.m = mainTxtAdapter.w(scaleGestureDetector);
                        return true;
                    }
                });
            }
        } else {
            MyFadeFrame myFadeFrame = this.N1;
            if (myFadeFrame != null) {
                myFadeFrame.g();
            }
            MyScrollBar myScrollBar = this.M1;
            if (myScrollBar != null) {
                myScrollBar.e();
            }
        }
        GestureDetector gestureDetector = this.e2;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        ScaleGestureDetector scaleGestureDetector = this.f2;
        if (scaleGestureDetector != null) {
            scaleGestureDetector.onTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        MainTxtAdapter mainTxtAdapter;
        DialogSaveSource dialogSaveSource = this.E2;
        if (dialogSaveSource == null || !dialogSaveSource.E(i, i2, intent)) {
            if (i == 9) {
                if (i2 == -1 && intent != null) {
                    Uri data = intent.getData();
                    if (data == null) {
                        MainUtil.e8(this, R.string.invalid_file);
                        return;
                    }
                    MainUtil.z7(this.f1, data);
                    this.g2 = data.toString();
                    this.h2 = null;
                    this.i2 = null;
                    H0();
                    return;
                }
                return;
            }
            if (i == 7 && (mainTxtAdapter = this.L1) != null) {
                Context context = this.f1;
                if (PrefRead.n && !TextUtils.isEmpty(PrefRead.o)) {
                    mainTxtAdapter.h = MainUtil.w1(context, MainUtil.j3(context));
                } else if (PrefRead.p) {
                    mainTxtAdapter.h = Typeface.create(Typeface.DEFAULT, 1);
                } else {
                    mainTxtAdapter.h = null;
                }
                mainTxtAdapter.g();
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        MainApp.K1 = MainUtil.i5(true, configuration);
        MainApp.L1 = MainUtil.i5(false, configuration);
        boolean z = this.J2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.J2 = z2;
            try {
                S0(true);
                MainTxtAdapter mainTxtAdapter = this.L1;
                if (mainTxtAdapter != null) {
                    mainTxtAdapter.g();
                }
                A0();
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.J2 = MainApp.K1;
        this.K2 = PrefRead.m;
        MainUtil.u7(this);
        Uri data = getIntent().getData();
        if (data != null) {
            this.g2 = data.toString();
        } else {
            this.g2 = getIntent().getStringExtra("EXTRA_PATH");
            this.h2 = getIntent().getStringExtra("EXTRA_REFERER");
            this.i2 = getIntent().getStringExtra("EXTRA_NAME");
        }
        int i = PrefRead.m;
        if (i < 50) {
            PrefRead.m = 50;
        } else if (i > 500) {
            PrefRead.m = 500;
        }
        o0(null, 9);
        o0(null, 7);
        o0(null, 19);
        int i2 = R.id.read_icon_copy;
        int i3 = R.id.read_icon_open;
        int i4 = R.id.read_icon_save;
        int i5 = R.id.read_icon_more;
        int i6 = R.id.read_cast_icon;
        int i7 = R.id.read_cast_ctrl;
        MyMainRelative myMainRelative = new MyMainRelative(this);
        myMainRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyRoundItem myRoundItem = new MyRoundItem(this);
        int i8 = MainApp.E1;
        myRoundItem.n = true;
        myRoundItem.o = true;
        myRoundItem.q = i8;
        myRoundItem.e();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(2, i7);
        myMainRelative.addView(myRoundItem, layoutParams);
        MyRecyclerView myRecyclerView = new MyRecyclerView(this);
        int i9 = MainApp.E1;
        myRecyclerView.setPadding(i9, 0, i9, 0);
        myRecyclerView.setVerticalScrollBarEnabled(false);
        myRecyclerView.setHorizontalScrollBarEnabled(false);
        myRoundItem.addView(myRecyclerView, -1, -1);
        MyScrollBar myScrollBar = new MyScrollBar(this);
        myScrollBar.n();
        myScrollBar.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) MainUtil.G(this, 32.0f), -1);
        if (PrefZone.x == 1) {
            layoutParams2.addRule(9);
            myScrollBar.setPosLeft(true);
        } else {
            layoutParams2.addRule(11);
        }
        myRoundItem.addView(myScrollBar, layoutParams2);
        MyFadeFrame myFadeFrame = new MyFadeFrame(this);
        myFadeFrame.setTouchable(true);
        myFadeFrame.setAutoHide(true);
        myFadeFrame.setVisibility(8);
        myRoundItem.addView(myFadeFrame, -1, -1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        myFadeFrame.addView(relativeLayout, -1, MainApp.b1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setBgPreRadius(MainApp.k1);
        int i10 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i10, i10);
        int i11 = MainApp.G1;
        layoutParams3.topMargin = i11;
        layoutParams3.setMarginStart(i11);
        relativeLayout.addView(myButtonImage, layoutParams3);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setId(i4);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setBgPreRadius(MainApp.k1);
        myButtonImage2.setVisibility(8);
        int i12 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i12, i12);
        layoutParams4.addRule(16, i2);
        layoutParams4.topMargin = MainApp.G1;
        relativeLayout.addView(myButtonImage2, layoutParams4);
        MyButtonImage myButtonImage3 = new MyButtonImage(this);
        myButtonImage3.setId(i2);
        myButtonImage3.setScaleType(scaleType);
        myButtonImage3.setBgPreRadius(MainApp.k1);
        myButtonImage3.setVisibility(8);
        int i13 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i13, i13);
        layoutParams5.addRule(16, i3);
        layoutParams5.topMargin = MainApp.G1;
        relativeLayout.addView(myButtonImage3, layoutParams5);
        MyButtonImage myButtonImage4 = new MyButtonImage(this);
        myButtonImage4.setId(i3);
        myButtonImage4.setScaleType(scaleType);
        myButtonImage4.setBgPreRadius(MainApp.k1);
        int i14 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i14, i14);
        layoutParams6.addRule(16, i5);
        layoutParams6.topMargin = MainApp.G1;
        relativeLayout.addView(myButtonImage4, layoutParams6);
        MyButtonImage myButtonImage5 = new MyButtonImage(this);
        myButtonImage5.setId(i5);
        myButtonImage5.setScaleType(scaleType);
        myButtonImage5.setBgPreRadius(MainApp.k1);
        int i15 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i15, i15);
        layoutParams7.addRule(16, i6);
        layoutParams7.topMargin = MainApp.G1;
        relativeLayout.addView(myButtonImage5, layoutParams7);
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(i6);
        frameLayout.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, MainApp.b1);
        layoutParams8.addRule(21);
        relativeLayout.addView(frameLayout, layoutParams8);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setVisibility(8);
        int G = (int) MainUtil.G(this, 80.0f);
        FrameLayout.LayoutParams layoutParams9 = new FrameLayout.LayoutParams(-1, G);
        layoutParams9.gravity = 80;
        myFadeFrame.addView(linearLayout, layoutParams9);
        View view = new View(this);
        LinearLayout.LayoutParams layoutParams10 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams10.gravity = 8388627;
        layoutParams10.weight = 1.0f;
        linearLayout.addView(view, layoutParams10);
        MyButtonImage myButtonImage6 = new MyButtonImage(this);
        myButtonImage6.setScaleType(scaleType);
        myButtonImage6.l(MainApp.j1, true);
        myButtonImage6.setBgPreRadius(MainApp.k1);
        int i16 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams11 = new LinearLayout.LayoutParams(i16, i16);
        layoutParams11.gravity = 8388627;
        linearLayout.addView(myButtonImage6, layoutParams11);
        View view2 = new View(this);
        LinearLayout.LayoutParams layoutParams12 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams12.gravity = 8388627;
        layoutParams12.weight = 1.0f;
        linearLayout.addView(view2, layoutParams12);
        MyButtonImage myButtonImage7 = new MyButtonImage(this);
        myButtonImage7.setScaleType(scaleType);
        myButtonImage7.l(MainApp.j1, true);
        myButtonImage7.setBgPreRadius(MainApp.k1);
        int i17 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams13 = new LinearLayout.LayoutParams(i17, i17);
        layoutParams13.gravity = 8388627;
        linearLayout.addView(myButtonImage7, layoutParams13);
        View view3 = new View(this);
        LinearLayout.LayoutParams layoutParams14 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams14.gravity = 8388627;
        layoutParams14.weight = 1.0f;
        linearLayout.addView(view3, layoutParams14);
        MyButtonImage myButtonImage8 = new MyButtonImage(this);
        myButtonImage8.setScaleType(scaleType);
        myButtonImage8.l(MainApp.j1, true);
        myButtonImage8.setBgPreRadius(MainApp.k1);
        int i18 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams15 = new LinearLayout.LayoutParams(i18, i18);
        layoutParams15.gravity = 8388627;
        linearLayout.addView(myButtonImage8, layoutParams15);
        View view4 = new View(this);
        LinearLayout.LayoutParams layoutParams16 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams16.gravity = 8388627;
        layoutParams16.weight = 1.0f;
        linearLayout.addView(view4, layoutParams16);
        MyButtonImage myButtonImage9 = new MyButtonImage(this);
        myButtonImage9.setScaleType(scaleType);
        myButtonImage9.l(MainApp.j1, true);
        myButtonImage9.setBgPreRadius(MainApp.k1);
        int i19 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams17 = new LinearLayout.LayoutParams(i19, i19);
        layoutParams17.gravity = 8388627;
        linearLayout.addView(myButtonImage9, layoutParams17);
        View view5 = new View(this);
        LinearLayout.LayoutParams layoutParams18 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams18.gravity = 8388627;
        layoutParams18.weight = 1.0f;
        linearLayout.addView(view5, layoutParams18);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setBaselineAligned(false);
        linearLayout2.setOrientation(0);
        linearLayout2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams19 = new FrameLayout.LayoutParams(-1, G);
        layoutParams19.gravity = 80;
        myFadeFrame.addView(linearLayout2, layoutParams19);
        View view6 = new View(this);
        LinearLayout.LayoutParams layoutParams20 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams20.gravity = 8388627;
        layoutParams20.weight = 1.0f;
        linearLayout2.addView(view6, layoutParams20);
        MyButtonImage myButtonImage10 = new MyButtonImage(this);
        myButtonImage10.setScaleType(scaleType);
        myButtonImage10.l(MainApp.j1, true);
        myButtonImage10.setBgPreRadius(MainApp.k1);
        int i20 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams21 = new LinearLayout.LayoutParams(i20, i20);
        layoutParams21.gravity = 8388627;
        linearLayout2.addView(myButtonImage10, layoutParams21);
        View view7 = new View(this);
        LinearLayout.LayoutParams layoutParams22 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams22.gravity = 8388627;
        layoutParams22.weight = 1.0f;
        linearLayout2.addView(view7, layoutParams22);
        MyButtonImage myButtonImage11 = new MyButtonImage(this);
        myButtonImage11.setScaleType(scaleType);
        myButtonImage11.l(MainApp.j1, true);
        myButtonImage11.setBgPreRadius(MainApp.k1);
        int i21 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams23 = new LinearLayout.LayoutParams(i21, i21);
        layoutParams23.gravity = 8388627;
        linearLayout2.addView(myButtonImage11, layoutParams23);
        View view8 = new View(this);
        LinearLayout.LayoutParams layoutParams24 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams24.gravity = 8388627;
        layoutParams24.weight = 1.0f;
        linearLayout2.addView(view8, layoutParams24);
        MyButtonImage myButtonImage12 = new MyButtonImage(this);
        myButtonImage12.setScaleType(scaleType);
        myButtonImage12.l(MainApp.j1, true);
        myButtonImage12.setBgPreRadius(MainApp.k1);
        int i22 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams25 = new LinearLayout.LayoutParams(i22, i22);
        layoutParams25.gravity = 8388627;
        linearLayout2.addView(myButtonImage12, layoutParams25);
        View view9 = new View(this);
        LinearLayout.LayoutParams layoutParams26 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams26.gravity = 8388627;
        layoutParams26.weight = 1.0f;
        linearLayout2.addView(view9, layoutParams26);
        MyButtonImage myButtonImage13 = new MyButtonImage(this);
        myButtonImage13.setScaleType(scaleType);
        myButtonImage13.l(MainApp.j1, true);
        myButtonImage13.setBgPreRadius(MainApp.k1);
        int i23 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams27 = new LinearLayout.LayoutParams(i23, i23);
        layoutParams27.gravity = 8388627;
        linearLayout2.addView(myButtonImage13, layoutParams27);
        View view10 = new View(this);
        LinearLayout.LayoutParams layoutParams28 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams28.gravity = 8388627;
        layoutParams28.weight = 1.0f;
        linearLayout2.addView(view10, layoutParams28);
        MyButtonImage myButtonImage14 = new MyButtonImage(this);
        myButtonImage14.setScaleType(scaleType);
        myButtonImage14.l(MainApp.j1, true);
        myButtonImage14.setBgPreRadius(MainApp.k1);
        int i24 = MainApp.g1;
        LinearLayout.LayoutParams layoutParams29 = new LinearLayout.LayoutParams(i24, i24);
        layoutParams29.gravity = 8388627;
        linearLayout2.addView(myButtonImage14, layoutParams29);
        View view11 = new View(this);
        LinearLayout.LayoutParams layoutParams30 = new LinearLayout.LayoutParams(0, MainApp.g1);
        layoutParams30.gravity = 8388627;
        layoutParams30.weight = 1.0f;
        linearLayout2.addView(view11, layoutParams30);
        MyFadeImage myFadeImage = new MyFadeImage(this);
        myFadeImage.setScaleType(scaleType);
        myFadeImage.setImageResource(R.drawable.logo_gray);
        myFadeImage.setVisibility(8);
        myRoundItem.addView(myFadeImage, -1, -1);
        MyCoverView myCoverView = new MyCoverView(this);
        myCoverView.setVisibility(8);
        myRoundItem.addView(myCoverView, -1, -1);
        FrameLayout frameLayout2 = new FrameLayout(this);
        frameLayout2.setId(i7);
        frameLayout2.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams31 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams31.addRule(12);
        myMainRelative.addView(frameLayout2, layoutParams31);
        this.C1 = myMainRelative;
        this.D1 = myButtonImage;
        this.E1 = myButtonImage2;
        this.F1 = myButtonImage3;
        this.G1 = myButtonImage4;
        this.H1 = myButtonImage5;
        this.I1 = myRoundItem;
        this.J1 = myRecyclerView;
        this.M1 = myScrollBar;
        this.N1 = myFadeFrame;
        this.O1 = relativeLayout;
        this.P1 = linearLayout;
        this.Q1 = linearLayout2;
        this.R1 = myButtonImage6;
        this.S1 = myButtonImage7;
        this.T1 = myButtonImage8;
        this.U1 = myButtonImage9;
        this.V1 = myButtonImage10;
        this.W1 = myButtonImage11;
        this.X1 = myButtonImage12;
        this.Z1 = myButtonImage13;
        this.a2 = myButtonImage14;
        this.b2 = myFadeImage;
        this.c2 = myCoverView;
        B0(myMainRelative, frameLayout, frameLayout2);
        this.C1.setWindow(getWindow());
        initMainScreenOn(this.C1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v8, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
            /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View$OnClickListener, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r3v2, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                RelativeLayout.LayoutParams layoutParams32;
                final MainTxtView mainTxtView = MainTxtView.this;
                if (mainTxtView.C1 == null) {
                    return;
                }
                mainTxtView.S0(false);
                mainTxtView.O1.setOnClickListener(new Object());
                mainTxtView.P1.setOnClickListener(new Object());
                mainTxtView.Q1.setOnClickListener(new Object());
                mainTxtView.D1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        MainTxtView.this.finish();
                    }
                });
                mainTxtView.E1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        final MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.M0()) {
                            return;
                        }
                        DialogSaveSource dialogSaveSource = mainTxtView2.E2;
                        if (dialogSaveSource != null) {
                            dialogSaveSource.dismiss();
                            mainTxtView2.E2 = null;
                        }
                        DialogSaveSource dialogSaveSource2 = new DialogSaveSource(mainTxtView2, mainTxtView2.i2, null, mainTxtView2.j2, new DialogDownPage.DownPageListener() { // from class: com.mycompany.app.main.MainTxtView.36
                            @Override // com.mycompany.app.dialog.DialogDownPage.DownPageListener
                            public final void a(String str, final String str2, Bitmap bitmap) {
                                final MainTxtView mainTxtView3 = MainTxtView.this;
                                MyMainRelative myMainRelative2 = mainTxtView3.C1;
                                if (myMainRelative2 == null) {
                                    return;
                                }
                                myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.45
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainTxtView mainTxtView4 = MainTxtView.this;
                                        if (mainTxtView4.C1 == null) {
                                            return;
                                        }
                                        MainUtil.c();
                                        MySnackbar mySnackbar = mainTxtView4.W2;
                                        if (mySnackbar != null) {
                                            mySnackbar.i(false);
                                            mainTxtView4.W2 = null;
                                        }
                                        mainTxtView4.W2 = new MySnackbar(mainTxtView4);
                                        if (TextUtils.isEmpty(str2)) {
                                            mainTxtView4.W2.v(mainTxtView4.C1, R.string.save_fail, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.main.MainTxtView.45.1
                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void a() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void b() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void c() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void onDismiss() {
                                                    MainTxtView.this.W2 = null;
                                                }
                                            });
                                        } else {
                                            mainTxtView4.W2.w(mainTxtView4.C1, R.string.save_success, 1, new MySnackbar.SnackbarListener() { // from class: com.mycompany.app.main.MainTxtView.45.2
                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void a() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void b() {
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void c() {
                                                    AnonymousClass45 anonymousClass45 = AnonymousClass45.this;
                                                    MainUtil.d(MainTxtView.this, str2, "text/plain", true, false);
                                                }

                                                @Override // com.mycompany.app.view.MySnackbar.SnackbarListener
                                                public final void onDismiss() {
                                                    MainTxtView.this.W2 = null;
                                                }
                                            });
                                        }
                                    }
                                });
                            }
                        });
                        mainTxtView2.E2 = dialogSaveSource2;
                        dialogSaveSource2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTxtView.37
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                int i26 = MainTxtView.X2;
                                MainTxtView mainTxtView3 = MainTxtView.this;
                                DialogSaveSource dialogSaveSource3 = mainTxtView3.E2;
                                if (dialogSaveSource3 != null) {
                                    dialogSaveSource3.dismiss();
                                    mainTxtView3.E2 = null;
                                }
                            }
                        });
                    }
                });
                mainTxtView.F1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        MainUtil.s(R.string.copied_clipboard, mainTxtView2, "Copied URL", mainTxtView2.g2);
                    }
                });
                mainTxtView.G1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        try {
                            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("txt");
                            if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                                mimeTypeFromExtension = "text/*";
                            }
                            Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                            intent.addCategory("android.intent.category.OPENABLE");
                            intent.setType(mimeTypeFromExtension);
                            intent.addFlags(65);
                            MainTxtView.this.o0(intent, 9);
                        } catch (Exception unused) {
                        }
                    }
                });
                mainTxtView.H1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        final MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.D2 == null) {
                            mainTxtView2.J0();
                            if (view12 == null) {
                                return;
                            }
                            MyFadeFrame myFadeFrame2 = mainTxtView2.N1;
                            if (myFadeFrame2 != null) {
                                myFadeFrame2.setAutoHide(false);
                            }
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(new MyPopupAdapter.PopMenuItem(0, R.string.font));
                            arrayList.add(new MyPopupAdapter.PopMenuItem(1, "TTS"));
                            MyPopupMenu myPopupMenu = new MyPopupMenu(mainTxtView2, mainTxtView2.C1, view12, arrayList, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.main.MainTxtView.34
                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final void a() {
                                    int i25 = MainTxtView.X2;
                                    MainTxtView.this.J0();
                                }

                                @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                public final boolean b(View view13, int i25) {
                                    final MainTxtView mainTxtView3 = MainTxtView.this;
                                    if (i25 != 0) {
                                        if (i25 == 1) {
                                            int i26 = MainTxtView.X2;
                                            if (!mainTxtView3.M0()) {
                                                DialogSetTts dialogSetTts = mainTxtView3.I2;
                                                if (dialogSetTts != null) {
                                                    dialogSetTts.dismiss();
                                                    mainTxtView3.I2 = null;
                                                }
                                                if (mainTxtView3.w2 == 1) {
                                                    mainTxtView3.O0(true);
                                                }
                                                DialogSetTts dialogSetTts2 = new DialogSetTts(mainTxtView3);
                                                mainTxtView3.I2 = dialogSetTts2;
                                                dialogSetTts2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTxtView.42
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        Handler handler2;
                                                        int i27 = MainTxtView.X2;
                                                        MainTxtView mainTxtView4 = MainTxtView.this;
                                                        DialogSetTts dialogSetTts3 = mainTxtView4.I2;
                                                        if (dialogSetTts3 != null) {
                                                            dialogSetTts3.dismiss();
                                                            mainTxtView4.I2 = null;
                                                        }
                                                        if (!MainUtil.q5(PrefTts.k, mainTxtView4.q2) || Float.compare(PrefTts.l, mainTxtView4.o2) != 0 || Float.compare(PrefTts.m, mainTxtView4.p2) != 0) {
                                                            MainTxtView.D0(mainTxtView4);
                                                            mainTxtView4.q2 = PrefTts.k;
                                                        }
                                                        if (mainTxtView4.w2 == 2 && (handler2 = mainTxtView4.O0) != null) {
                                                            handler2.post(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.42.1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    MainTxtView mainTxtView5 = MainTxtView.this;
                                                                    if (mainTxtView5.O0 == null) {
                                                                        return;
                                                                    }
                                                                    int i28 = MainTxtView.X2;
                                                                    mainTxtView5.Q0();
                                                                }
                                                            });
                                                        }
                                                    }
                                                });
                                                return true;
                                            }
                                        }
                                        return true;
                                    }
                                    Intent intent = new Intent(mainTxtView3.f1, (Class<?>) SettingFont.class);
                                    intent.putExtra("EXTRA_PAGE", true);
                                    mainTxtView3.o0(intent, 7);
                                    return true;
                                }
                            });
                            mainTxtView2.D2 = myPopupMenu;
                            mainTxtView2.Z0 = myPopupMenu;
                        }
                    }
                });
                ?? linearLayoutManager = new LinearLayoutManager(1);
                mainTxtView.K1 = linearLayoutManager;
                mainTxtView.J1.setLayoutManager(linearLayoutManager);
                mainTxtView.J1.j(new RecyclerView.OnScrollListener() { // from class: com.mycompany.app.main.MainTxtView.10
                    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
                    public final void b(RecyclerView recyclerView, int i25, int i26) {
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        MyRecyclerView myRecyclerView2 = mainTxtView2.J1;
                        if (myRecyclerView2 != null) {
                            if (myRecyclerView2.computeVerticalScrollOffset() > 0) {
                                mainTxtView2.J1.w0();
                            } else {
                                mainTxtView2.J1.r0();
                            }
                            Runnable runnable = mainTxtView2.U2;
                            MyScrollBar myScrollBar2 = mainTxtView2.M1;
                            if (myScrollBar2 != null && mainTxtView2.K1 != null && !mainTxtView2.T2) {
                                mainTxtView2.T2 = true;
                                myScrollBar2.removeCallbacks(runnable);
                                mainTxtView2.M1.post(runnable);
                            }
                        }
                    }
                });
                mainTxtView.M1.setOneItem(false);
                if (PrefZone.x == 1 && (layoutParams32 = (RelativeLayout.LayoutParams) mainTxtView.M1.getLayoutParams()) != null) {
                    layoutParams32.removeRule(11);
                    layoutParams32.addRule(9);
                    mainTxtView.M1.setPosLeft(true);
                }
                mainTxtView.M1.setListener(new MyScrollBar.ScrollBarListener() { // from class: com.mycompany.app.main.MainTxtView.11
                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void c(int i25) {
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        MainTxtAdapter mainTxtAdapter = mainTxtView2.L1;
                        if (mainTxtAdapter != null && mainTxtView2.K1 != null && i25 >= 0 && i25 < mainTxtAdapter.d()) {
                            mainTxtView2.K1.k1(i25, 0);
                        }
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int d() {
                        MyRecyclerView myRecyclerView2 = MainTxtView.this.J1;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollOffset();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final void e() {
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int f() {
                        MyRecyclerView myRecyclerView2 = MainTxtView.this.J1;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollRange();
                    }

                    @Override // com.mycompany.app.view.MyScrollBar.ScrollBarListener
                    public final int g() {
                        MyRecyclerView myRecyclerView2 = MainTxtView.this.J1;
                        if (myRecyclerView2 == null) {
                            return 0;
                        }
                        return myRecyclerView2.computeVerticalScrollExtent();
                    }
                });
                mainTxtView.R1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        final MainTxtView mainTxtView2 = MainTxtView.this;
                        if (!mainTxtView2.M0()) {
                            DialogSeekBright dialogSeekBright = mainTxtView2.F2;
                            if (dialogSeekBright != null) {
                                dialogSeekBright.dismiss();
                                mainTxtView2.F2 = null;
                            }
                            DialogSeekBright dialogSeekBright2 = new DialogSeekBright(mainTxtView2, mainTxtView2.getWindow(), 0, null);
                            mainTxtView2.F2 = dialogSeekBright2;
                            dialogSeekBright2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTxtView.38
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i26 = MainTxtView.X2;
                                    MainTxtView mainTxtView3 = MainTxtView.this;
                                    DialogSeekBright dialogSeekBright3 = mainTxtView3.F2;
                                    if (dialogSeekBright3 != null) {
                                        dialogSeekBright3.dismiss();
                                        mainTxtView3.F2 = null;
                                    }
                                    MainTxtView.E0(mainTxtView3);
                                }
                            });
                        }
                        MyFadeFrame myFadeFrame2 = mainTxtView2.N1;
                        if (myFadeFrame2 != null) {
                            myFadeFrame2.d(true);
                        }
                    }
                });
                mainTxtView.S1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.13
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        final MainTxtView mainTxtView2 = MainTxtView.this;
                        if (!mainTxtView2.M0()) {
                            DialogSeekText dialogSeekText = mainTxtView2.G2;
                            if (dialogSeekText != null) {
                                dialogSeekText.dismiss();
                                mainTxtView2.G2 = null;
                            }
                            DialogSeekText dialogSeekText2 = new DialogSeekText(mainTxtView2, new DialogSeekAudio.DialogSeekListener() { // from class: com.mycompany.app.main.MainTxtView.39
                                @Override // com.mycompany.app.dialog.DialogSeekAudio.DialogSeekListener
                                public final void a(int i26) {
                                    MainTxtAdapter mainTxtAdapter = MainTxtView.this.L1;
                                    if (mainTxtAdapter == null) {
                                        return;
                                    }
                                    PrefRead.m = mainTxtAdapter.x(i26);
                                }
                            });
                            mainTxtView2.G2 = dialogSeekText2;
                            dialogSeekText2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTxtView.40
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i26 = MainTxtView.X2;
                                    MainTxtView mainTxtView3 = MainTxtView.this;
                                    DialogSeekText dialogSeekText3 = mainTxtView3.G2;
                                    if (dialogSeekText3 != null) {
                                        dialogSeekText3.dismiss();
                                        mainTxtView3.G2 = null;
                                    }
                                    MainTxtView.E0(mainTxtView3);
                                }
                            });
                        }
                        MyFadeFrame myFadeFrame2 = mainTxtView2.N1;
                        if (myFadeFrame2 != null) {
                            myFadeFrame2.d(true);
                        }
                    }
                });
                mainTxtView.T1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.14
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        final MainTxtView mainTxtView2 = MainTxtView.this;
                        if (!mainTxtView2.M0()) {
                            DialogSeekAudio dialogSeekAudio = mainTxtView2.H2;
                            if (dialogSeekAudio != null) {
                                dialogSeekAudio.dismiss();
                                mainTxtView2.H2 = null;
                            }
                            DialogSeekAudio dialogSeekAudio2 = new DialogSeekAudio(mainTxtView2, null);
                            mainTxtView2.H2 = dialogSeekAudio2;
                            dialogSeekAudio2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.main.MainTxtView.41
                                @Override // android.content.DialogInterface.OnDismissListener
                                public final void onDismiss(DialogInterface dialogInterface) {
                                    int i26 = MainTxtView.X2;
                                    MainTxtView mainTxtView3 = MainTxtView.this;
                                    DialogSeekAudio dialogSeekAudio3 = mainTxtView3.H2;
                                    if (dialogSeekAudio3 != null) {
                                        dialogSeekAudio3.dismiss();
                                        mainTxtView3.H2 = null;
                                    }
                                    MainTxtView.E0(mainTxtView3);
                                }
                            });
                        }
                        MyFadeFrame myFadeFrame2 = mainTxtView2.N1;
                        if (myFadeFrame2 != null) {
                            myFadeFrame2.d(true);
                        }
                    }
                });
                mainTxtView.U1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        MainTxtView.this.T0();
                    }
                });
                mainTxtView.V1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.G0()) {
                            return;
                        }
                        if (mainTxtView2.N0()) {
                            MainUtil.e8(mainTxtView2.f1, R.string.wait_retry);
                        } else {
                            mainTxtView2.Y0(1);
                        }
                    }
                });
                mainTxtView.Z1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.17
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.G0()) {
                            return;
                        }
                        if (mainTxtView2.N0()) {
                            MainUtil.e8(mainTxtView2.f1, R.string.wait_retry);
                        } else {
                            mainTxtView2.Y0(0);
                        }
                    }
                });
                mainTxtView.a2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.18
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.G0()) {
                            return;
                        }
                        if (mainTxtView2.N0()) {
                            MainUtil.e8(mainTxtView2.f1, R.string.wait_retry);
                        } else {
                            mainTxtView2.Y0(2);
                        }
                    }
                });
                mainTxtView.W1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.19
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.G0()) {
                            return;
                        }
                        if (mainTxtView2.N0()) {
                            MainUtil.e8(mainTxtView2.f1, R.string.wait_retry);
                            return;
                        }
                        mainTxtView2.x2 = false;
                        mainTxtView2.B2 = -1234;
                        mainTxtView2.C2 = false;
                        if (mainTxtView2.w2 == 0) {
                            mainTxtView2.c1();
                        } else {
                            mainTxtView2.O0(true);
                        }
                        mainTxtView2.K0();
                    }
                });
                mainTxtView.X1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainTxtView.20
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view12) {
                        int i25 = MainTxtView.X2;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.G0()) {
                            return;
                        }
                        if (mainTxtView2.N0()) {
                            MainUtil.e8(mainTxtView2.f1, R.string.wait_retry);
                            return;
                        }
                        mainTxtView2.x2 = false;
                        mainTxtView2.B2 = -1234;
                        mainTxtView2.C2 = false;
                        mainTxtView2.c1();
                        mainTxtView2.K0();
                    }
                });
                mainTxtView.e2 = new GestureDetector(mainTxtView.f1, new GestureDetector.SimpleOnGestureListener() { // from class: com.mycompany.app.main.MainTxtView.21
                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                    public final boolean onDoubleTap(MotionEvent motionEvent) {
                        boolean z;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.L1 != null) {
                            LinearLayout linearLayout3 = mainTxtView2.Q1;
                            if (linearLayout3 == null || linearLayout3.getVisibility() != 0) {
                                z = false;
                            } else {
                                z = MainUtil.J5((int) motionEvent.getX(), (int) motionEvent.getY(), 0, mainTxtView2.Q1);
                            }
                            if (!z) {
                                MainTxtAdapter mainTxtAdapter = mainTxtView2.L1;
                                int i25 = mainTxtAdapter.i;
                                if (i25 > 90 && i25 < 110) {
                                    mainTxtAdapter.i = HttpStatusCodes.STATUS_CODE_OK;
                                } else {
                                    mainTxtAdapter.i = 100;
                                }
                                PrefRead.m = mainTxtAdapter.x(mainTxtAdapter.i);
                                return true;
                            }
                        }
                        return false;
                    }

                    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
                    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                        boolean z;
                        MainTxtView mainTxtView2 = MainTxtView.this;
                        if (mainTxtView2.I1 != null && !mainTxtView2.M0() && mainTxtView2.D2 == null) {
                            if (MainUtil.J5((int) motionEvent.getX(), (int) motionEvent.getY(), 0, mainTxtView2.I1) && mainTxtView2.N1 != null) {
                                LinearLayout linearLayout3 = mainTxtView2.Q1;
                                if (linearLayout3 == null || linearLayout3.getVisibility() != 0) {
                                    z = false;
                                } else {
                                    z = MainUtil.J5((int) motionEvent.getX(), (int) motionEvent.getY(), 0, mainTxtView2.Q1);
                                }
                                if (!z) {
                                    boolean e = mainTxtView2.N1.e();
                                    boolean z2 = !e;
                                    if (!e) {
                                        mainTxtView2.R0();
                                    }
                                    mainTxtView2.N1.i(z2);
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                });
                if (TextUtils.isEmpty(mainTxtView.g2)) {
                    mainTxtView.b2.f();
                    mainTxtView.J1.setVisibility(8);
                } else {
                    mainTxtView.H0();
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        MyButtonImage myButtonImage = this.D1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.D1 = null;
        }
        MyButtonImage myButtonImage2 = this.E1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.E1 = null;
        }
        MyButtonImage myButtonImage3 = this.F1;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.F1 = null;
        }
        MyButtonImage myButtonImage4 = this.G1;
        if (myButtonImage4 != null) {
            myButtonImage4.j();
            this.G1 = null;
        }
        MyButtonImage myButtonImage5 = this.H1;
        if (myButtonImage5 != null) {
            myButtonImage5.j();
            this.H1 = null;
        }
        MyRoundItem myRoundItem = this.I1;
        if (myRoundItem != null) {
            myRoundItem.b();
            this.I1 = null;
        }
        MyRecyclerView myRecyclerView = this.J1;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.J1 = null;
        }
        MainTxtAdapter mainTxtAdapter = this.L1;
        if (mainTxtAdapter != null) {
            mainTxtAdapter.n = mainTxtAdapter.d();
            mainTxtAdapter.f = null;
            mainTxtAdapter.h = null;
            mainTxtAdapter.l = null;
            mainTxtAdapter.m = null;
            this.L1 = null;
        }
        MyScrollBar myScrollBar = this.M1;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.M1 = null;
        }
        MyFadeFrame myFadeFrame = this.N1;
        if (myFadeFrame != null) {
            myFadeFrame.f();
            this.N1 = null;
        }
        MyButtonImage myButtonImage6 = this.R1;
        if (myButtonImage6 != null) {
            myButtonImage6.j();
            this.R1 = null;
        }
        MyButtonImage myButtonImage7 = this.S1;
        if (myButtonImage7 != null) {
            myButtonImage7.j();
            this.S1 = null;
        }
        MyFadeImage myFadeImage = this.b2;
        if (myFadeImage != null) {
            myFadeImage.e();
            this.b2 = null;
        }
        MyCoverView myCoverView = this.c2;
        if (myCoverView != null) {
            myCoverView.i();
            this.c2 = null;
        }
        MyFadeFrame myFadeFrame2 = this.d2;
        if (myFadeFrame2 != null) {
            myFadeFrame2.f();
            this.d2 = null;
        }
        this.C1 = null;
        this.K1 = null;
        this.O1 = null;
        this.P1 = null;
        this.e2 = null;
        this.f2 = null;
        this.g2 = null;
        this.h2 = null;
        this.i2 = null;
        this.j2 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.b2 == null) {
            return;
        }
        this.f1 = getApplicationContext();
        Uri data = intent.getData();
        if (data != null) {
            this.g2 = data.toString();
            this.h2 = null;
            this.i2 = null;
        } else {
            this.g2 = intent.getStringExtra("EXTRA_PATH");
            this.h2 = intent.getStringExtra("EXTRA_REFERER");
            this.i2 = intent.getStringExtra("EXTRA_NAME");
        }
        if (TextUtils.isEmpty(this.g2)) {
            this.b2.f();
            this.J1.setVisibility(8);
        } else {
            H0();
        }
    }

    @Override // com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            b1(false);
            LoadTask loadTask = this.k2;
            if (loadTask != null) {
                loadTask.f12839c = true;
            }
            this.k2 = null;
            DialogSaveSource dialogSaveSource = this.E2;
            if (dialogSaveSource != null) {
                dialogSaveSource.dismiss();
                this.E2 = null;
            }
            DialogSeekBright dialogSeekBright = this.F2;
            if (dialogSeekBright != null) {
                dialogSeekBright.dismiss();
                this.F2 = null;
            }
            DialogSeekText dialogSeekText = this.G2;
            if (dialogSeekText != null) {
                dialogSeekText.dismiss();
                this.G2 = null;
            }
            DialogSeekAudio dialogSeekAudio = this.H2;
            if (dialogSeekAudio != null) {
                dialogSeekAudio.dismiss();
                this.H2 = null;
            }
            DialogSetTts dialogSetTts = this.I2;
            if (dialogSetTts != null) {
                dialogSetTts.dismiss();
                this.I2 = null;
            }
            J0();
            P0();
        } else {
            DialogSetTts dialogSetTts2 = this.I2;
            if (dialogSetTts2 != null) {
                dialogSetTts2.I();
            }
        }
        int i = this.K2;
        int i2 = PrefRead.m;
        if (i != i2) {
            this.K2 = i2;
            PrefSet.f(this.f1, 8, i2, "mTextSize");
        }
    }
}
