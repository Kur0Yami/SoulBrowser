package com.mycompany.app.setting;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.dialog.DialogSetTts;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideApp;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyRoundItem;
import com.mycompany.app.view.MySwitchView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class SettingListAdapter extends RecyclerView.Adapter<ViewHolder> {
    public MainActivity d;
    public List e;
    public final boolean f;
    public LinearLayoutManager g;
    public SettingListener h;
    public boolean i;
    public GlideRequests j;
    public Handler k;
    public int l;

    /* renamed from: com.mycompany.app.setting.SettingListAdapter$11, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass11 implements ImageSizeListener {
        @Override // com.mycompany.app.image.ImageSizeListener
        public final void a(View view, int i, int i2) {
            float f;
            Object tag = view.getTag();
            if (tag != null && (tag instanceof Float)) {
                f = ((Float) tag).floatValue();
            } else {
                f = 0.0f;
            }
            if (Float.compare(f, 0.0f) != 0) {
                int round = Math.round(i * f);
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams != null && layoutParams.height != round) {
                    layoutParams.height = round;
                    ((MyRoundImage) view).j();
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingListAdapter$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SeekBar seekBar;
            int progress;
            ViewHolder y = SettingListAdapter.y(view);
            if (y == null || (seekBar = y.E) == null || seekBar.getProgress() - 1 < 0) {
                return;
            }
            y.E.setProgress(progress);
        }
    }

    /* renamed from: com.mycompany.app.setting.SettingListAdapter$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SeekBar seekBar;
            int progress;
            ViewHolder y = SettingListAdapter.y(view);
            if (y == null || (seekBar = y.E) == null || (progress = seekBar.getProgress() + 1) > y.E.getMax()) {
                return;
            }
            y.E.setProgress(progress);
        }
    }

    /* loaded from: classes3.dex */
    public interface SettingListener {
        void a(ViewHolder viewHolder, int i, boolean z, int i2);
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public MyButtonCheck A;
        public MyButtonImage B;
        public MyButtonCheck C;
        public View D;
        public SeekBar E;
        public MyButtonImage F;
        public MyButtonImage G;
        public MyButtonImage H;
        public MyButtonImage I;
        public MyRoundImage J;
        public MyButtonView K;
        public MyButtonImage L;
        public View M;
        public MyRoundItem u;
        public AppCompatTextView v;
        public ImageView w;
        public AppCompatTextView x;
        public AppCompatTextView y;
        public MySwitchView z;
    }

    public SettingListAdapter(ArrayList arrayList, boolean z, LinearLayoutManager linearLayoutManager, SettingListener settingListener) {
        this.e = arrayList;
        this.f = z;
        this.g = linearLayoutManager;
        this.h = settingListener;
    }

    public static ViewHolder y(View view) {
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof ViewHolder)) {
            return null;
        }
        return (ViewHolder) tag;
    }

    public final void A(int i, boolean z) {
        MySwitchView mySwitchView;
        int v = v(i);
        SettingItem w = w(v);
        if (w != null && w.b == i) {
            w.k = z;
            ViewHolder x = x(v);
            if (x != null && (mySwitchView = x.z) != null) {
                mySwitchView.b(w.k, false);
            }
        }
    }

    public final void B(boolean z) {
        SettingItem settingItem;
        List list = this.e;
        if (list != null && !list.isEmpty()) {
            Iterator it = this.e.iterator();
            while (it.hasNext() && (settingItem = (SettingItem) it.next()) != null) {
                settingItem.s = z;
            }
        }
    }

    public final void C(int i, int i2) {
        AppCompatTextView appCompatTextView;
        int v = v(i);
        SettingItem w = w(v);
        if (w != null && w.b == i) {
            w.i = null;
            w.h = i2;
            ViewHolder x = x(v);
            if (x != null && (appCompatTextView = x.y) != null) {
                int i3 = w.h;
                if (i3 != 0) {
                    appCompatTextView.setText(i3);
                    x.y.setVisibility(0);
                } else {
                    appCompatTextView.setVisibility(8);
                }
            }
        }
    }

    public final void D(SettingItem settingItem) {
        int i = settingItem.b;
        int v = v(i);
        SettingItem w = w(v);
        if (w != null && w.b == i) {
            this.e.set(v, settingItem);
            h(v);
        }
    }

    public final void E(List list) {
        this.e = list;
        g();
    }

    public final void F(int i, int i2) {
        AppCompatTextView appCompatTextView;
        int v = v(i);
        SettingItem w = w(v);
        if (w != null && w.b == i) {
            w.g = null;
            w.f = i2;
            ViewHolder x = x(v);
            if (x != null && (appCompatTextView = x.x) != null) {
                int i3 = w.f;
                if (i3 != 0) {
                    appCompatTextView.setText(i3);
                    x.x.setVisibility(0);
                } else {
                    appCompatTextView.setVisibility(8);
                }
            }
        }
    }

    public final void G(int i, String str) {
        int v = v(i);
        SettingItem w = w(v);
        if (w != null && w.b == i) {
            w.g = str;
            w.f = 0;
            ViewHolder x = x(v);
            if (x != null && x.x != null) {
                if (!TextUtils.isEmpty(w.g)) {
                    x.x.setText(w.g);
                    x.x.setVisibility(0);
                } else {
                    x.x.setVisibility(8);
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.l;
        if (i != 0) {
            return i;
        }
        List list = this.e;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        List list = this.e;
        if (list != null && i >= 0 && i < list.size()) {
            return ((SettingItem) this.e.get(i)).b;
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        List list = this.e;
        if (list != null && i >= 0 && i < list.size()) {
            return ((SettingItem) this.e.get(i)).f17931a;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v29, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v32, types: [android.view.View$OnClickListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v16, types: [com.mycompany.app.image.ImageSizeListener, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        SettingItem w;
        int i2;
        int i3;
        int i4;
        float f;
        float f2;
        float f3;
        int i5;
        float f4;
        float f5;
        int i6;
        float f6;
        boolean z;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        if (viewHolder2.f1589a != null && viewHolder2.u != null && (w = w(i)) != null) {
            int i7 = w.v;
            int i8 = w.o;
            String str = w.d;
            int i9 = w.p;
            boolean z2 = w.t;
            String str2 = w.r;
            int i10 = w.f17931a;
            viewHolder2.u.setTag(viewHolder2);
            if (i10 != 1 && i10 != 2) {
                MyRoundItem myRoundItem = viewHolder2.u;
                if (myRoundItem != null) {
                    if (i10 != 19 && i10 != 20 && i10 != 21 && i10 != 22 && i10 != 24) {
                        if (this.f) {
                            if (i != this.e.size() - 1) {
                                z = true;
                            } else {
                                z = false;
                            }
                            myRoundItem.setDrawLine(z);
                        } else {
                            myRoundItem.setDrawLine(true);
                        }
                    } else {
                        myRoundItem.setDrawLine(false);
                    }
                    viewHolder2.u.setRound(w.u);
                    if (i10 == 10) {
                        MyRoundItem myRoundItem2 = viewHolder2.u;
                        if (w.s) {
                            f6 = 0.2f;
                        } else {
                            f6 = 1.0f;
                        }
                        myRoundItem2.setAlpha(f6);
                    } else if (i10 != 11 && i10 != 22) {
                        viewHolder2.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.1
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i11;
                                int i12;
                                ViewHolder y = SettingListAdapter.y(view);
                                if (y != null) {
                                    int c2 = y.c();
                                    SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                    SettingItem w2 = settingListAdapter.w(c2);
                                    if (w2 != null) {
                                        int i13 = w2.b;
                                        int i14 = w2.f17931a;
                                        if (y.u != null) {
                                            if ((i14 != 0 && i14 != 13 && i14 != 18) || !w2.s) {
                                                MySwitchView mySwitchView = y.z;
                                                if (mySwitchView != null) {
                                                    if (!w2.s) {
                                                        boolean z3 = !w2.k;
                                                        w2.k = z3;
                                                        mySwitchView.b(z3, true);
                                                        AppCompatTextView appCompatTextView = y.y;
                                                        if (appCompatTextView != null) {
                                                            if (w2.l && !w2.k) {
                                                                appCompatTextView.setTextColor(-769226);
                                                            } else if (w2.m) {
                                                                if (MainApp.K1) {
                                                                    i12 = -328966;
                                                                } else {
                                                                    i12 = -16777216;
                                                                }
                                                                appCompatTextView.setTextColor(i12);
                                                            } else {
                                                                if (MainApp.K1) {
                                                                    i11 = -4079167;
                                                                } else {
                                                                    i11 = -10395295;
                                                                }
                                                                appCompatTextView.setTextColor(i11);
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    MyButtonCheck myButtonCheck = y.A;
                                                    if (myButtonCheck != null) {
                                                        boolean z4 = !w2.k;
                                                        w2.k = z4;
                                                        myButtonCheck.q(z4, true);
                                                    } else if (y.C != null) {
                                                        if (!w2.k) {
                                                            boolean z5 = false;
                                                            for (SettingItem settingItem : settingListAdapter.e) {
                                                                if (settingItem.k) {
                                                                    settingItem.k = false;
                                                                    settingItem.n = true;
                                                                    z5 = true;
                                                                } else {
                                                                    settingItem.n = false;
                                                                }
                                                            }
                                                            w2.k = true;
                                                            if (z5) {
                                                                w2.n = true;
                                                                settingListAdapter.g();
                                                            } else {
                                                                w2.n = false;
                                                                y.C.q(true, true);
                                                            }
                                                        } else {
                                                            return;
                                                        }
                                                    }
                                                }
                                                if (i14 == 23) {
                                                    SettingListener settingListener = settingListAdapter.h;
                                                    if (settingListener != null) {
                                                        settingListener.a(y, w2.e, true, i13);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                SettingListener settingListener2 = settingListAdapter.h;
                                                if (settingListener2 != null) {
                                                    settingListener2.a(y, i13, w2.k, 0);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    }
                }
                AppCompatTextView appCompatTextView = viewHolder2.v;
                if (appCompatTextView != null) {
                    if (i10 != 0 && i10 != 6 && i10 != 13 && i10 != 18) {
                        appCompatTextView.setAlpha(1.0f);
                    } else {
                        if (z2) {
                            f5 = 0.2f;
                        } else {
                            f5 = 1.0f;
                        }
                        appCompatTextView.setAlpha(f5);
                    }
                    int i11 = w.f17932c;
                    if (i11 != 0) {
                        viewHolder2.v.setText(i11);
                        viewHolder2.v.setVisibility(0);
                    } else if (!TextUtils.isEmpty(str)) {
                        if (this.i && !TextUtils.isEmpty(str2)) {
                            if (MainApp.K1) {
                                i6 = -1;
                            } else {
                                i6 = -769226;
                            }
                            viewHolder2.v.setText(MainUtil.t6(str, i6, 0, str2), TextView.BufferType.SPANNABLE);
                        } else {
                            viewHolder2.v.setText(str);
                        }
                        viewHolder2.v.setVisibility(0);
                    } else {
                        viewHolder2.v.setVisibility(8);
                    }
                }
                ImageView imageView = viewHolder2.w;
                if (imageView != null) {
                    int i12 = w.e;
                    if (i12 != 0) {
                        imageView.setImageResource(i12);
                        viewHolder2.w.setVisibility(0);
                    } else {
                        imageView.setVisibility(8);
                    }
                }
                AppCompatTextView appCompatTextView2 = viewHolder2.x;
                if (appCompatTextView2 != null) {
                    if (i10 != 0 && i10 != 13 && i10 != 18) {
                        appCompatTextView2.setAlpha(1.0f);
                    } else {
                        if (z2) {
                            f4 = 0.2f;
                        } else {
                            f4 = 1.0f;
                        }
                        appCompatTextView2.setAlpha(f4);
                    }
                    if (!TextUtils.isEmpty(w.j)) {
                        Context context = viewHolder2.x.getContext();
                        Typeface w1 = MainUtil.w1(context, MainUtil.u1(context));
                        if (w1 != null) {
                            viewHolder2.x.setTypeface(w1);
                            viewHolder2.x.setIncludeFontPadding(false);
                        }
                    } else {
                        viewHolder2.x.setTypeface(null);
                    }
                    if (i10 == 10) {
                        if (!TextUtils.isEmpty(str2)) {
                            viewHolder2.x.setText((i9 + 1) + str2);
                        } else if (w.q) {
                            viewHolder2.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + DialogSetTts.B(i9, i8));
                        } else {
                            viewHolder2.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + i9);
                        }
                    } else {
                        int i13 = w.f;
                        if (i13 != 0) {
                            viewHolder2.x.setText(i13);
                            viewHolder2.x.setVisibility(0);
                        } else if (!TextUtils.isEmpty(w.g)) {
                            viewHolder2.x.setText(w.g);
                            viewHolder2.x.setVisibility(0);
                        } else {
                            viewHolder2.x.setVisibility(8);
                        }
                    }
                }
                AppCompatTextView appCompatTextView3 = viewHolder2.y;
                if (appCompatTextView3 != null) {
                    if (i10 != 0 && i10 != 6 && i10 != 13 && i10 != 18) {
                        appCompatTextView3.setAlpha(1.0f);
                    } else {
                        if (z2) {
                            f3 = 0.2f;
                        } else {
                            f3 = 1.0f;
                        }
                        appCompatTextView3.setAlpha(f3);
                    }
                    int i14 = w.h;
                    if (i14 != 0) {
                        viewHolder2.y.setText(i14);
                        viewHolder2.y.setVisibility(0);
                    } else if (!TextUtils.isEmpty(w.i)) {
                        if (this.i && !TextUtils.isEmpty(str2)) {
                            if (MainApp.K1) {
                                i5 = -1;
                            } else {
                                i5 = -769226;
                            }
                            viewHolder2.y.setText(MainUtil.t6(w.i, i5, 0, str2), TextView.BufferType.SPANNABLE);
                        } else {
                            viewHolder2.y.setText(w.i);
                        }
                        viewHolder2.y.setVisibility(0);
                    } else {
                        viewHolder2.y.setVisibility(8);
                    }
                }
                MySwitchView mySwitchView = viewHolder2.z;
                if (mySwitchView != null) {
                    mySwitchView.setTag(viewHolder2);
                    if (i10 == 6) {
                        MySwitchView mySwitchView2 = viewHolder2.z;
                        if (z2) {
                            f2 = 0.2f;
                        } else {
                            f2 = 1.0f;
                        }
                        mySwitchView2.setAlpha(f2);
                    } else {
                        viewHolder2.z.setAlpha(1.0f);
                    }
                    viewHolder2.z.b(w.k, false);
                    viewHolder2.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.2
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MySwitchView mySwitchView3;
                            int i15;
                            int i16;
                            ViewHolder y = SettingListAdapter.y(view);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null && (mySwitchView3 = y.z) != null) {
                                    if (!w2.s) {
                                        boolean z3 = !w2.k;
                                        w2.k = z3;
                                        mySwitchView3.b(z3, true);
                                        AppCompatTextView appCompatTextView4 = y.y;
                                        if (appCompatTextView4 != null) {
                                            if (w2.l && !w2.k) {
                                                appCompatTextView4.setTextColor(-769226);
                                            } else if (w2.m) {
                                                if (MainApp.K1) {
                                                    i16 = -328966;
                                                } else {
                                                    i16 = -16777216;
                                                }
                                                appCompatTextView4.setTextColor(i16);
                                            } else {
                                                if (MainApp.K1) {
                                                    i15 = -4079167;
                                                } else {
                                                    i15 = -10395295;
                                                }
                                                appCompatTextView4.setTextColor(i15);
                                            }
                                        }
                                    }
                                    SettingListener settingListener = settingListAdapter.h;
                                    if (settingListener != null) {
                                        settingListener.a(y, w2.b, w2.k, 0);
                                    }
                                }
                            }
                        }
                    });
                }
                MyButtonCheck myButtonCheck = viewHolder2.A;
                if (myButtonCheck != null) {
                    myButtonCheck.setTag(viewHolder2);
                    if (MainApp.K1) {
                        viewHolder2.A.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                        viewHolder2.A.setBgPreColor(-12632257);
                    } else {
                        viewHolder2.A.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
                        viewHolder2.A.setBgPreColor(-2039584);
                    }
                    viewHolder2.A.q(w.k, false);
                    viewHolder2.A.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            MyButtonCheck myButtonCheck2;
                            ViewHolder y = SettingListAdapter.y(view);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null && (myButtonCheck2 = y.A) != null) {
                                    boolean z3 = !w2.k;
                                    w2.k = z3;
                                    myButtonCheck2.q(z3, true);
                                    SettingListener settingListener = settingListAdapter.h;
                                    if (settingListener != null) {
                                        settingListener.a(y, w2.b, w2.k, 0);
                                    }
                                }
                            }
                        }
                    });
                }
                MyButtonImage myButtonImage = viewHolder2.B;
                if (myButtonImage != null) {
                    myButtonImage.setTag(viewHolder2);
                    if (MainApp.K1) {
                        viewHolder2.B.setBgPreColor(-12632257);
                    } else {
                        viewHolder2.B.setBgPreColor(-2039584);
                    }
                    viewHolder2.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.4
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingListener settingListener;
                            ViewHolder y = SettingListAdapter.y(view);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null && y.B != null && (settingListener = settingListAdapter.h) != null) {
                                    settingListener.a(null, w2.b, false, 0);
                                }
                            }
                        }
                    });
                }
                MyButtonCheck myButtonCheck2 = viewHolder2.C;
                if (myButtonCheck2 != null) {
                    if (MainApp.K1) {
                        myButtonCheck2.p(R.drawable.outline_check_dark_24, 0);
                    } else {
                        myButtonCheck2.p(R.drawable.outline_check_black_24, 0);
                    }
                    viewHolder2.C.q(w.k, w.n);
                    w.n = false;
                }
                SeekBar seekBar = viewHolder2.E;
                if (seekBar != null) {
                    seekBar.setTag(viewHolder2);
                    viewHolder2.E.setSplitTrack(false);
                    viewHolder2.E.setEnabled(!w.s);
                    viewHolder2.E.setMax(i8);
                    viewHolder2.E.setProgress(i9);
                    viewHolder2.E.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.mycompany.app.setting.SettingListAdapter.5
                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                        public final void onProgressChanged(SeekBar seekBar2, int i15, boolean z3) {
                            ViewHolder y = SettingListAdapter.y(seekBar2);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null) {
                                    String str3 = w2.r;
                                    if (y.x != null) {
                                        int progress = seekBar2.getProgress();
                                        if (!TextUtils.isEmpty(str3)) {
                                            y.x.setText((progress + 1) + str3);
                                        } else if (w2.q) {
                                            y.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + DialogSetTts.B(progress, w2.o));
                                        } else {
                                            y.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + progress);
                                        }
                                        SettingListener settingListener = settingListAdapter.h;
                                        if (settingListener != null) {
                                            settingListener.a(y, w2.b, false, progress);
                                        }
                                    }
                                }
                            }
                        }

                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                        public final void onStartTrackingTouch(SeekBar seekBar2) {
                            ViewHolder y = SettingListAdapter.y(seekBar2);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null) {
                                    String str3 = w2.r;
                                    if (y.x != null) {
                                        int progress = seekBar2.getProgress();
                                        if (!TextUtils.isEmpty(str3)) {
                                            y.x.setText((progress + 1) + str3);
                                        } else if (w2.q) {
                                            y.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + DialogSetTts.B(progress, w2.o));
                                        } else {
                                            y.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + progress);
                                        }
                                        SettingListener settingListener = settingListAdapter.h;
                                        if (settingListener != null) {
                                            settingListener.a(y, w2.b, false, progress);
                                        }
                                    }
                                }
                            }
                        }

                        @Override // android.widget.SeekBar.OnSeekBarChangeListener
                        public final void onStopTrackingTouch(SeekBar seekBar2) {
                            ViewHolder y = SettingListAdapter.y(seekBar2);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null) {
                                    String str3 = w2.r;
                                    if (y.x != null) {
                                        int progress = seekBar2.getProgress();
                                        if (!TextUtils.isEmpty(str3)) {
                                            y.x.setText((progress + 1) + str3);
                                        } else if (w2.q) {
                                            y.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + DialogSetTts.B(progress, w2.o));
                                        } else {
                                            y.x.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + progress);
                                        }
                                        SettingListener settingListener = settingListAdapter.h;
                                        if (settingListener != null) {
                                            settingListener.a(y, w2.b, false, progress);
                                        }
                                    }
                                }
                            }
                        }
                    });
                    MyButtonImage myButtonImage2 = viewHolder2.F;
                    if (myButtonImage2 != null) {
                        myButtonImage2.setTag(viewHolder2);
                        if (MainApp.K1) {
                            viewHolder2.F.setBgPreColor(-12632257);
                        } else {
                            viewHolder2.F.setBgPreColor(-2039584);
                        }
                        viewHolder2.F.setEnabled(!w.s);
                        viewHolder2.F.setOnClickListener(new Object());
                    }
                    MyButtonImage myButtonImage3 = viewHolder2.G;
                    if (myButtonImage3 != null) {
                        myButtonImage3.setTag(viewHolder2);
                        if (MainApp.K1) {
                            viewHolder2.G.setBgPreColor(-12632257);
                        } else {
                            viewHolder2.G.setBgPreColor(-2039584);
                        }
                        viewHolder2.G.setEnabled(!w.s);
                        viewHolder2.G.setOnClickListener(new Object());
                    }
                }
                MyButtonImage myButtonImage4 = viewHolder2.H;
                if (myButtonImage4 != null) {
                    myButtonImage4.setTag(viewHolder2);
                    if (MainApp.K1) {
                        viewHolder2.H.setBgPreColor(-12632257);
                    } else {
                        viewHolder2.H.setBgPreColor(-2039584);
                    }
                    viewHolder2.H.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.8
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingListener settingListener;
                            ViewHolder y = SettingListAdapter.y(view);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null && y.H != null && (settingListener = settingListAdapter.h) != null) {
                                    settingListener.a(null, w2.b, true, 0);
                                }
                            }
                        }
                    });
                }
                MyButtonImage myButtonImage5 = viewHolder2.I;
                if (myButtonImage5 != null) {
                    myButtonImage5.setTag(viewHolder2);
                    int i15 = w.z;
                    if (i15 != 0) {
                        viewHolder2.I.setImageResource(i15);
                        viewHolder2.I.setVisibility(0);
                    } else {
                        viewHolder2.I.setVisibility(8);
                    }
                    if (MainApp.K1) {
                        viewHolder2.I.setBgPreColor(-12632257);
                    } else {
                        viewHolder2.I.setBgPreColor(-2039584);
                    }
                    viewHolder2.I.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.9
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            SettingListener settingListener;
                            ViewHolder y = SettingListAdapter.y(view);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null && y.I != null && (settingListener = settingListAdapter.h) != null) {
                                    settingListener.a(null, w2.b, true, 0);
                                }
                            }
                        }
                    });
                }
                final MyRoundImage myRoundImage = viewHolder2.J;
                if (myRoundImage != 0 && i7 != 0) {
                    final Drawable S = MainUtil.S(myRoundImage.getContext(), i7);
                    myRoundImage.setTag(Float.valueOf(S.getIntrinsicHeight() / S.getIntrinsicWidth()));
                    myRoundImage.setListener(new Object());
                    GlideRequests glideRequests = this.j;
                    if (glideRequests != null) {
                        ((RequestBuilder) glideRequests.r(S).e(DiskCacheStrategy.f2204a)).E(myRoundImage);
                    } else {
                        MainActivity mainActivity = this.d;
                        if (mainActivity != null) {
                            mainActivity.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingListAdapter.12
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                    MainActivity mainActivity2 = settingListAdapter.d;
                                    if (mainActivity2 == null) {
                                        return;
                                    }
                                    if (settingListAdapter.j == null) {
                                        settingListAdapter.j = GlideApp.a(mainActivity2);
                                    }
                                    if (settingListAdapter.k == null) {
                                        settingListAdapter.k = new Handler(Looper.getMainLooper());
                                    }
                                    settingListAdapter.k.post(new Runnable() { // from class: com.mycompany.app.setting.SettingListAdapter.12.1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            AnonymousClass12 anonymousClass12 = AnonymousClass12.this;
                                            GlideRequests glideRequests2 = SettingListAdapter.this.j;
                                            if (glideRequests2 == null) {
                                                return;
                                            }
                                            ((RequestBuilder) glideRequests2.r(S).e(DiskCacheStrategy.f2204a)).E(myRoundImage);
                                        }
                                    });
                                }
                            });
                        }
                    }
                }
                View view = viewHolder2.M;
                if (view != null) {
                    view.setBackgroundResource(i7);
                }
                MyButtonView myButtonView = viewHolder2.K;
                if (myButtonView != null) {
                    if (z2) {
                        f = 0.2f;
                    } else {
                        f = 1.0f;
                    }
                    myButtonView.setAlpha(f);
                    viewHolder2.K.setBgNorColor(w.x);
                    viewHolder2.K.d(MainApp.n1);
                }
                MyButtonImage myButtonImage6 = viewHolder2.L;
                if (myButtonImage6 != null) {
                    myButtonImage6.setTag(viewHolder2);
                    if (MainApp.K1) {
                        viewHolder2.L.setBgPreColor(-12632257);
                    } else {
                        viewHolder2.L.setBgPreColor(-2039584);
                    }
                    viewHolder2.L.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingListAdapter.10
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            SettingListener settingListener;
                            ViewHolder y = SettingListAdapter.y(view2);
                            if (y != null) {
                                int c2 = y.c();
                                SettingListAdapter settingListAdapter = SettingListAdapter.this;
                                SettingItem w2 = settingListAdapter.w(c2);
                                if (w2 != null && y.L != null && (settingListener = settingListAdapter.h) != null) {
                                    settingListener.a(null, w2.b, false, 0);
                                }
                            }
                        }
                    });
                }
                int i16 = -4079167;
                if (viewHolder2.v != null) {
                    if (this.i && !TextUtils.isEmpty(str2)) {
                        AppCompatTextView appCompatTextView4 = viewHolder2.v;
                        if (MainApp.K1) {
                            i4 = -4079167;
                        } else {
                            i4 = -16777216;
                        }
                        appCompatTextView4.setTextColor(i4);
                    } else {
                        AppCompatTextView appCompatTextView5 = viewHolder2.v;
                        if (MainApp.K1) {
                            i3 = -328966;
                        } else {
                            i3 = -16777216;
                        }
                        appCompatTextView5.setTextColor(i3);
                    }
                }
                int i17 = -10395295;
                if (viewHolder2.y != null) {
                    if (this.i && !TextUtils.isEmpty(str2)) {
                        AppCompatTextView appCompatTextView6 = viewHolder2.y;
                        if (!MainApp.K1) {
                            i16 = -10395295;
                        }
                        appCompatTextView6.setTextColor(i16);
                    } else if (w.l && !w.k) {
                        viewHolder2.y.setTextColor(-769226);
                    } else if (w.m) {
                        AppCompatTextView appCompatTextView7 = viewHolder2.y;
                        if (MainApp.K1) {
                            i2 = -328966;
                        } else {
                            i2 = -16777216;
                        }
                        appCompatTextView7.setTextColor(i2);
                    } else {
                        AppCompatTextView appCompatTextView8 = viewHolder2.y;
                        if (!MainApp.K1) {
                            i16 = -10395295;
                        }
                        appCompatTextView8.setTextColor(i16);
                    }
                }
                if (MainApp.K1) {
                    MyRoundItem myRoundItem3 = viewHolder2.u;
                    if (myRoundItem3 != null) {
                        if (i10 != 19 && i10 != 20 && i10 != 21 && i10 != 22 && i10 != 24) {
                            myRoundItem3.setBackgroundResource(R.drawable.selector_normal_dark);
                            viewHolder2.u.c();
                        } else {
                            myRoundItem3.setBackground(null);
                        }
                    }
                    AppCompatTextView appCompatTextView9 = viewHolder2.x;
                    if (appCompatTextView9 != null) {
                        if (i10 != 10 && i10 != 15) {
                            appCompatTextView9.setTextColor(-5126668);
                        } else {
                            appCompatTextView9.setTextColor(-328966);
                        }
                    }
                    SeekBar seekBar2 = viewHolder2.E;
                    if (seekBar2 != null) {
                        Context context2 = seekBar2.getContext();
                        viewHolder2.E.setProgressDrawable(MainUtil.S(context2, R.drawable.seek_progress_a));
                        viewHolder2.E.setThumb(MainUtil.S(context2, R.drawable.seek_thumb_a));
                        viewHolder2.F.setImageResource(R.drawable.outline_remove_dark_24);
                        viewHolder2.G.setImageResource(R.drawable.outline_add_dark_24);
                    }
                    MyButtonImage myButtonImage7 = viewHolder2.B;
                    if (myButtonImage7 != null) {
                        myButtonImage7.setImageResource(R.drawable.outline_public_dark_24);
                    }
                    MyButtonImage myButtonImage8 = viewHolder2.H;
                    if (myButtonImage8 != null) {
                        myButtonImage8.setImageResource(R.drawable.outline_article_dark_24);
                    }
                    MyButtonImage myButtonImage9 = viewHolder2.L;
                    if (myButtonImage9 != null) {
                        myButtonImage9.setImageResource(R.drawable.outline_verified_user_dark_24);
                    }
                } else {
                    MyRoundItem myRoundItem4 = viewHolder2.u;
                    if (myRoundItem4 != null) {
                        if (i10 != 19 && i10 != 20 && i10 != 21 && i10 != 22 && i10 != 24) {
                            myRoundItem4.setBackgroundResource(R.drawable.selector_normal);
                            viewHolder2.u.c();
                        } else {
                            myRoundItem4.setBackground(null);
                        }
                    }
                    AppCompatTextView appCompatTextView10 = viewHolder2.x;
                    if (appCompatTextView10 != null) {
                        if (i10 != 10 && i10 != 15) {
                            appCompatTextView10.setTextColor(-12627531);
                        } else {
                            appCompatTextView10.setTextColor(-16777216);
                        }
                    }
                    SeekBar seekBar3 = viewHolder2.E;
                    if (seekBar3 != null) {
                        Context context3 = seekBar3.getContext();
                        viewHolder2.E.setProgressDrawable(MainUtil.S(context3, R.drawable.seek_progress_a));
                        viewHolder2.E.setThumb(MainUtil.S(context3, R.drawable.seek_thumb_a));
                        viewHolder2.F.setImageResource(R.drawable.outline_remove_black_24);
                        viewHolder2.G.setImageResource(R.drawable.outline_add_black_24);
                    }
                    MyButtonImage myButtonImage10 = viewHolder2.B;
                    if (myButtonImage10 != null) {
                        myButtonImage10.setImageResource(R.drawable.outline_public_black_24);
                    }
                    MyButtonImage myButtonImage11 = viewHolder2.H;
                    if (myButtonImage11 != null) {
                        myButtonImage11.setImageResource(R.drawable.outline_article_black_24);
                    }
                    MyButtonImage myButtonImage12 = viewHolder2.L;
                    if (myButtonImage12 != null) {
                        myButtonImage12.setImageResource(R.drawable.outline_verified_user_black_24);
                    }
                }
                if (w.y) {
                    w.y = false;
                    MyRoundItem myRoundItem5 = viewHolder2.u;
                    if (myRoundItem5 != null && !myRoundItem5.s) {
                        myRoundItem5.s = true;
                        myRoundItem5.t = false;
                        if (!MainApp.K1) {
                            i17 = -5854742;
                        }
                        myRoundItem5.v = i17;
                        myRoundItem5.w = 0;
                        myRoundItem5.u = System.currentTimeMillis();
                        MainApp.N(myRoundItem5.getContext(), myRoundItem5.x);
                    }
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v13, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v16, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v19, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v23, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v28, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v33, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v38, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v40, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v43, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v46, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v51, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v55, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v59, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r1v62, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r2v32, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r2v34, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r3v58, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingListAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        View view;
        float f;
        AppCompatTextView appCompatTextView;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        int i2 = -2;
        if (i != 1 && i != 2 && i != 25) {
            if (i == 3) {
                MyRoundItem myRoundItem = new MyRoundItem(context);
                myRoundItem.a(MainApp.E1);
                int i3 = MainApp.E1;
                myRoundItem.setPadding(i3, i3, i3, i3);
                myRoundItem.setGravity(16);
                myRoundItem.setMinimumHeight(MainApp.h1);
                myRoundItem.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                int i4 = R.id.set_title_value;
                appCompatTextView2.setId(i4);
                appCompatTextView2.setTextSize(1, 16.0f);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(21);
                myRoundItem.addView(appCompatTextView2, layoutParams);
                AppCompatTextView j = a.j(context, null, 1, 16.0f);
                RelativeLayout.LayoutParams h = androidx.work.impl.workers.a.h(-1, -2, 16, i4);
                h.setMarginEnd(MainApp.F1);
                myRoundItem.addView(j, h);
                ?? viewHolder = new RecyclerView.ViewHolder(myRoundItem);
                viewHolder.u = myRoundItem;
                viewHolder.x = appCompatTextView2;
                viewHolder.v = j;
                return viewHolder;
            }
            if (i == 4) {
                MyRoundItem myRoundItem2 = new MyRoundItem(context);
                myRoundItem2.a(MainApp.E1);
                int i5 = MainApp.E1;
                myRoundItem2.setPadding(i5, i5, i5, i5);
                myRoundItem2.setGravity(16);
                myRoundItem2.setMinimumHeight(MainApp.h1);
                myRoundItem2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                AppCompatTextView j2 = a.j(context, null, 1, 14.0f);
                myRoundItem2.addView(j2, -1, -2);
                ?? viewHolder2 = new RecyclerView.ViewHolder(myRoundItem2);
                viewHolder2.u = myRoundItem2;
                viewHolder2.y = j2;
                return viewHolder2;
            }
            int i6 = 0;
            if (i == 5) {
                MyRoundItem myRoundItem3 = new MyRoundItem(context);
                myRoundItem3.a(MainApp.E1);
                myRoundItem3.setPaddingRelative(MainApp.F1, 0, MainApp.E1, 0);
                myRoundItem3.setMinimumHeight(MainApp.h1);
                myRoundItem3.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                ImageView imageView = new ImageView(context);
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int G = (int) MainUtil.G(context, 20.0f);
                RelativeLayout.LayoutParams g = androidx.work.impl.workers.a.g(G, G, 15);
                g.setMarginStart((int) MainUtil.G(context, 14.0f));
                myRoundItem3.addView(imageView, g);
                AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
                int i7 = MainApp.F1;
                appCompatTextView3.setPadding(i7, 0, i7, 0);
                RelativeLayout.LayoutParams h2 = a.h(appCompatTextView3, 1, 16.0f, -1, -2);
                h2.addRule(15);
                h2.setMarginStart(MainApp.h1);
                myRoundItem3.addView(appCompatTextView3, h2);
                ?? viewHolder3 = new RecyclerView.ViewHolder(myRoundItem3);
                viewHolder3.u = myRoundItem3;
                viewHolder3.w = imageView;
                viewHolder3.v = appCompatTextView3;
                return viewHolder3;
            }
            if (i == 6) {
                MyRoundItem myRoundItem4 = new MyRoundItem(context);
                myRoundItem4.a(MainApp.E1);
                myRoundItem4.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                myRoundItem4.setMinimumHeight(MainApp.h1);
                myRoundItem4.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                MySwitchView mySwitchView = new MySwitchView(context);
                int i8 = R.id.set_switch_sw;
                mySwitchView.setId(i8);
                int i9 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i9, i9);
                layoutParams2.addRule(21);
                layoutParams2.addRule(15);
                myRoundItem4.addView(mySwitchView, layoutParams2);
                RelativeLayout relativeLayout = new RelativeLayout(context);
                int i10 = MainApp.E1;
                relativeLayout.setPadding(0, i10, 0, i10);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams3.addRule(16, i8);
                layoutParams3.addRule(15);
                layoutParams3.setMarginEnd(MainApp.F1);
                myRoundItem4.addView(relativeLayout, layoutParams3);
                AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
                int i11 = R.id.set_switch_title;
                appCompatTextView4.setId(i11);
                appCompatTextView4.setTextSize(1, 16.0f);
                relativeLayout.addView(appCompatTextView4, -1, -2);
                AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
                appCompatTextView5.setTextSize(1, 14.0f);
                appCompatTextView5.setVisibility(8);
                RelativeLayout.LayoutParams h3 = androidx.work.impl.workers.a.h(-1, -2, 3, i11);
                h3.topMargin = MainApp.G1;
                relativeLayout.addView(appCompatTextView5, h3);
                ?? viewHolder4 = new RecyclerView.ViewHolder(myRoundItem4);
                viewHolder4.u = myRoundItem4;
                viewHolder4.z = mySwitchView;
                viewHolder4.v = appCompatTextView4;
                viewHolder4.y = appCompatTextView5;
                return viewHolder4;
            }
            if (i == 7) {
                MyRoundItem myRoundItem5 = new MyRoundItem(context);
                myRoundItem5.a(MainApp.E1);
                myRoundItem5.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                myRoundItem5.setMinimumHeight(MainApp.h1);
                myRoundItem5.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                MyButtonCheck myButtonCheck = new MyButtonCheck(context);
                int i12 = R.id.set_check_check;
                myButtonCheck.setId(i12);
                int i13 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i13, i13);
                layoutParams4.addRule(21);
                layoutParams4.addRule(15);
                myRoundItem5.addView(myButtonCheck, layoutParams4);
                RelativeLayout relativeLayout2 = new RelativeLayout(context);
                int i14 = MainApp.E1;
                relativeLayout2.setPadding(0, i14, 0, i14);
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams5.addRule(16, i12);
                layoutParams5.addRule(15);
                layoutParams5.setMarginEnd(MainApp.F1);
                myRoundItem5.addView(relativeLayout2, layoutParams5);
                AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
                int i15 = R.id.set_check_title;
                appCompatTextView6.setId(i15);
                appCompatTextView6.setTextSize(1, 16.0f);
                relativeLayout2.addView(appCompatTextView6, -1, -2);
                AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
                appCompatTextView7.setTextSize(1, 14.0f);
                appCompatTextView7.setVisibility(8);
                RelativeLayout.LayoutParams h4 = androidx.work.impl.workers.a.h(-1, -2, 3, i15);
                h4.topMargin = MainApp.G1;
                relativeLayout2.addView(appCompatTextView7, h4);
                ?? viewHolder5 = new RecyclerView.ViewHolder(myRoundItem5);
                viewHolder5.u = myRoundItem5;
                viewHolder5.A = myButtonCheck;
                viewHolder5.v = appCompatTextView6;
                viewHolder5.y = appCompatTextView7;
                return viewHolder5;
            }
            if (i == 8) {
                MyRoundItem myRoundItem6 = new MyRoundItem(context);
                myRoundItem6.a(MainApp.E1);
                myRoundItem6.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                myRoundItem6.setMinimumHeight(MainApp.h1);
                myRoundItem6.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                MyButtonCheck myButtonCheck2 = new MyButtonCheck(context);
                int i16 = R.id.set_filter_check;
                myButtonCheck2.setId(i16);
                int i17 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i17, i17);
                layoutParams6.addRule(21);
                layoutParams6.addRule(15);
                myRoundItem6.addView(myButtonCheck2, layoutParams6);
                MyButtonImage myButtonImage = new MyButtonImage(context);
                int i18 = R.id.set_filter_home;
                myButtonImage.setId(i18);
                int G2 = (int) MainUtil.G(context, 14.0f);
                myButtonImage.setPadding(G2, G2, G2, G2);
                myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int i19 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i19, i19);
                layoutParams7.addRule(16, i16);
                layoutParams7.addRule(15);
                myRoundItem6.addView(myButtonImage, layoutParams7);
                RelativeLayout relativeLayout3 = new RelativeLayout(context);
                int i20 = MainApp.E1;
                relativeLayout3.setPadding(0, i20, 0, i20);
                RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams8.addRule(16, i18);
                layoutParams8.addRule(15);
                myRoundItem6.addView(relativeLayout3, layoutParams8);
                AppCompatTextView appCompatTextView8 = new AppCompatTextView(context, null);
                int i21 = R.id.set_filter_title;
                appCompatTextView8.setId(i21);
                appCompatTextView8.setTextSize(1, 16.0f);
                relativeLayout3.addView(appCompatTextView8, -1, -2);
                AppCompatTextView appCompatTextView9 = new AppCompatTextView(context, null);
                appCompatTextView9.setTextSize(1, 14.0f);
                appCompatTextView9.setVisibility(8);
                RelativeLayout.LayoutParams h5 = androidx.work.impl.workers.a.h(-1, -2, 3, i21);
                h5.topMargin = MainApp.G1;
                relativeLayout3.addView(appCompatTextView9, h5);
                ?? viewHolder6 = new RecyclerView.ViewHolder(myRoundItem6);
                viewHolder6.u = myRoundItem6;
                viewHolder6.A = myButtonCheck2;
                viewHolder6.B = myButtonImage;
                viewHolder6.v = appCompatTextView8;
                viewHolder6.y = appCompatTextView9;
                return viewHolder6;
            }
            if (i == 9) {
                MyRoundItem myRoundItem7 = new MyRoundItem(context);
                myRoundItem7.a(MainApp.E1);
                int i22 = MainApp.E1;
                myRoundItem7.setPadding(i22, 0, i22, 0);
                myRoundItem7.setMinimumHeight(MainApp.h1);
                myRoundItem7.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                MyButtonCheck myButtonCheck3 = new MyButtonCheck(context);
                int i23 = R.id.set_select_select;
                myButtonCheck3.setId(i23);
                int i24 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams9 = new RelativeLayout.LayoutParams(i24, i24);
                layoutParams9.addRule(21);
                layoutParams9.addRule(15);
                myRoundItem7.addView(myButtonCheck3, layoutParams9);
                AppCompatTextView appCompatTextView10 = new AppCompatTextView(context, null);
                int i25 = MainApp.E1;
                appCompatTextView10.setPadding(0, i25, 0, i25);
                RelativeLayout.LayoutParams h6 = a.h(appCompatTextView10, 1, 16.0f, -1, -2);
                h6.addRule(16, i23);
                h6.addRule(15);
                h6.setMarginEnd(MainApp.F1);
                myRoundItem7.addView(appCompatTextView10, h6);
                ?? viewHolder7 = new RecyclerView.ViewHolder(myRoundItem7);
                viewHolder7.u = myRoundItem7;
                viewHolder7.C = myButtonCheck3;
                viewHolder7.v = appCompatTextView10;
                return viewHolder7;
            }
            if (i == 10) {
                MyRoundItem myRoundItem8 = new MyRoundItem(context);
                myRoundItem8.a(MainApp.E1);
                int i26 = MainApp.E1;
                myRoundItem8.setPadding(0, i26, 0, i26);
                myRoundItem8.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                AppCompatTextView appCompatTextView11 = new AppCompatTextView(context, null);
                int i27 = R.id.set_seek_value;
                appCompatTextView11.setId(i27);
                appCompatTextView11.setGravity(1);
                appCompatTextView11.setTextSize(1, 16.0f);
                appCompatTextView11.setMinWidth(MainApp.E1);
                RelativeLayout.LayoutParams layoutParams10 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams10.addRule(21);
                layoutParams10.setMarginEnd(MainApp.E1);
                myRoundItem8.addView(appCompatTextView11, layoutParams10);
                AppCompatTextView appCompatTextView12 = new AppCompatTextView(context, null);
                int i28 = R.id.set_seek_title;
                appCompatTextView12.setId(i28);
                appCompatTextView12.setTextSize(1, 16.0f);
                RelativeLayout.LayoutParams h7 = androidx.work.impl.workers.a.h(-1, -2, 16, i27);
                h7.setMarginStart(MainApp.E1);
                h7.setMarginEnd(MainApp.F1);
                myRoundItem8.addView(appCompatTextView12, h7);
                FrameLayout frameLayout = new FrameLayout(context);
                myRoundItem8.addView(frameLayout, androidx.work.impl.workers.a.h(-1, -2, 3, i28));
                MyButtonImage myButtonImage2 = new MyButtonImage(context);
                ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
                myButtonImage2.setScaleType(scaleType);
                int i29 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams11 = new FrameLayout.LayoutParams(i29, i29);
                layoutParams11.gravity = 8388627;
                frameLayout.addView(myButtonImage2, layoutParams11);
                MyButtonImage myButtonImage3 = new MyButtonImage(context);
                myButtonImage3.setScaleType(scaleType);
                int i30 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams12 = new FrameLayout.LayoutParams(i30, i30);
                layoutParams12.gravity = 8388629;
                frameLayout.addView(myButtonImage3, layoutParams12);
                SeekBar seekBar = new SeekBar(context);
                FrameLayout.LayoutParams layoutParams13 = new FrameLayout.LayoutParams(-1, -2);
                layoutParams13.gravity = 8388627;
                layoutParams13.setMarginStart(MainApp.g1);
                layoutParams13.setMarginEnd(MainApp.g1);
                frameLayout.addView(seekBar, layoutParams13);
                ?? viewHolder8 = new RecyclerView.ViewHolder(myRoundItem8);
                viewHolder8.u = myRoundItem8;
                viewHolder8.x = appCompatTextView11;
                viewHolder8.v = appCompatTextView12;
                viewHolder8.F = myButtonImage2;
                viewHolder8.G = myButtonImage3;
                viewHolder8.E = seekBar;
                return viewHolder8;
            }
            if (i == 11) {
                MyRoundItem myRoundItem9 = new MyRoundItem(context);
                myRoundItem9.a(MainApp.E1);
                myRoundItem9.setPaddingRelative(MainApp.E1, 0, 0, 0);
                myRoundItem9.setMinimumHeight(MainApp.h1);
                myRoundItem9.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                RelativeLayout relativeLayout4 = new RelativeLayout(context);
                int i31 = MainApp.E1;
                relativeLayout4.setPadding(0, i31, 0, i31);
                RelativeLayout.LayoutParams g2 = androidx.work.impl.workers.a.g(-1, -2, 15);
                g2.setMarginEnd((int) MainUtil.G(context, 96.0f));
                myRoundItem9.addView(relativeLayout4, g2);
                AppCompatTextView appCompatTextView13 = new AppCompatTextView(context, null);
                int i32 = R.id.set_lcns_title;
                appCompatTextView13.setId(i32);
                appCompatTextView13.setTextSize(1, 16.0f);
                relativeLayout4.addView(appCompatTextView13, -1, -2);
                AppCompatTextView appCompatTextView14 = new AppCompatTextView(context, null);
                int i33 = R.id.set_lcns_value;
                appCompatTextView14.setId(i33);
                appCompatTextView14.setTextSize(1, 14.0f);
                RelativeLayout.LayoutParams h8 = androidx.work.impl.workers.a.h(-1, -2, 3, i32);
                h8.topMargin = MainApp.G1;
                relativeLayout4.addView(appCompatTextView14, h8);
                AppCompatTextView appCompatTextView15 = new AppCompatTextView(context, null);
                RelativeLayout.LayoutParams h9 = a.h(appCompatTextView15, 1, 14.0f, -1, -2);
                h9.addRule(3, i33);
                h9.topMargin = MainApp.G1;
                relativeLayout4.addView(appCompatTextView15, h9);
                MyButtonImage myButtonImage4 = new MyButtonImage(context);
                ImageView.ScaleType scaleType2 = ImageView.ScaleType.CENTER_INSIDE;
                myButtonImage4.setScaleType(scaleType2);
                int G3 = (int) MainUtil.G(context, 14.0f);
                myButtonImage4.setPadding(G3, G3, G3, G3);
                int i34 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams14 = new RelativeLayout.LayoutParams(i34, i34);
                layoutParams14.addRule(15);
                layoutParams14.addRule(21);
                layoutParams14.setMarginEnd(MainApp.g1);
                myRoundItem9.addView(myButtonImage4, layoutParams14);
                MyButtonImage p = a.p(context, scaleType2);
                p.setPadding(G3, G3, G3, G3);
                int i35 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams15 = new RelativeLayout.LayoutParams(i35, i35);
                layoutParams15.addRule(15);
                layoutParams15.addRule(21);
                myRoundItem9.addView(p, layoutParams15);
                ?? viewHolder9 = new RecyclerView.ViewHolder(myRoundItem9);
                viewHolder9.u = myRoundItem9;
                viewHolder9.v = appCompatTextView13;
                viewHolder9.x = appCompatTextView14;
                viewHolder9.y = appCompatTextView15;
                viewHolder9.B = myButtonImage4;
                viewHolder9.H = p;
                return viewHolder9;
            }
            if (i == 12) {
                MyRoundItem myRoundItem10 = new MyRoundItem(context);
                myRoundItem10.a(MainApp.E1);
                int i36 = MainApp.E1;
                myRoundItem10.setPadding(i36, i36, i36, i36);
                myRoundItem10.setGravity(16);
                myRoundItem10.setMinimumHeight(MainApp.h1);
                myRoundItem10.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                MyRoundImage myRoundImage = new MyRoundImage(context);
                myRoundImage.setScaleType(ImageView.ScaleType.FIT_XY);
                myRoundItem10.addView(myRoundImage, -1, -2);
                ?? viewHolder10 = new RecyclerView.ViewHolder(myRoundItem10);
                viewHolder10.u = myRoundItem10;
                viewHolder10.J = myRoundImage;
                return viewHolder10;
            }
            if (i == 13) {
                MyRoundItem myRoundItem11 = new MyRoundItem(context);
                myRoundItem11.a(MainApp.E1);
                myRoundItem11.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
                myRoundItem11.setMinimumHeight(MainApp.h1);
                myRoundItem11.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                AppCompatTextView appCompatTextView16 = new AppCompatTextView(context, null);
                int i37 = MainApp.E1;
                appCompatTextView16.setPadding(0, i37, 0, i37);
                RelativeLayout.LayoutParams h10 = a.h(appCompatTextView16, 1, 16.0f, -1, -2);
                h10.addRule(15);
                h10.setMarginEnd(MainApp.g1);
                myRoundItem11.addView(appCompatTextView16, h10);
                MyButtonView myButtonView = new MyButtonView(context);
                myButtonView.setBgNorRadius((int) MainUtil.G(context, 12.0f));
                int i38 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams16 = new RelativeLayout.LayoutParams(i38, i38);
                layoutParams16.addRule(15);
                layoutParams16.addRule(21);
                myRoundItem11.addView(myButtonView, layoutParams16);
                ?? viewHolder11 = new RecyclerView.ViewHolder(myRoundItem11);
                viewHolder11.u = myRoundItem11;
                viewHolder11.v = appCompatTextView16;
                viewHolder11.K = myButtonView;
                return viewHolder11;
            }
            if (i == 14) {
                MyRoundItem myRoundItem12 = new MyRoundItem(context);
                myRoundItem12.a(MainApp.E1);
                int i39 = MainApp.E1;
                myRoundItem12.setPadding(i39, i39, i39, i39);
                myRoundItem12.setGravity(16);
                myRoundItem12.setMinimumHeight(MainApp.h1);
                myRoundItem12.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                View view2 = new View(context);
                RelativeLayout.LayoutParams g3 = androidx.work.impl.workers.a.g(1, 1, 21);
                g3.topMargin = MainApp.F1;
                myRoundItem12.addView(view2, g3);
                FrameLayout frameLayout2 = new FrameLayout(context);
                int i40 = R.id.set_combi_frame;
                frameLayout2.setId(i40);
                myRoundItem12.addView(frameLayout2, -1, -2);
                ImageView imageView2 = new ImageView(context);
                imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int G4 = (int) MainUtil.G(context, 20.0f);
                FrameLayout.LayoutParams layoutParams17 = new FrameLayout.LayoutParams(G4, G4);
                layoutParams17.gravity = 8388627;
                frameLayout2.addView(imageView2, layoutParams17);
                AppCompatTextView appCompatTextView17 = new AppCompatTextView(context, null);
                appCompatTextView17.setTextSize(1, 16.0f);
                FrameLayout.LayoutParams layoutParams18 = new FrameLayout.LayoutParams(-1, -2);
                layoutParams18.gravity = 8388627;
                layoutParams18.setMarginStart((int) MainUtil.G(context, 32.0f));
                frameLayout2.addView(appCompatTextView17, layoutParams18);
                AppCompatTextView appCompatTextView18 = new AppCompatTextView(context, null);
                appCompatTextView18.setTextSize(1, 14.0f);
                appCompatTextView18.setVisibility(8);
                RelativeLayout.LayoutParams h11 = androidx.work.impl.workers.a.h(-1, -2, 3, i40);
                h11.topMargin = MainApp.G1;
                myRoundItem12.addView(appCompatTextView18, h11);
                ?? viewHolder12 = new RecyclerView.ViewHolder(myRoundItem12);
                viewHolder12.u = myRoundItem12;
                viewHolder12.v = appCompatTextView17;
                viewHolder12.w = imageView2;
                viewHolder12.x = appCompatTextView18;
                viewHolder12.D = view2;
                return viewHolder12;
            }
            if (i == 15) {
                MyRoundItem myRoundItem13 = new MyRoundItem(context);
                myRoundItem13.a(MainApp.E1);
                int i41 = MainApp.E1;
                myRoundItem13.setPadding(i41, 0, i41, 0);
                myRoundItem13.setMinimumHeight(MainApp.h1);
                myRoundItem13.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                FrameLayout frameLayout3 = new FrameLayout(context);
                int i42 = R.id.set_pay_ficon;
                frameLayout3.setId(i42);
                RelativeLayout.LayoutParams layoutParams19 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams19.addRule(15);
                myRoundItem13.addView(frameLayout3, layoutParams19);
                ImageView imageView3 = new ImageView(context);
                imageView3.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int G5 = (int) MainUtil.G(context, 20.0f);
                FrameLayout.LayoutParams layoutParams20 = new FrameLayout.LayoutParams(G5, G5);
                layoutParams20.setMarginEnd(MainApp.E1);
                frameLayout3.addView(imageView3, layoutParams20);
                AppCompatTextView appCompatTextView19 = new AppCompatTextView(context, null);
                int i43 = R.id.set_pay_value;
                appCompatTextView19.setId(i43);
                appCompatTextView19.setTextSize(1, 16.0f);
                RelativeLayout.LayoutParams layoutParams21 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams21.addRule(21);
                layoutParams21.addRule(15);
                myRoundItem13.addView(appCompatTextView19, layoutParams21);
                RelativeLayout relativeLayout5 = new RelativeLayout(context);
                int i44 = MainApp.E1;
                relativeLayout5.setPadding(0, i44, 0, i44);
                RelativeLayout.LayoutParams h12 = androidx.work.impl.workers.a.h(-1, -2, 17, i42);
                h12.addRule(16, i43);
                h12.addRule(15);
                h12.setMarginEnd(MainApp.E1);
                myRoundItem13.addView(relativeLayout5, h12);
                AppCompatTextView appCompatTextView20 = new AppCompatTextView(context, null);
                int i45 = R.id.set_pay_title;
                appCompatTextView20.setId(i45);
                appCompatTextView20.setTextSize(1, 16.0f);
                relativeLayout5.addView(appCompatTextView20, -1, -2);
                AppCompatTextView appCompatTextView21 = new AppCompatTextView(context, null);
                appCompatTextView21.setTextSize(1, 14.0f);
                appCompatTextView21.setVisibility(8);
                RelativeLayout.LayoutParams h13 = androidx.work.impl.workers.a.h(-1, -2, 3, i45);
                h13.topMargin = MainApp.G1;
                relativeLayout5.addView(appCompatTextView21, h13);
                ?? viewHolder13 = new RecyclerView.ViewHolder(myRoundItem13);
                viewHolder13.u = myRoundItem13;
                viewHolder13.v = appCompatTextView20;
                viewHolder13.w = imageView3;
                viewHolder13.x = appCompatTextView19;
                viewHolder13.y = appCompatTextView21;
                return viewHolder13;
            }
            if (i == 16) {
                MyRoundItem myRoundItem14 = new MyRoundItem(context);
                myRoundItem14.a(MainApp.E1);
                int i46 = MainApp.E1;
                myRoundItem14.setPaddingRelative(i46, i46, MainApp.F1, MainApp.E1);
                myRoundItem14.setMinimumHeight(MainApp.h1);
                myRoundItem14.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                AppCompatTextView j3 = a.j(context, null, 1, 16.0f);
                RelativeLayout.LayoutParams g4 = androidx.work.impl.workers.a.g(-1, -2, 15);
                g4.setMarginEnd(MainApp.g1);
                myRoundItem14.addView(j3, g4);
                MyButtonImage myButtonImage5 = new MyButtonImage(context);
                myButtonImage5.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int i47 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams22 = new RelativeLayout.LayoutParams(i47, i47);
                layoutParams22.addRule(15);
                layoutParams22.addRule(21);
                myRoundItem14.addView(myButtonImage5, layoutParams22);
                ?? viewHolder14 = new RecyclerView.ViewHolder(myRoundItem14);
                viewHolder14.u = myRoundItem14;
                viewHolder14.v = j3;
                viewHolder14.L = myButtonImage5;
                return viewHolder14;
            }
            if (i == 17) {
                MyRoundItem myRoundItem15 = new MyRoundItem(context);
                myRoundItem15.a(MainApp.E1);
                myRoundItem15.setPadding(MainApp.E1, MainApp.F1, MainApp.E1, MainApp.F1);
                myRoundItem15.setGravity(16);
                myRoundItem15.setMinimumHeight(MainApp.h1);
                myRoundItem15.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                AppCompatTextView j4 = a.j(context, null, 1, 16.0f);
                myRoundItem15.addView(j4, -1, -2);
                ?? viewHolder15 = new RecyclerView.ViewHolder(myRoundItem15);
                viewHolder15.u = myRoundItem15;
                viewHolder15.v = j4;
                return viewHolder15;
            }
            if (i == 19) {
                MyRoundItem myRoundItem16 = new MyRoundItem(context);
                myRoundItem16.setPaddingRelative(0, 0, MainApp.E1, 0);
                myRoundItem16.setMinimumHeight(MainApp.g1);
                myRoundItem16.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                ImageView imageView4 = new ImageView(context);
                int i48 = R.id.set_sbtitle_icon;
                imageView4.setId(i48);
                imageView4.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int G6 = (int) MainUtil.G(context, 20.0f);
                RelativeLayout.LayoutParams g5 = androidx.work.impl.workers.a.g(G6, G6, 15);
                g5.setMarginStart((int) MainUtil.G(context, 22.0f));
                myRoundItem16.addView(imageView4, g5);
                AppCompatTextView j5 = a.j(context, null, 1, 16.0f);
                RelativeLayout.LayoutParams layoutParams23 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams23.addRule(17, i48);
                layoutParams23.addRule(15);
                layoutParams23.setMarginStart((int) MainUtil.G(context, 18.0f));
                myRoundItem16.addView(j5, layoutParams23);
                ?? viewHolder16 = new RecyclerView.ViewHolder(myRoundItem16);
                viewHolder16.u = myRoundItem16;
                viewHolder16.v = j5;
                viewHolder16.w = imageView4;
                return viewHolder16;
            }
            if (i == 20) {
                MyRoundItem myRoundItem17 = new MyRoundItem(context);
                int i49 = MainApp.E1;
                myRoundItem17.setPaddingRelative(0, i49, i49, MainApp.G1);
                myRoundItem17.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                ImageView imageView5 = new ImageView(context);
                int i50 = R.id.set_sbfilter_icon;
                imageView5.setId(i50);
                imageView5.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int G7 = (int) MainUtil.G(context, 20.0f);
                RelativeLayout.LayoutParams layoutParams24 = new RelativeLayout.LayoutParams(G7, G7);
                layoutParams24.topMargin = (int) MainUtil.G(context, 10.0f);
                layoutParams24.setMarginStart((int) MainUtil.G(context, 18.0f));
                myRoundItem17.addView(imageView5, layoutParams24);
                AppCompatTextView appCompatTextView22 = new AppCompatTextView(context, null);
                appCompatTextView22.setGravity(16);
                appCompatTextView22.setSingleLine(true);
                appCompatTextView22.setTextSize(1, 16.0f);
                RelativeLayout.LayoutParams layoutParams25 = new RelativeLayout.LayoutParams(-1, MainApp.f1);
                layoutParams25.addRule(17, i50);
                layoutParams25.setMarginStart((int) MainUtil.G(context, 14.0f));
                myRoundItem17.addView(appCompatTextView22, layoutParams25);
                ?? viewHolder17 = new RecyclerView.ViewHolder(myRoundItem17);
                viewHolder17.u = myRoundItem17;
                viewHolder17.v = appCompatTextView22;
                viewHolder17.w = imageView5;
                return viewHolder17;
            }
            if (i == 21) {
                MyRoundItem myRoundItem18 = new MyRoundItem(context);
                int i51 = MainApp.E1;
                myRoundItem18.setPadding(i51, 0, i51, 0);
                myRoundItem18.setMinimumHeight(MainApp.h1);
                myRoundItem18.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                ImageView imageView6 = new ImageView(context);
                imageView6.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int G8 = (int) MainUtil.G(context, 20.0f);
                RelativeLayout.LayoutParams layoutParams26 = new RelativeLayout.LayoutParams(G8, G8);
                layoutParams26.addRule(15);
                myRoundItem18.addView(imageView6, layoutParams26);
                AppCompatTextView appCompatTextView23 = new AppCompatTextView(context, null);
                int i52 = MainApp.E1;
                appCompatTextView23.setPadding(0, i52, 0, i52);
                RelativeLayout.LayoutParams h14 = a.h(appCompatTextView23, 1, 16.0f, -1, -2);
                h14.addRule(15);
                h14.setMarginStart((int) MainUtil.G(context, 36.0f));
                myRoundItem18.addView(appCompatTextView23, h14);
                ?? viewHolder18 = new RecyclerView.ViewHolder(myRoundItem18);
                viewHolder18.u = myRoundItem18;
                viewHolder18.v = appCompatTextView23;
                viewHolder18.w = imageView6;
                return viewHolder18;
            }
            if (i == 22) {
                MyRoundItem myRoundItem19 = new MyRoundItem(context);
                myRoundItem19.setPaddingRelative(0, 0, MainApp.E1, 0);
                myRoundItem19.setMinimumHeight(MainApp.g1);
                myRoundItem19.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                ImageView imageView7 = new ImageView(context);
                int i53 = R.id.set_signin_icon;
                imageView7.setId(i53);
                ImageView.ScaleType scaleType3 = ImageView.ScaleType.CENTER_INSIDE;
                imageView7.setScaleType(scaleType3);
                int G9 = (int) MainUtil.G(context, 20.0f);
                RelativeLayout.LayoutParams g6 = androidx.work.impl.workers.a.g(G9, G9, 15);
                g6.setMarginStart((int) MainUtil.G(context, 22.0f));
                myRoundItem19.addView(imageView7, g6);
                AppCompatTextView j6 = a.j(context, null, 1, 16.0f);
                RelativeLayout.LayoutParams layoutParams27 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams27.addRule(17, i53);
                layoutParams27.addRule(15);
                layoutParams27.setMarginStart((int) MainUtil.G(context, 18.0f));
                layoutParams27.setMarginEnd(MainApp.g1);
                myRoundItem19.addView(j6, layoutParams27);
                MyButtonImage myButtonImage6 = new MyButtonImage(context);
                int G10 = (int) MainUtil.G(context, 14.0f);
                myButtonImage6.setPadding(G10, G10, G10, G10);
                myButtonImage6.setScaleType(scaleType3);
                myButtonImage6.setVisibility(8);
                int i54 = MainApp.g1;
                RelativeLayout.LayoutParams layoutParams28 = new RelativeLayout.LayoutParams(i54, i54);
                layoutParams28.addRule(15);
                layoutParams28.addRule(21);
                myRoundItem19.addView(myButtonImage6, layoutParams28);
                ?? viewHolder19 = new RecyclerView.ViewHolder(myRoundItem19);
                viewHolder19.u = myRoundItem19;
                viewHolder19.v = j6;
                viewHolder19.w = imageView7;
                viewHolder19.I = myButtonImage6;
                return viewHolder19;
            }
            if (i == 24) {
                MyRoundItem myRoundItem20 = new MyRoundItem(context);
                myRoundItem20.setPadding(0, MainApp.F1, 0, MainApp.E1);
                myRoundItem20.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                View view3 = new View(context);
                RelativeLayout.LayoutParams layoutParams29 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 176.0f), MainApp.E1);
                layoutParams29.addRule(14);
                myRoundItem20.addView(view3, layoutParams29);
                ?? viewHolder20 = new RecyclerView.ViewHolder(myRoundItem20);
                viewHolder20.u = myRoundItem20;
                viewHolder20.M = view3;
                return viewHolder20;
            }
            MyRoundItem myRoundItem21 = new MyRoundItem(context);
            myRoundItem21.a(MainApp.E1);
            int i55 = MainApp.E1;
            myRoundItem21.setPadding(i55, i55, i55, i55);
            myRoundItem21.setGravity(16);
            myRoundItem21.setMinimumHeight(MainApp.h1);
            myRoundItem21.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            if (i != 23) {
                view = new View(context);
                RelativeLayout.LayoutParams g7 = androidx.work.impl.workers.a.g(1, 1, 21);
                g7.topMargin = MainApp.F1;
                myRoundItem21.addView(view, g7);
            } else {
                view = null;
            }
            AppCompatTextView appCompatTextView24 = new AppCompatTextView(context, null);
            int i56 = R.id.set_default_title;
            appCompatTextView24.setId(i56);
            appCompatTextView24.setTextSize(1, 16.0f);
            myRoundItem21.addView(appCompatTextView24, -1, -2);
            RelativeLayout relativeLayout6 = new RelativeLayout(context);
            myRoundItem21.addView(relativeLayout6, androidx.work.impl.workers.a.h(-1, -2, 3, i56));
            if (i != 23) {
                appCompatTextView = new AppCompatTextView(context, null);
                i6 = R.id.set_default_value;
                appCompatTextView.setId(i6);
                appCompatTextView.setVisibility(8);
                f = 14.0f;
                appCompatTextView.setTextSize(1, 14.0f);
                RelativeLayout.LayoutParams layoutParams30 = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams30.topMargin = MainApp.G1;
                relativeLayout6.addView(appCompatTextView, layoutParams30);
            } else {
                f = 14.0f;
                appCompatTextView = null;
            }
            AppCompatTextView appCompatTextView25 = new AppCompatTextView(context, null);
            appCompatTextView25.setTextSize(1, f);
            appCompatTextView25.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams31 = new RelativeLayout.LayoutParams(-1, -2);
            if (i != 23) {
                layoutParams31.addRule(3, i6);
            }
            layoutParams31.topMargin = MainApp.G1;
            relativeLayout6.addView(appCompatTextView25, layoutParams31);
            ?? viewHolder21 = new RecyclerView.ViewHolder(myRoundItem21);
            viewHolder21.u = myRoundItem21;
            viewHolder21.D = view;
            viewHolder21.v = appCompatTextView24;
            viewHolder21.x = appCompatTextView;
            viewHolder21.y = appCompatTextView25;
            return viewHolder21;
        }
        MyRoundItem myRoundItem22 = new MyRoundItem(context);
        myRoundItem22.a(MainApp.E1);
        if (i == 1) {
            i2 = MainApp.F1;
        } else if (i != 25) {
            i2 = (int) MainUtil.G(context, 32.0f);
        }
        myRoundItem22.setLayoutParams(new ViewGroup.LayoutParams(-1, i2));
        ?? viewHolder22 = new RecyclerView.ViewHolder(myRoundItem22);
        viewHolder22.u = myRoundItem22;
        return viewHolder22;
    }

    public final int v(int i) {
        int size;
        List list = this.e;
        if (list == null || (size = list.size()) == 0) {
            return -1;
        }
        for (int i2 = 0; i2 < size; i2++) {
            SettingItem settingItem = (SettingItem) this.e.get(i2);
            if (settingItem != null && settingItem.b == i) {
                return i2;
            }
        }
        return -1;
    }

    public final SettingItem w(int i) {
        List list = this.e;
        if (list != null && i >= 0 && i < list.size()) {
            return (SettingItem) this.e.get(i);
        }
        return null;
    }

    public final ViewHolder x(int i) {
        View s;
        LinearLayoutManager linearLayoutManager = this.g;
        if (linearLayoutManager == null || (s = linearLayoutManager.s(i)) == null) {
            return null;
        }
        return y(s);
    }

    public final void z() {
        this.l = d();
        if (this.j != null) {
            this.j = null;
        }
        this.d = null;
        this.e = null;
        this.g = null;
        this.h = null;
        MainUtil.R6(this.k);
        this.k = null;
    }

    /* loaded from: classes3.dex */
    public static class SettingItem {

        /* renamed from: a, reason: collision with root package name */
        public int f17931a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f17932c;
        public String d;
        public int e;
        public int f;
        public String g;
        public int h;
        public String i;
        public final String j;
        public boolean k;
        public final boolean l;
        public final boolean m;
        public boolean n;
        public int o;
        public int p;
        public final boolean q;
        public String r;
        public boolean s;
        public final boolean t;
        public int u;
        public int v;
        public final String w;
        public final int x;
        public boolean y;
        public int z;

        public SettingItem(int i, boolean z) {
            this.f17931a = z ? 1 : 2;
            this.b = i;
            this.u = 0;
        }

        public SettingItem(int i, int i2, String str, int i3) {
            this.f17931a = 3;
            this.b = i;
            this.f17932c = i2;
            this.g = str;
            this.u = i3;
        }

        public SettingItem(int i, int i2, String str, boolean z, int i3) {
            this.f17931a = 4;
            this.b = i;
            if (z) {
                this.h = i2;
            } else {
                this.i = str;
            }
            this.u = i3;
        }

        public SettingItem(String str, boolean z) {
            this.f17931a = 4;
            this.b = 10;
            this.i = str;
            this.m = z;
            this.u = 2;
        }

        public SettingItem(int i, int i2, int i3, int i4) {
            this.f17931a = 5;
            this.b = i;
            this.f17932c = i2;
            this.e = i3;
            this.u = i4;
        }

        public SettingItem(int i, String str, int i2, int i3) {
            this.f17931a = 5;
            this.b = i;
            this.d = str;
            this.e = i2;
            this.u = i3;
        }

        public SettingItem(int i, int i2, int i3, int i4, int i5) {
            this.f17931a = 0;
            this.b = i;
            this.f17932c = i2;
            this.f = i3;
            this.h = i4;
            this.u = i5;
        }

        public SettingItem(int i, int i2, String str, int i3, int i4) {
            this.f17931a = 0;
            this.b = i;
            this.f17932c = i2;
            this.g = str;
            this.h = i3;
            this.u = i4;
        }

        public SettingItem(int i, int i2, int i3, String str, int i4) {
            this.f17931a = 0;
            this.b = i;
            this.f17932c = i2;
            this.f = i3;
            this.i = str;
            this.u = i4;
        }

        public SettingItem(int i, String str, int i2, int i3, int i4) {
            this.f17931a = 0;
            this.b = i;
            this.d = str;
            this.f = i2;
            this.h = i3;
            this.u = i4;
        }

        public SettingItem(String str, int i, int i2, String str2, int i3) {
            this.f17931a = 0;
            this.b = 6;
            this.f17932c = i;
            this.g = str;
            this.h = i2;
            this.j = str2;
            this.u = i3;
        }

        public SettingItem(int i, int i2, int i3, boolean z) {
            this.f17931a = 0;
            this.b = i;
            this.f17932c = i2;
            this.f = i3;
            this.h = 0;
            this.s = z;
            this.t = z;
            this.u = 0;
        }

        public SettingItem(String str, int i, int i2, String str2, boolean z, String str3) {
            this.f17931a = 0;
            this.b = i;
            this.d = str;
            this.g = str2;
            this.i = str3;
            this.s = z;
            this.t = z;
            this.u = i2;
        }

        public SettingItem(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            this.f17931a = z2 ? 6 : 7;
            this.b = i;
            this.f17932c = i2;
            this.h = i3;
            this.k = z;
            this.u = i4;
        }

        public SettingItem(int i, int i2, int i3, boolean z, boolean z2, boolean z3, int i4) {
            this.f17931a = 6;
            this.b = i;
            this.f17932c = i2;
            this.h = i3;
            this.k = z;
            this.s = z2;
            this.t = z3;
            this.u = i4;
        }

        public SettingItem(String str, int i, int i2, boolean z) {
            this.f17931a = 6;
            this.b = i;
            this.f17932c = i2;
            this.i = str;
            this.k = z;
            this.u = 1;
        }

        public SettingItem(int i, int i2, int i3, int i4, String str, boolean z) {
            this.f17931a = 6;
            this.b = i;
            this.f17932c = i2;
            this.i = str;
            this.k = z;
            this.l = true;
            this.u = i3;
        }

        public SettingItem(String str, String str2, boolean z, boolean z2, boolean z3) {
            this.f17931a = 6;
            this.b = 2;
            this.d = str;
            this.i = str2;
            this.k = z;
            this.s = z2;
            this.t = z3;
            this.u = 0;
        }

        public SettingItem(int i, int i2, String str, String str2, boolean z) {
            this.f17931a = 8;
            this.b = i;
            this.d = str;
            this.i = str2;
            this.k = z;
            this.u = i2;
        }

        public SettingItem(int i, int i2, int i3, int i4, Object obj) {
            this.f17931a = 10;
            this.b = i;
            this.f17932c = i2;
            this.o = i3;
            this.p = i4;
            this.q = true;
            this.s = false;
            this.u = 0;
        }

        public SettingItem(int i, int i2, int i3, int i4, com.mycompany.app.dialog.a aVar) {
            this.f17931a = 13;
            this.b = i;
            this.f17932c = i2;
            this.x = i3;
            this.u = i4;
        }

        public SettingItem(int i, int i2, int i3, boolean z, boolean z2, int i4, int i5) {
            this.f17931a = 13;
            this.b = i;
            this.f17932c = i2;
            this.x = i3;
            this.s = z;
            this.t = z2;
            this.u = i4;
        }

        public SettingItem(int i, String str, int i2, int i3, int i4, int i5) {
            this.f17931a = 14;
            this.b = i;
            this.d = str;
            this.e = i2;
            this.f = i3;
            this.u = i4;
        }

        public SettingItem(int i, int i2, int i3, String str, int i4, int i5) {
            this.f17931a = 15;
            this.b = i;
            this.f17932c = i2;
            this.e = i3;
            this.g = str;
            this.h = 0;
            this.u = i4;
        }

        public SettingItem(int i, int i2, int i3, int i4, String str, boolean z, boolean z2) {
            this.f17931a = 18;
            this.b = i;
            this.f17932c = i2;
            this.g = str;
            this.h = i3;
            this.s = z;
            this.t = z2;
            this.u = i4;
        }

        public SettingItem(int i, int i2, String str, String str2, boolean z, boolean z2, int i3) {
            this.f17931a = 18;
            this.b = i;
            this.f17932c = i2;
            this.g = str;
            this.i = str2;
            this.s = z;
            this.t = z2;
            this.u = i3;
        }

        public SettingItem(int i, int i2, String str, int i3, boolean z) {
            this.f17931a = z ? 20 : 19;
            this.b = i;
            if (i2 != 0) {
                this.f17932c = i2;
            } else {
                this.d = str;
            }
            this.e = i3;
        }

        public SettingItem(Context context, int i, int i2, int i3, int i4, String str) {
            this.f17931a = 23;
            this.b = i2;
            this.e = i;
            if (i3 != 0) {
                this.d = context.getString(i3);
            }
            if (i4 != 0) {
                this.i = context.getString(i4);
            } else {
                this.i = str;
            }
            if (!TextUtils.isEmpty(this.d)) {
                this.j = this.d.toLowerCase(Locale.US);
            }
            if (TextUtils.isEmpty(this.i)) {
                return;
            }
            this.w = this.i.toLowerCase(Locale.US);
        }

        public SettingItem(Context context, int i, int i2, String str, int i3) {
            this.f17931a = 23;
            this.b = i2;
            this.e = i;
            this.d = str;
            if (i3 != 0) {
                this.i = context.getString(i3);
            } else {
                this.i = null;
            }
            if (!TextUtils.isEmpty(str)) {
                this.j = str.toLowerCase(Locale.US);
            }
            if (TextUtils.isEmpty(this.i)) {
                return;
            }
            this.w = this.i.toLowerCase(Locale.US);
        }
    }
}
