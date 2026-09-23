package com.mycompany.app.main;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogLinear;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class MainMusicActivity extends MainActivity {
    public static final /* synthetic */ int B1 = 0;
    public final SeekBar.OnSeekBarChangeListener A1 = new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.main.MainMusicActivity.12
        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
            if (!z) {
                return;
            }
            int progress = seekBar.getProgress();
            int i2 = MainMusicActivity.B1;
            MainMusicActivity.this.x0(progress);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            MainMusicActivity mainMusicActivity = MainMusicActivity.this;
            mainMusicActivity.p1 = true;
            MyButtonImage myButtonImage = mainMusicActivity.k1;
            if (myButtonImage == null) {
                return;
            }
            myButtonImage.setClickable(false);
            mainMusicActivity.j1.setClickable(false);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            int i;
            MainMusicActivity mainMusicActivity = MainMusicActivity.this;
            SeekBar seekBar2 = mainMusicActivity.m1;
            if (seekBar2 != null) {
                if (mainMusicActivity.p1) {
                    mainMusicActivity.p1 = false;
                    mainMusicActivity.x0(seekBar2.getProgress());
                    int progress = mainMusicActivity.m1.getProgress();
                    if (!mainMusicActivity.s1 || (i = mainMusicActivity.q1.getDuration()) < 0) {
                        i = 0;
                    }
                    int round = Math.round((progress / 1000.0f) * i);
                    if (mainMusicActivity.s1) {
                        mainMusicActivity.v1 = round;
                        mainMusicActivity.q1.seekTo(round);
                    }
                    MyButtonImage myButtonImage = mainMusicActivity.k1;
                    if (myButtonImage != null) {
                        myButtonImage.setClickable(true);
                        mainMusicActivity.j1.setClickable(true);
                    }
                }
                mainMusicActivity.A0();
                EventHandler eventHandler = mainMusicActivity.w1;
                if (eventHandler != null) {
                    eventHandler.removeMessages(0);
                    mainMusicActivity.w1.sendEmptyMessageDelayed(0, 1000L);
                }
            }
        }
    };
    public Context f1;
    public Uri g1;
    public String h1;
    public FrameLayout i1;
    public MyButtonImage j1;
    public MyButtonImage k1;
    public AppCompatTextView l1;
    public SeekBar m1;
    public AppCompatTextView n1;
    public AppCompatTextView o1;
    public boolean p1;
    public MediaPlayer q1;
    public PlayTask r1;
    public boolean s1;
    public boolean t1;
    public boolean u1;
    public int v1;
    public EventHandler w1;
    public EventReceiver x1;
    public boolean y1;
    public MediaPlayer z1;

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f16822a;

        public EventHandler(MainMusicActivity mainMusicActivity) {
            super(Looper.getMainLooper());
            this.f16822a = new WeakReference(mainMusicActivity);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            MainMusicActivity mainMusicActivity = (MainMusicActivity) this.f16822a.get();
            if (mainMusicActivity == null || message.what != 0) {
                return;
            }
            int i = MainMusicActivity.B1;
            mainMusicActivity.B0();
        }
    }

    /* loaded from: classes3.dex */
    public class EventReceiver extends BroadcastReceiver {
        public EventReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            MainMusicActivity mainMusicActivity = MainMusicActivity.this;
            if (mainMusicActivity.y1) {
                mainMusicActivity.y1 = false;
            } else {
                mainMusicActivity.m0(new Runnable() { // from class: com.mycompany.app.main.MainMusicActivity.EventReceiver.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MainMusicActivity mainMusicActivity2 = MainMusicActivity.this;
                        int i = MainMusicActivity.B1;
                        mainMusicActivity2.u1 = true;
                        mainMusicActivity2.z0(false, true);
                    }
                });
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class PlayTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;
        public boolean g;

        public PlayTask(MainMusicActivity mainMusicActivity) {
            this.e = new WeakReference(mainMusicActivity);
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            MainMusicActivity mainMusicActivity;
            Uri uri;
            MediaPlayer mediaPlayer;
            WeakReference weakReference = this.e;
            if (weakReference != null && (mainMusicActivity = (MainMusicActivity) weakReference.get()) != null && !this.f12839c && (uri = mainMusicActivity.g1) != null && (mediaPlayer = mainMusicActivity.q1) != null) {
                try {
                    mediaPlayer.setDataSource(mainMusicActivity.f1, uri);
                } catch (Exception unused) {
                    this.f = true;
                }
                if (TextUtils.isEmpty(mainMusicActivity.h1)) {
                    mainMusicActivity.h1 = MainUtil.b1(mainMusicActivity.f1, uri.toString());
                    this.g = true;
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            MainMusicActivity mainMusicActivity;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainMusicActivity = (MainMusicActivity) weakReference.get()) == null) {
                return;
            }
            mainMusicActivity.r1 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            MainMusicActivity mainMusicActivity;
            MediaPlayer mediaPlayer;
            AppCompatTextView appCompatTextView;
            WeakReference weakReference = this.e;
            if (weakReference == null || (mainMusicActivity = (MainMusicActivity) weakReference.get()) == null) {
                return;
            }
            mainMusicActivity.r1 = null;
            if (this.g && (appCompatTextView = mainMusicActivity.l1) != null) {
                appCompatTextView.setText(mainMusicActivity.h1);
            }
            if (!this.f && (mediaPlayer = mainMusicActivity.q1) != null) {
                try {
                    mediaPlayer.prepareAsync();
                    mainMusicActivity.B0();
                    return;
                } catch (Exception unused) {
                    mainMusicActivity.t1 = true;
                    mainMusicActivity.B0();
                    MainUtil.e8(mainMusicActivity, R.string.play_error);
                    return;
                }
            }
            mainMusicActivity.t1 = true;
            mainMusicActivity.B0();
            MainUtil.e8(mainMusicActivity, R.string.play_error);
        }
    }

    public final void A0() {
        int i;
        int i2;
        int i3;
        MyButtonImage myButtonImage = this.j1;
        if (myButtonImage == null) {
            return;
        }
        if (this.t1) {
            if (MainApp.K1) {
                i3 = R.drawable.outline_error_dark_24;
            } else {
                i3 = R.drawable.outline_error_black_24;
            }
            myButtonImage.setImageResource(i3);
            return;
        }
        if (this.u1) {
            if (MainApp.K1) {
                i2 = R.drawable.baseline_play_arrow_dark_24;
            } else {
                i2 = R.drawable.baseline_play_arrow_black_24;
            }
            myButtonImage.setImageResource(i2);
            return;
        }
        if (MainApp.K1) {
            i = R.drawable.baseline_pause_dark_24;
        } else {
            i = R.drawable.baseline_pause_black_24;
        }
        myButtonImage.setImageResource(i);
    }

    public final void B0() {
        int i;
        int i2;
        MediaPlayer mediaPlayer;
        EventHandler eventHandler = this.w1;
        if (eventHandler != null && this.m1 != null) {
            eventHandler.removeMessages(0);
            if (!this.p1) {
                if (this.t1) {
                    A0();
                    long j = 0;
                    String q2 = MainUtil.q2(j, j);
                    this.m1.setMax(0);
                    this.m1.setProgress(0);
                    this.n1.setText(q2);
                    this.o1.setText(q2);
                    return;
                }
                if (this.s1 && this.v1 == -1) {
                    A0();
                    if (!this.s1 || (i = this.q1.getDuration()) < 0) {
                        i = 0;
                    }
                    if (!this.s1 || ((i2 = this.v1) == -1 && ((mediaPlayer = this.q1) == null || (i2 = mediaPlayer.getCurrentPosition()) < 0))) {
                        i2 = 0;
                    }
                    this.w1.sendEmptyMessageDelayed(0, 1000 - (i2 % 1000));
                    if (i <= 0) {
                        this.m1.setMax(0);
                        this.m1.setProgress(0);
                        this.n1.setText("00:00");
                        this.o1.setText("00:00");
                        return;
                    }
                    if (i < 1000) {
                        this.m1.setMax(i);
                        if (i2 > i) {
                            this.m1.setProgress(i);
                        } else {
                            this.m1.setProgress(i2);
                        }
                        this.n1.setText("00:01");
                        this.o1.setText("00:00");
                        return;
                    }
                    this.m1.setMax(1000);
                    if (i2 > i) {
                        this.m1.setProgress(1000);
                    } else {
                        this.m1.setProgress(Math.round((i2 * 1000.0f) / i));
                    }
                    long j2 = i;
                    this.n1.setText(MainUtil.q2(j2, j2));
                    this.o1.setText(MainUtil.q2(j2, i2));
                    return;
                }
                long j3 = 0;
                String q22 = MainUtil.q2(j3, j3);
                this.m1.setMax(0);
                this.m1.setProgress(0);
                this.n1.setText(q22);
                this.o1.setText(q22);
                this.w1.sendEmptyMessageDelayed(0, 1000L);
            }
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f0();
        this.f1 = getApplicationContext();
        Uri data = getIntent().getData();
        this.g1 = data;
        if (data == null) {
            MainUtil.e8(this, R.string.invalid_path);
            finish();
            return;
        }
        MainUtil.i8(this.f1);
        Window window = getWindow();
        if (window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.gravity = 80;
            window.setAttributes(attributes);
        }
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        MyDialogLinear myDialogLinear = new MyDialogLinear(this);
        myDialogLinear.setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 80;
        layoutParams.bottomMargin = (int) MainUtil.G(this, 10.0f);
        frameLayout.addView(myDialogLinear, layoutParams);
        FrameLayout frameLayout2 = new FrameLayout(this);
        myDialogLinear.addView(frameLayout2, -1, MainApp.g1);
        MyButtonImage myButtonImage = new MyButtonImage(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        int i = MainApp.g1;
        frameLayout2.addView(myButtonImage, i, i);
        MyButtonImage myButtonImage2 = new MyButtonImage(this);
        myButtonImage2.setScaleType(scaleType);
        int i2 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i2, i2);
        layoutParams2.gravity = 8388613;
        frameLayout2.addView(myButtonImage2, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(this, null);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.gravity = 16;
        layoutParams3.setMarginStart(MainApp.g1);
        layoutParams3.setMarginEnd(MainApp.g1);
        frameLayout2.addView(appCompatTextView, layoutParams3);
        SeekBar seekBar = new SeekBar(this);
        int i3 = MainApp.E1;
        seekBar.setPadding(i3, 0, i3, 0);
        myDialogLinear.addView(seekBar, -1, -2);
        FrameLayout frameLayout3 = new FrameLayout(this);
        int i4 = MainApp.E1;
        frameLayout3.setPadding(i4, 0, i4, MainApp.F1);
        myDialogLinear.addView(frameLayout3, -1, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(this, null);
        appCompatTextView2.setTextSize(1, 16.0f);
        frameLayout3.addView(appCompatTextView2, -2, -2);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(this, null);
        appCompatTextView3.setTextSize(1, 16.0f);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 8388613;
        frameLayout3.addView(appCompatTextView3, layoutParams4);
        this.i1 = frameLayout;
        this.j1 = myButtonImage;
        this.k1 = myButtonImage2;
        this.l1 = appCompatTextView;
        this.m1 = seekBar;
        this.n1 = appCompatTextView3;
        this.o1 = appCompatTextView2;
        setContentView(frameLayout);
        setMainInsetView(this.i1);
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.main.MainMusicActivity.1
            @Override // java.lang.Runnable
            public final void run() {
                final MainMusicActivity mainMusicActivity = MainMusicActivity.this;
                if (mainMusicActivity.i1 == null) {
                    return;
                }
                if (MainApp.K1) {
                    mainMusicActivity.j1.setImageResource(R.drawable.baseline_play_arrow_dark_24);
                    mainMusicActivity.k1.setImageResource(R.drawable.outline_close_dark_24);
                    mainMusicActivity.l1.setTextColor(-328966);
                    mainMusicActivity.n1.setTextColor(-328966);
                    mainMusicActivity.o1.setTextColor(-328966);
                    mainMusicActivity.j1.setBgPreColor(-12632257);
                    mainMusicActivity.k1.setBgPreColor(-12632257);
                    mainMusicActivity.m1.setProgressDrawable(MainUtil.S(mainMusicActivity.f1, R.drawable.seek_progress_d));
                    mainMusicActivity.m1.setThumb(MainUtil.S(mainMusicActivity.f1, R.drawable.seek_thumb_d));
                } else {
                    mainMusicActivity.j1.setImageResource(R.drawable.baseline_play_arrow_black_24);
                    mainMusicActivity.k1.setImageResource(R.drawable.outline_close_black_24);
                    mainMusicActivity.l1.setTextColor(-16777216);
                    mainMusicActivity.n1.setTextColor(-16777216);
                    mainMusicActivity.o1.setTextColor(-16777216);
                    mainMusicActivity.j1.setBgPreColor(-2039584);
                    mainMusicActivity.k1.setBgPreColor(-2039584);
                    mainMusicActivity.m1.setProgressDrawable(MainUtil.S(mainMusicActivity.f1, R.drawable.seek_progress_b));
                    mainMusicActivity.m1.setThumb(MainUtil.S(mainMusicActivity.f1, R.drawable.seek_thumb_b));
                }
                mainMusicActivity.m1.setSplitTrack(false);
                mainMusicActivity.i1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainMusicActivity.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i5 = MainMusicActivity.B1;
                        MainMusicActivity mainMusicActivity2 = MainMusicActivity.this;
                        mainMusicActivity2.u0();
                        mainMusicActivity2.finish();
                    }
                });
                mainMusicActivity.j1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainMusicActivity.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i5 = MainMusicActivity.B1;
                        MainMusicActivity.this.v0();
                    }
                });
                mainMusicActivity.k1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainMusicActivity.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i5 = MainMusicActivity.B1;
                        MainMusicActivity mainMusicActivity2 = MainMusicActivity.this;
                        mainMusicActivity2.u0();
                        mainMusicActivity2.finish();
                    }
                });
                mainMusicActivity.m1.setMax(1000);
                mainMusicActivity.m1.setOnSeekBarChangeListener(mainMusicActivity.A1);
                mainMusicActivity.m1.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.main.MainMusicActivity.5
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        MainMusicActivity mainMusicActivity2 = MainMusicActivity.this;
                        MyButtonImage myButtonImage3 = mainMusicActivity2.k1;
                        if (myButtonImage3 != null) {
                            if (!myButtonImage3.isPressed() && !mainMusicActivity2.j1.isPressed()) {
                                return false;
                            }
                            return true;
                        }
                        return false;
                    }
                });
                mainMusicActivity.w1 = new EventHandler(mainMusicActivity);
                if (mainMusicActivity.x1 == null) {
                    mainMusicActivity.x1 = new EventReceiver();
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE");
                    ContextCompat.f(mainMusicActivity, mainMusicActivity.x1, intentFilter, null, 4);
                }
                mainMusicActivity.w0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        u0();
        MyButtonImage myButtonImage = this.j1;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.j1 = null;
        }
        MyButtonImage myButtonImage2 = this.k1;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.k1 = null;
        }
        this.f1 = null;
        this.g1 = null;
        this.h1 = null;
        this.i1 = null;
        this.l1 = null;
        this.m1 = null;
        this.n1 = null;
        this.o1 = null;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 79 && i != 85) {
            if (i != 86) {
                if (i != 126) {
                    if (i != 127) {
                        return super.onKeyDown(i, keyEvent);
                    }
                } else if (!this.p1) {
                    this.u1 = false;
                    z0(true, false);
                    return true;
                }
            }
            if (!this.p1) {
                this.u1 = true;
                z0(false, false);
                return true;
            }
        } else if (!this.p1) {
            v0();
            return true;
        }
        return true;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (isFinishing()) {
            u0();
            MainApp.T1 = null;
        }
    }

    public final void u0() {
        EventHandler eventHandler = this.w1;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.w1 = null;
        }
        EventReceiver eventReceiver = this.x1;
        if (eventReceiver != null) {
            unregisterReceiver(eventReceiver);
            this.x1 = null;
        }
        y0();
    }

    public final void v0() {
        boolean isPlaying;
        if (this.t1) {
            w0();
            return;
        }
        if (!this.s1 || this.u1) {
            isPlaying = false;
        } else {
            isPlaying = this.q1.isPlaying();
        }
        if (isPlaying) {
            this.u1 = true;
            z0(false, false);
        } else {
            this.u1 = false;
            z0(true, false);
        }
    }

    public final void w0() {
        y0();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.q1 = mediaPlayer;
        mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.mycompany.app.main.MainMusicActivity.6
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer2) {
                MainMusicActivity mainMusicActivity = MainMusicActivity.this;
                mainMusicActivity.s1 = true;
                mainMusicActivity.z0(true, false);
            }
        });
        this.q1.setOnSeekCompleteListener(new MediaPlayer.OnSeekCompleteListener() { // from class: com.mycompany.app.main.MainMusicActivity.7
            @Override // android.media.MediaPlayer.OnSeekCompleteListener
            public final void onSeekComplete(MediaPlayer mediaPlayer2) {
                MainMusicActivity mainMusicActivity = MainMusicActivity.this;
                mainMusicActivity.v1 = -1;
                mainMusicActivity.z0(true, false);
            }
        });
        this.q1.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.mycompany.app.main.MainMusicActivity.8
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer2) {
                MainMusicActivity mainMusicActivity = MainMusicActivity.this;
                if (mainMusicActivity.q1 != null && mainMusicActivity.s1) {
                    mainMusicActivity.u1 = true;
                    mainMusicActivity.z0(false, false);
                    if (mainMusicActivity.s1) {
                        mainMusicActivity.v1 = 0;
                        mainMusicActivity.q1.seekTo(0);
                    }
                    mainMusicActivity.B0();
                }
            }
        });
        this.q1.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.mycompany.app.main.MainMusicActivity.9
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer2, int i, int i2) {
                MainMusicActivity mainMusicActivity = MainMusicActivity.this;
                mainMusicActivity.t1 = true;
                mainMusicActivity.B0();
                MainUtil.e8(mainMusicActivity, R.string.play_error);
                return true;
            }
        });
        PlayTask playTask = this.r1;
        if (playTask != null) {
            playTask.f12839c = true;
        }
        this.r1 = null;
        PlayTask playTask2 = new PlayTask(this);
        this.r1 = playTask2;
        playTask2.b(this.f1);
    }

    public final void x0(int i) {
        int i2;
        if (this.m1 == null) {
            return;
        }
        if (!this.s1 || (i2 = this.q1.getDuration()) < 0) {
            i2 = 0;
        }
        if (i2 <= 0) {
            A0();
            this.m1.setMax(0);
            this.n1.setText("00:00");
            this.o1.setText("00:00");
            return;
        }
        if (i2 < 1000) {
            this.m1.setMax(1);
            this.n1.setText("00:01");
            this.o1.setText("00:00");
        } else {
            this.m1.setMax(1000);
            int round = Math.round((i / 1000.0f) * i2);
            long j = i2;
            this.n1.setText(MainUtil.q2(j, j));
            this.o1.setText(MainUtil.q2(j, round));
        }
    }

    public final void y0() {
        PlayTask playTask = this.r1;
        if (playTask != null) {
            playTask.f12839c = true;
        }
        this.r1 = null;
        this.s1 = false;
        this.t1 = false;
        this.u1 = false;
        this.v1 = -1;
        MediaPlayer mediaPlayer = this.q1;
        this.z1 = mediaPlayer;
        this.q1 = null;
        if (mediaPlayer == null) {
            return;
        }
        m0(new Runnable() { // from class: com.mycompany.app.main.MainMusicActivity.10
            @Override // java.lang.Runnable
            public final void run() {
                MainMusicActivity mainMusicActivity = MainMusicActivity.this;
                MediaPlayer mediaPlayer2 = mainMusicActivity.z1;
                mainMusicActivity.z1 = null;
                if (mediaPlayer2 == null) {
                    return;
                }
                mediaPlayer2.stop();
                mediaPlayer2.release();
            }
        });
    }

    public final void z0(boolean z, boolean z2) {
        MediaPlayer mediaPlayer = this.q1;
        if (mediaPlayer != null && this.s1) {
            if (z) {
                if (!this.u1) {
                    this.v1 = -1;
                    this.y1 = true;
                    Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_MUSIC_PAUSE");
                    intent.setPackage(getPackageName());
                    sendBroadcast(intent);
                    if (!this.q1.isPlaying()) {
                        this.q1.start();
                    }
                }
            } else if (mediaPlayer.isPlaying()) {
                this.q1.pause();
            }
            if (!z2) {
                B0();
                return;
            }
            SeekBar seekBar = this.m1;
            if (seekBar != null) {
                seekBar.post(new Runnable() { // from class: com.mycompany.app.main.MainMusicActivity.11
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = MainMusicActivity.B1;
                        MainMusicActivity.this.B0();
                    }
                });
            }
        }
    }
}
