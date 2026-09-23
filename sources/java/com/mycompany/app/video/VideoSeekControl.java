package com.mycompany.app.video;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class VideoSeekControl extends RelativeLayout {
    public static final /* synthetic */ int q = 0;

    /* renamed from: c, reason: collision with root package name */
    public SeekCtrlListener f18475c;
    public boolean f;
    public RelativeLayout g;
    public MyButtonImage h;
    public MyButtonImage i;
    public MyButtonImage j;
    public SeekBar k;
    public AppCompatTextView l;
    public AppCompatTextView m;
    public boolean n;
    public EventHandler o;
    public final SeekBar.OnSeekBarChangeListener p;

    /* renamed from: com.mycompany.app.video.VideoSeekControl$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class EventHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f18483a;

        public EventHandler(VideoSeekControl videoSeekControl) {
            super(Looper.getMainLooper());
            this.f18483a = new WeakReference(videoSeekControl);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            VideoSeekControl videoSeekControl = (VideoSeekControl) this.f18483a.get();
            if (videoSeekControl == null || message.what != 0) {
                return;
            }
            int i = VideoSeekControl.q;
            videoSeekControl.j(true);
        }
    }

    /* loaded from: classes3.dex */
    public interface SeekCtrlListener {
        boolean a();

        void b(int i, boolean z);

        void c();

        int e();

        int f();

        boolean g();

        void j();
    }

    public VideoSeekControl(Context context) {
        super(context);
        this.p = new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.video.VideoSeekControl.8
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z) {
                    VideoSeekControl videoSeekControl = VideoSeekControl.this;
                    if (videoSeekControl.f18475c == null || videoSeekControl.getVisibility() != 0) {
                        return;
                    }
                    videoSeekControl.f(videoSeekControl.f18475c.f(), seekBar.getProgress());
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStartTrackingTouch(SeekBar seekBar) {
                VideoSeekControl videoSeekControl = VideoSeekControl.this;
                if (videoSeekControl.f18475c == null || videoSeekControl.getVisibility() != 0) {
                    return;
                }
                videoSeekControl.n = true;
                videoSeekControl.setIconsClickable(false);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public final void onStopTrackingTouch(SeekBar seekBar) {
                VideoSeekControl videoSeekControl = VideoSeekControl.this;
                if (videoSeekControl.f18475c == null || videoSeekControl.getVisibility() != 0) {
                    return;
                }
                VideoSeekControl.d(videoSeekControl);
                videoSeekControl.j(false);
            }
        };
    }

    public static void a(VideoSeekControl videoSeekControl) {
        int f;
        SeekCtrlListener seekCtrlListener = videoSeekControl.f18475c;
        if (seekCtrlListener == null || (f = seekCtrlListener.f()) == 0) {
            return;
        }
        int e = videoSeekControl.f18475c.e() + 10000;
        if (e <= f) {
            f = e;
        }
        videoSeekControl.f18475c.b(f, false);
        videoSeekControl.j(true);
    }

    public static void b(VideoSeekControl videoSeekControl) {
        SeekCtrlListener seekCtrlListener = videoSeekControl.f18475c;
        if (seekCtrlListener == null || seekCtrlListener.f() == 0) {
            return;
        }
        int e = videoSeekControl.f18475c.e() - 10000;
        if (e < 0) {
            e = 0;
        }
        videoSeekControl.f18475c.b(e, false);
        videoSeekControl.j(true);
    }

    public static void d(VideoSeekControl videoSeekControl) {
        if (videoSeekControl.k == null || !videoSeekControl.n) {
            return;
        }
        videoSeekControl.f(videoSeekControl.f18475c.f(), videoSeekControl.k.getProgress());
        videoSeekControl.setIconsClickable(true);
        videoSeekControl.n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIconsClickable(boolean z) {
        if (this.g == null) {
            return;
        }
        this.h.setClickable(z);
        this.i.setClickable(z);
        this.j.setClickable(z);
    }

    private void setIconsPressed(boolean z) {
        RelativeLayout relativeLayout = this.g;
        if (relativeLayout == null) {
            return;
        }
        relativeLayout.setPressed(z);
        this.h.setPressed(z);
        this.i.setPressed(z);
        this.j.setPressed(z);
        this.k.setPressed(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        SeekCtrlListener seekCtrlListener = this.f18475c;
        if (seekCtrlListener != null && seekCtrlListener.a()) {
            setIconsPressed(false);
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final String e(long j) {
        if (this.f18475c == null) {
            return null;
        }
        return MainUtil.q2(r0.f(), j);
    }

    public final void f(int i, int i2) {
        SeekBar seekBar = this.k;
        if (seekBar == null) {
            return;
        }
        if (i == 0) {
            h();
            this.k.setMax(0);
            this.l.setText("00:00");
            this.m.setText("00:00");
            return;
        }
        if (i < 1000) {
            seekBar.setMax(1);
            this.f18475c.b(i2, true);
            this.l.setText("00:01");
            this.m.setText("00:00");
            return;
        }
        seekBar.setMax(1000);
        int round = Math.round((i2 / 1000.0f) * i);
        this.f18475c.b(round, true);
        this.l.setText(e(i));
        this.m.setText(e(round));
    }

    public final void g() {
        EventHandler eventHandler = this.o;
        if (eventHandler != null) {
            eventHandler.removeMessages(0);
            this.o = null;
        }
        MyButtonImage myButtonImage = this.h;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.h = null;
        }
        MyButtonImage myButtonImage2 = this.i;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.i = null;
        }
        MyButtonImage myButtonImage3 = this.j;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.j = null;
        }
        this.f18475c = null;
        this.g = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    public final void h() {
        SeekCtrlListener seekCtrlListener = this.f18475c;
        if (seekCtrlListener == null || this.i == null) {
            return;
        }
        if (seekCtrlListener.g()) {
            this.i.setImageResource(R.drawable.baseline_pause_white_24);
        } else {
            this.i.setImageResource(R.drawable.baseline_play_arrow_white_24);
        }
    }

    public final void i(Context context, SeekCtrlListener seekCtrlListener) {
        this.f18475c = seekCtrlListener;
        this.f = MainUtil.O5(context);
        Context context2 = getContext();
        if (context2 == null) {
            return;
        }
        int i = R.id.seek_icon_play;
        int i2 = R.id.seek_curr_time;
        int i3 = R.id.seek_total_time;
        MyButtonImage myButtonImage = new MyButtonImage(context2);
        myButtonImage.setId(i);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myButtonImage.setScaleType(scaleType);
        myButtonImage.setImageResource(R.drawable.baseline_pause_white_24);
        myButtonImage.n(MainApp.j1, MainApp.k1);
        myButtonImage.k(-1593835520, -1586137739);
        int i4 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams.addRule(14);
        addView(myButtonImage, layoutParams);
        int G = (int) MainUtil.G(context2, 32.0f);
        MyButtonImage p = a.p(context2, scaleType);
        p.setImageResource(R.drawable.baseline_fast_rewind_white_24);
        p.n(MainApp.j1, MainApp.k1);
        p.k(-1593835520, -1586137739);
        int i5 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i5, i5);
        layoutParams2.addRule(16, i);
        layoutParams2.setMarginEnd(G);
        addView(p, layoutParams2);
        MyButtonImage p2 = a.p(context2, scaleType);
        p2.setImageResource(R.drawable.baseline_fast_forward_white_24);
        p2.n(MainApp.j1, MainApp.k1);
        p2.k(-1593835520, -1586137739);
        int i6 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i6, i6);
        layoutParams3.addRule(17, i);
        layoutParams3.setMarginStart(G);
        addView(p2, layoutParams3);
        RelativeLayout relativeLayout = new RelativeLayout(context2);
        int i7 = MainApp.F1;
        relativeLayout.setPadding(i7, 0, i7, 0);
        relativeLayout.setLayoutDirection(0);
        relativeLayout.setBackgroundColor(-1593835520);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
        layoutParams4.topMargin = MainApp.i1;
        addView(relativeLayout, layoutParams4);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context2, null);
        appCompatTextView.setId(i2);
        appCompatTextView.setGravity(1);
        appCompatTextView.setTextSize(1, 14.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setMinWidth(MainApp.g1);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(15);
        relativeLayout.addView(appCompatTextView, layoutParams5);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context2, null);
        appCompatTextView2.setId(i3);
        appCompatTextView2.setGravity(1);
        appCompatTextView2.setTextSize(1, 14.0f);
        appCompatTextView2.setTextColor(-1);
        appCompatTextView2.setMinWidth(MainApp.g1);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(15);
        layoutParams6.addRule(21);
        relativeLayout.addView(appCompatTextView2, layoutParams6);
        SeekBar seekBar = new SeekBar(context2);
        seekBar.setProgressDrawable(MainUtil.S(context2, R.drawable.seek_progress_w));
        seekBar.setThumb(MainUtil.S(context2, R.drawable.seek_thumb_w));
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams7.addRule(17, i2);
        layoutParams7.addRule(16, i3);
        layoutParams7.addRule(15);
        relativeLayout.addView(seekBar, layoutParams7);
        this.g = relativeLayout;
        this.h = p;
        this.i = myButtonImage;
        this.j = p2;
        this.k = seekBar;
        this.l = appCompatTextView2;
        this.m = appCompatTextView;
        post(new Runnable() { // from class: com.mycompany.app.video.VideoSeekControl.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final VideoSeekControl videoSeekControl = VideoSeekControl.this;
                RelativeLayout relativeLayout2 = videoSeekControl.g;
                if (relativeLayout2 == 0) {
                    return;
                }
                relativeLayout2.setOnClickListener(new Object());
                videoSeekControl.h.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoSeekControl.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VideoSeekControl videoSeekControl2 = VideoSeekControl.this;
                        if (videoSeekControl2.f) {
                            VideoSeekControl.a(videoSeekControl2);
                        } else {
                            VideoSeekControl.b(videoSeekControl2);
                        }
                    }
                });
                videoSeekControl.i.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoSeekControl.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VideoSeekControl videoSeekControl2 = VideoSeekControl.this;
                        SeekCtrlListener seekCtrlListener2 = videoSeekControl2.f18475c;
                        if (seekCtrlListener2 == null) {
                            return;
                        }
                        if (seekCtrlListener2.g()) {
                            videoSeekControl2.f18475c.c();
                        } else {
                            videoSeekControl2.f18475c.j();
                        }
                        videoSeekControl2.j(true);
                    }
                });
                videoSeekControl.j.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.video.VideoSeekControl.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VideoSeekControl videoSeekControl2 = VideoSeekControl.this;
                        if (videoSeekControl2.f) {
                            VideoSeekControl.b(videoSeekControl2);
                        } else {
                            VideoSeekControl.a(videoSeekControl2);
                        }
                    }
                });
                videoSeekControl.k.setSplitTrack(false);
                videoSeekControl.k.setMax(1000);
                videoSeekControl.k.setOnSeekBarChangeListener(videoSeekControl.p);
                videoSeekControl.k.setOnTouchListener(new View.OnTouchListener() { // from class: com.mycompany.app.video.VideoSeekControl.6
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        VideoSeekControl videoSeekControl2 = VideoSeekControl.this;
                        RelativeLayout relativeLayout3 = videoSeekControl2.g;
                        if (relativeLayout3 != null) {
                            if (!relativeLayout3.isPressed() && !videoSeekControl2.h.isPressed() && !videoSeekControl2.i.isPressed() && !videoSeekControl2.j.isPressed()) {
                                return false;
                            }
                            return true;
                        }
                        return false;
                    }
                });
                videoSeekControl.o = new EventHandler(videoSeekControl);
            }
        });
    }

    public final void j(boolean z) {
        EventHandler eventHandler;
        if (this.f18475c != null && (eventHandler = this.o) != null) {
            eventHandler.removeMessages(0);
            if (!z) {
                h();
                this.o.sendEmptyMessageDelayed(0, 1000L);
                return;
            }
            if (getVisibility() == 0 && !this.n) {
                if (!isEnabled()) {
                    this.o.sendEmptyMessageDelayed(0, 1000L);
                    return;
                }
                h();
                int f = this.f18475c.f();
                int e = this.f18475c.e();
                this.o.sendEmptyMessageDelayed(0, 1000 - (e % 1000));
                if (f == 0) {
                    this.k.setMax(0);
                    this.k.setProgress(0);
                    this.l.setText("00:00");
                    this.m.setText("00:00");
                    return;
                }
                if (f < 1000) {
                    this.k.setMax(f);
                    if (e > f) {
                        this.k.setProgress(f);
                    } else {
                        this.k.setProgress(e);
                    }
                    this.l.setText("00:01");
                    this.m.setText("00:00");
                    return;
                }
                this.k.setMax(1000);
                if (e > f) {
                    this.k.setProgress(1000);
                } else {
                    this.k.setProgress(Math.round((e * 1000.0f) / f));
                }
                this.l.setText(e(f));
                this.m.setText(e(e));
            }
        }
    }

    public final void k() {
        post(new Runnable() { // from class: com.mycompany.app.video.VideoSeekControl.7
            @Override // java.lang.Runnable
            public final void run() {
                int i = VideoSeekControl.q;
                VideoSeekControl.this.j(true);
            }
        });
    }
}
