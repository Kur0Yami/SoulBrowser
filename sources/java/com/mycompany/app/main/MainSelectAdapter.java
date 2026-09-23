package com.mycompany.app.main;

import android.animation.AnimatorSet;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.main.MainDragAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyCircleView;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MySelectView;
import com.mycompany.app.view.MySwitchView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class MainSelectAdapter extends RecyclerView.Adapter<ViewHolder> {
    public List d;
    public int e;
    public int f;
    public final boolean g;
    public boolean h;
    public MainSelectListener i;
    public MainDragAdapter.MainDragListener j;
    public boolean k;
    public Pattern l;
    public int m;

    /* renamed from: com.mycompany.app.main.MainSelectAdapter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface MainSelectListener {
        void a(int i);
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public View A;
        public MySwitchView B;
        public View C;
        public MyCircleView D;
        public MyLineRelative u;
        public MySelectView v;
        public MyRoundImage w;
        public AppCompatTextView x;
        public AppCompatTextView y;
        public MyButtonCheck z;
    }

    public MainSelectAdapter(ArrayList arrayList, MainSelectListener mainSelectListener) {
        this.d = arrayList;
        this.g = true;
        this.i = mainSelectListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.m;
        if (i != 0) {
            return i;
        }
        List list = this.d;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        List list = this.d;
        if (list != null && i >= 0 && i < list.size()) {
            return ((MainSelectItem) this.d.get(i)).f16839a;
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15, types: [android.view.View$OnClickListener, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        MainSelectItem v;
        int i2;
        int i3;
        int i4;
        boolean z;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        if (viewHolder2.f1589a != null && viewHolder2.u != null && (v = v(i)) != null) {
            String str = v.f;
            viewHolder2.u.setTag(viewHolder2);
            viewHolder2.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainSelectAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ViewHolder viewHolder3;
                    int i5;
                    Object tag;
                    MainSelectAdapter mainSelectAdapter = MainSelectAdapter.this;
                    if (mainSelectAdapter.i != null) {
                        if (view == null || (tag = view.getTag()) == null || !(tag instanceof ViewHolder)) {
                            viewHolder3 = null;
                        } else {
                            viewHolder3 = (ViewHolder) tag;
                        }
                        if (viewHolder3 != null && viewHolder3.f1589a != null) {
                            i5 = viewHolder3.c();
                        } else {
                            i5 = -1;
                        }
                        MainSelectItem v2 = mainSelectAdapter.v(i5);
                        if (v2 == null) {
                            return;
                        }
                        if (v2.k) {
                            MainUtil.e8(view.getContext(), R.string.already_added);
                        } else {
                            mainSelectAdapter.i.a(v2.f16839a);
                        }
                    }
                }
            });
            boolean z2 = true;
            if (this.g) {
                MyLineRelative myLineRelative = viewHolder2.u;
                if (i != this.d.size() - 1) {
                    z = true;
                } else {
                    z = false;
                }
                myLineRelative.setDrawLine(z);
            }
            if (this.h) {
                if (v.f16839a == this.f) {
                    if (viewHolder2.D == null) {
                        MyCircleView myCircleView = new MyCircleView(viewHolder2.u.getContext());
                        viewHolder2.D = myCircleView;
                        myCircleView.setColor(-769226);
                        int round = Math.round(MainUtil.G(viewHolder2.D.getContext(), 6.0f));
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
                        layoutParams.setMarginStart(MainApp.G1 * 12);
                        layoutParams.topMargin = MainApp.G1 * 3;
                        viewHolder2.u.addView(viewHolder2.D, layoutParams);
                    }
                    viewHolder2.D.setVisibility(0);
                } else {
                    MyCircleView myCircleView2 = viewHolder2.D;
                    if (myCircleView2 != null) {
                        myCircleView2.setVisibility(8);
                    }
                }
            }
            MyRoundImage myRoundImage = viewHolder2.w;
            if (myRoundImage != null) {
                int i5 = v.b;
                if (i5 != 0) {
                    int i6 = v.f16840c;
                    String str2 = v.g;
                    if (this.l == null) {
                        this.l = Pattern.compile("\\p{Punct}");
                    }
                    myRoundImage.p(i5, i6, str2, this.l);
                    viewHolder2.w.setVisibility(0);
                } else {
                    int i7 = v.f16840c;
                    if (i7 > 0) {
                        int i8 = this.e;
                        if (i8 == 1) {
                            myRoundImage.setBackgroundResource(i7);
                        } else if (i8 == 5) {
                            myRoundImage.setBackgroundResource(i7);
                            viewHolder2.w.setAlpha(1.0f);
                        } else {
                            myRoundImage.o(0, i7);
                        }
                        viewHolder2.w.setVisibility(0);
                    } else {
                        myRoundImage.setVisibility(8);
                    }
                }
            }
            int i9 = v.d;
            if (i9 > 0) {
                viewHolder2.x.setText(i9);
                viewHolder2.x.setVisibility(0);
            } else if (!TextUtils.isEmpty(v.e)) {
                if (this.k && !TextUtils.isEmpty(v.h)) {
                    if (MainApp.K1) {
                        i2 = -1;
                    } else {
                        i2 = -769226;
                    }
                    viewHolder2.x.setText(MainUtil.t6(v.e, i2, 0, v.h), TextView.BufferType.SPANNABLE);
                } else {
                    viewHolder2.x.setText(v.e);
                }
                viewHolder2.x.setVisibility(0);
            } else {
                viewHolder2.x.setVisibility(8);
            }
            if (viewHolder2.y != null) {
                if (!TextUtils.isEmpty(str)) {
                    viewHolder2.y.setText(str);
                    AppCompatTextView appCompatTextView = viewHolder2.y;
                    if (MainApp.K1) {
                        i4 = -5126668;
                    } else {
                        i4 = -12627531;
                    }
                    appCompatTextView.setTextColor(i4);
                    viewHolder2.y.setVisibility(0);
                } else {
                    viewHolder2.y.setVisibility(8);
                }
            }
            MySelectView mySelectView = viewHolder2.v;
            if (mySelectView != null) {
                int i10 = v.f16839a;
                int i11 = this.f;
                if (i10 == i11) {
                    if (v.i) {
                        mySelectView.c(i11);
                    } else {
                        mySelectView.setVisibility(8);
                    }
                } else {
                    mySelectView.setVisibility(8);
                }
                v.i = false;
            } else {
                MyButtonCheck myButtonCheck = viewHolder2.z;
                if (myButtonCheck != null) {
                    if (MainApp.K1) {
                        myButtonCheck.p(R.drawable.outline_check_dark_24, 0);
                    } else {
                        myButtonCheck.p(R.drawable.outline_check_black_24, 0);
                    }
                    MyButtonCheck myButtonCheck2 = viewHolder2.z;
                    if (v.f16839a != this.f) {
                        z2 = false;
                    }
                    myButtonCheck2.q(z2, v.i);
                    v.i = false;
                }
            }
            if (viewHolder2.C != null) {
                if (v.f16839a == this.f && v.i) {
                    viewHolder2.u.f();
                } else {
                    MyLineRelative myLineRelative2 = viewHolder2.u;
                    AnimatorSet animatorSet = myLineRelative2.q;
                    if (animatorSet != null) {
                        animatorSet.cancel();
                        myLineRelative2.q = null;
                    }
                }
                v.i = false;
                if (v.f16839a == this.f) {
                    if (MainApp.K1) {
                        viewHolder2.C.setBackgroundResource(R.drawable.outline_check_dark_24);
                    } else {
                        viewHolder2.C.setBackgroundResource(R.drawable.outline_check_black_24);
                    }
                    viewHolder2.C.setVisibility(0);
                } else {
                    viewHolder2.C.setVisibility(8);
                }
            }
            View view = viewHolder2.A;
            if (view != 0) {
                view.setOnClickListener(new Object());
            }
            MySwitchView mySwitchView = viewHolder2.B;
            if (mySwitchView != null) {
                mySwitchView.setTag(viewHolder2);
                viewHolder2.B.b(v.j, false);
                viewHolder2.B.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainSelectAdapter.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        ViewHolder viewHolder3;
                        MySwitchView mySwitchView2;
                        Object tag;
                        if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof ViewHolder)) {
                            viewHolder3 = null;
                        } else {
                            viewHolder3 = (ViewHolder) tag;
                        }
                        if (viewHolder3 != null) {
                            int c2 = viewHolder3.c();
                            MainSelectAdapter mainSelectAdapter = MainSelectAdapter.this;
                            MainSelectItem v2 = mainSelectAdapter.v(c2);
                            if (v2 != null && (mySwitchView2 = viewHolder3.B) != null) {
                                boolean z3 = !v2.j;
                                v2.j = z3;
                                mySwitchView2.b(z3, true);
                                MainDragAdapter.MainDragListener mainDragListener = mainSelectAdapter.j;
                                if (mainDragListener != null) {
                                    mainDragListener.a(v2.f16839a, v2.j);
                                }
                            }
                        }
                    }
                });
            }
            if (MainApp.K1) {
                viewHolder2.u.setBackgroundResource(R.drawable.selector_list_back_dark);
            } else {
                viewHolder2.u.setBackgroundResource(R.drawable.selector_list_back);
            }
            int i12 = -328966;
            int i13 = -16777216;
            if (viewHolder2.C == null && viewHolder2.v == null) {
                AppCompatTextView appCompatTextView2 = viewHolder2.x;
                if (!MainApp.K1) {
                    i12 = -16777216;
                }
                appCompatTextView2.setTextColor(i12);
                return;
            }
            if (v.f16839a == this.f) {
                viewHolder2.x.setTextColor(-769226);
                return;
            }
            if (v.k) {
                AppCompatTextView appCompatTextView3 = viewHolder2.x;
                if (MainApp.K1) {
                    i3 = -8355712;
                } else {
                    i3 = -2434342;
                }
                appCompatTextView3.setTextColor(i3);
                return;
            }
            if (this.k && !TextUtils.isEmpty(v.h)) {
                AppCompatTextView appCompatTextView4 = viewHolder2.x;
                if (MainApp.K1) {
                    i13 = -4079167;
                }
                appCompatTextView4.setTextColor(i13);
                return;
            }
            AppCompatTextView appCompatTextView5 = viewHolder2.x;
            if (!MainApp.K1) {
                i12 = -16777216;
            }
            appCompatTextView5.setTextColor(i12);
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainSelectAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r0v13, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainSelectAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r0v17, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainSelectAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r0v22, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainSelectAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainSelectAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainSelectAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        int i2 = this.e;
        if (i2 == 1) {
            MyLineRelative myLineRelative = new MyLineRelative(context);
            myLineRelative.b(MainApp.E1);
            myLineRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.h1));
            MyRoundImage myRoundImage = new MyRoundImage(context);
            int i3 = R.id.sel_icon_icon;
            myRoundImage.setId(i3);
            int G = (int) MainUtil.G(context, 20.0f);
            RelativeLayout.LayoutParams g = a.g(G, G, 15);
            g.setMarginStart((int) MainUtil.G(context, 18.0f));
            myLineRelative.addView(myRoundImage, g);
            AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
            int i4 = MainApp.F1;
            appCompatTextView.setPadding(0, i4, 0, i4);
            appCompatTextView.setMaxLines(2);
            appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(15);
            layoutParams.addRule(17, i3);
            layoutParams.setMarginStart((int) MainUtil.G(context, 18.0f));
            layoutParams.setMarginEnd((int) MainUtil.G(context, 40.0f));
            myLineRelative.addView(appCompatTextView, layoutParams);
            View view = new View(context);
            view.setVisibility(8);
            int G2 = (int) MainUtil.G(context, 24.0f);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(G2, G2);
            layoutParams2.addRule(21);
            layoutParams2.addRule(15);
            layoutParams2.setMarginEnd(MainApp.E1);
            myLineRelative.addView(view, layoutParams2);
            ?? viewHolder = new RecyclerView.ViewHolder(myLineRelative);
            viewHolder.u = myLineRelative;
            viewHolder.x = appCompatTextView;
            viewHolder.w = myRoundImage;
            viewHolder.C = view;
            return viewHolder;
        }
        if (i2 == 2) {
            MyLineRelative myLineRelative2 = new MyLineRelative(context);
            myLineRelative2.b(MainApp.E1);
            myLineRelative2.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.h1));
            MySelectView mySelectView = new MySelectView(context);
            mySelectView.setVisibility(8);
            myLineRelative2.addView(mySelectView, -1, MainApp.h1);
            MyRoundImage myRoundImage2 = new MyRoundImage(context);
            int i5 = R.id.sel_select_icon;
            myRoundImage2.setId(i5);
            myRoundImage2.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage2.setRoundRadius(MainApp.G1);
            myRoundImage2.setCircleRadius(MainApp.E1);
            int G3 = (int) MainUtil.G(context, 32.0f);
            RelativeLayout.LayoutParams g2 = a.g(G3, G3, 15);
            g2.setMarginStart((int) MainUtil.G(context, 12.0f));
            myLineRelative2.addView(myRoundImage2, g2);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int i6 = MainApp.F1;
            appCompatTextView2.setPadding(0, i6, 0, i6);
            appCompatTextView2.setMaxLines(2);
            appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView2.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(15);
            layoutParams3.addRule(17, i5);
            layoutParams3.setMarginStart((int) MainUtil.G(context, 12.0f));
            layoutParams3.setMarginEnd(MainApp.E1);
            myLineRelative2.addView(appCompatTextView2, layoutParams3);
            ?? viewHolder2 = new RecyclerView.ViewHolder(myLineRelative2);
            viewHolder2.u = myLineRelative2;
            viewHolder2.x = appCompatTextView2;
            viewHolder2.v = mySelectView;
            viewHolder2.w = myRoundImage2;
            return viewHolder2;
        }
        if (i2 == 3) {
            MyLineRelative myLineRelative3 = new MyLineRelative(context);
            myLineRelative3.b(MainApp.E1);
            myLineRelative3.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
            myLineRelative3.setMinimumHeight(MainApp.h1);
            myLineRelative3.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            RelativeLayout relativeLayout = new RelativeLayout(context);
            int i7 = MainApp.E1;
            relativeLayout.setPadding(0, i7, 0, i7);
            RelativeLayout.LayoutParams g3 = a.g(-1, -2, 15);
            g3.setMarginEnd(MainApp.g1);
            myLineRelative3.addView(relativeLayout, g3);
            AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
            int i8 = R.id.sel_check_name;
            appCompatTextView3.setId(i8);
            appCompatTextView3.setTextSize(1, 16.0f);
            relativeLayout.addView(appCompatTextView3, -1, -2);
            AppCompatTextView appCompatTextView4 = new AppCompatTextView(context, null);
            appCompatTextView4.setTextSize(1, 14.0f);
            appCompatTextView4.setVisibility(8);
            RelativeLayout.LayoutParams h = a.h(-1, -2, 3, i8);
            h.topMargin = MainApp.G1;
            relativeLayout.addView(appCompatTextView4, h);
            MyButtonCheck myButtonCheck = new MyButtonCheck(context);
            int i9 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(i9, i9);
            layoutParams4.addRule(21);
            layoutParams4.addRule(15);
            myLineRelative3.addView(myButtonCheck, layoutParams4);
            ?? viewHolder3 = new RecyclerView.ViewHolder(myLineRelative3);
            viewHolder3.u = myLineRelative3;
            viewHolder3.x = appCompatTextView3;
            viewHolder3.y = appCompatTextView4;
            viewHolder3.z = myButtonCheck;
            return viewHolder3;
        }
        if (i2 == 4) {
            MyLineRelative myLineRelative4 = new MyLineRelative(context);
            myLineRelative4.b(MainApp.E1);
            myLineRelative4.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.h1));
            MySelectView mySelectView2 = new MySelectView(context);
            mySelectView2.setVisibility(8);
            myLineRelative4.addView(mySelectView2, -1, MainApp.h1);
            MyRoundImage myRoundImage3 = new MyRoundImage(context);
            int i10 = R.id.sel_switch_icon;
            myRoundImage3.setId(i10);
            myRoundImage3.setScaleType(ImageView.ScaleType.CENTER_CROP);
            myRoundImage3.setRoundRadius(MainApp.G1);
            myRoundImage3.setCircleRadius(MainApp.E1);
            int G4 = (int) MainUtil.G(context, 32.0f);
            RelativeLayout.LayoutParams g4 = a.g(G4, G4, 15);
            g4.setMarginStart((int) MainUtil.G(context, 12.0f));
            myLineRelative4.addView(myRoundImage3, g4);
            View view2 = new View(context);
            int i11 = R.id.sel_switch_back;
            view2.setId(i11);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(MainApp.i1, MainApp.h1);
            layoutParams5.addRule(15);
            layoutParams5.addRule(21);
            myLineRelative4.addView(view2, layoutParams5);
            MySwitchView mySwitchView = new MySwitchView(context);
            int i12 = MainApp.g1;
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(i12, i12);
            layoutParams6.addRule(15);
            layoutParams6.addRule(21);
            layoutParams6.setMarginEnd(MainApp.F1);
            myLineRelative4.addView(mySwitchView, layoutParams6);
            AppCompatTextView appCompatTextView5 = new AppCompatTextView(context, null);
            int i13 = MainApp.F1;
            appCompatTextView5.setPadding(0, i13, 0, i13);
            appCompatTextView5.setMaxLines(2);
            appCompatTextView5.setEllipsize(TextUtils.TruncateAt.END);
            appCompatTextView5.setTextSize(1, 16.0f);
            RelativeLayout.LayoutParams h2 = a.h(-1, -2, 17, i10);
            h2.addRule(16, i11);
            h2.addRule(15);
            h2.setMarginStart((int) MainUtil.G(context, 12.0f));
            myLineRelative4.addView(appCompatTextView5, h2);
            ?? viewHolder4 = new RecyclerView.ViewHolder(myLineRelative4);
            viewHolder4.u = myLineRelative4;
            viewHolder4.x = appCompatTextView5;
            viewHolder4.v = mySelectView2;
            viewHolder4.w = myRoundImage3;
            viewHolder4.A = view2;
            viewHolder4.B = mySwitchView;
            return viewHolder4;
        }
        if (i2 == 5) {
            MyLineRelative myLineRelative5 = new MyLineRelative(context);
            myLineRelative5.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MainUtil.G(context, 52.0f)));
            MyRoundImage myRoundImage4 = new MyRoundImage(context);
            int G5 = (int) MainUtil.G(context, 20.0f);
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(G5, G5);
            layoutParams7.topMargin = MainApp.E1;
            layoutParams7.setMarginStart((int) MainUtil.G(context, 22.0f));
            myLineRelative5.addView(myRoundImage4, layoutParams7);
            AppCompatTextView appCompatTextView6 = new AppCompatTextView(context, null);
            appCompatTextView6.setGravity(16);
            appCompatTextView6.setSingleLine(true);
            RelativeLayout.LayoutParams h3 = com.google.android.gms.internal.mlkit_vision_text_common.a.h(appCompatTextView6, 1, 16.0f, -1, -1);
            h3.setMarginStart((int) MainUtil.G(context, 64.0f));
            h3.setMarginEnd(MainApp.F1);
            myLineRelative5.addView(appCompatTextView6, h3);
            ?? viewHolder5 = new RecyclerView.ViewHolder(myLineRelative5);
            viewHolder5.u = myLineRelative5;
            viewHolder5.x = appCompatTextView6;
            viewHolder5.w = myRoundImage4;
            return viewHolder5;
        }
        MyLineRelative myLineRelative6 = new MyLineRelative(context);
        myLineRelative6.b(MainApp.E1);
        int i14 = MainApp.E1;
        myLineRelative6.setPadding(i14, 0, i14, 0);
        myLineRelative6.setMinimumHeight(MainApp.h1);
        myLineRelative6.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        AppCompatTextView appCompatTextView7 = new AppCompatTextView(context, null);
        int i15 = MainApp.F1;
        appCompatTextView7.setPadding(0, i15, 0, i15);
        appCompatTextView7.setMaxLines(2);
        appCompatTextView7.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView7.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams8.addRule(15);
        myLineRelative6.addView(appCompatTextView7, layoutParams8);
        ?? viewHolder6 = new RecyclerView.ViewHolder(myLineRelative6);
        viewHolder6.u = myLineRelative6;
        viewHolder6.x = appCompatTextView7;
        return viewHolder6;
    }

    public final MainSelectItem v(int i) {
        List list = this.d;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainSelectItem) this.d.get(i);
        }
        return null;
    }

    public final void w() {
        this.m = d();
        this.d = null;
        this.i = null;
        this.j = null;
        this.l = null;
    }

    public final void x(int i, Handler handler) {
        int i2;
        if (handler == null || (i2 = this.f) == i || this.d == null) {
            return;
        }
        this.f = i;
        if (i2 == -1) {
            h(i);
        } else {
            h(i2);
            handler.post(new Runnable() { // from class: com.mycompany.app.main.MainSelectAdapter.4
                @Override // java.lang.Runnable
                public final void run() {
                    MainSelectAdapter mainSelectAdapter = MainSelectAdapter.this;
                    if (mainSelectAdapter.d == null) {
                        return;
                    }
                    mainSelectAdapter.h(mainSelectAdapter.f);
                }
            });
        }
    }

    public final void y(int i) {
        List list;
        if (this.f == i || (list = this.d) == null) {
            return;
        }
        this.f = i;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((MainSelectItem) it.next()).i = true;
        }
        g();
    }

    /* loaded from: classes3.dex */
    public static class MainSelectItem {

        /* renamed from: a, reason: collision with root package name */
        public int f16839a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public int f16840c;
        public int d;
        public String e;
        public final String f;
        public String g;
        public String h;
        public boolean i;
        public boolean j;
        public boolean k;

        public MainSelectItem(int i, int i2) {
            this.f16839a = i;
            this.d = i2;
        }

        public MainSelectItem(int i, String str) {
            this.f16839a = i;
            this.e = str;
        }

        public MainSelectItem(int i, String str, int i2) {
            this.f16839a = 0;
            this.d = i;
            this.f = str;
        }

        public MainSelectItem(int i, int i2, int i3) {
            this.f16839a = i;
            this.f16840c = i2;
            this.d = i3;
        }

        public MainSelectItem(int i, int i2, String str) {
            this.f16839a = i;
            this.f16840c = i2;
            this.d = 0;
            this.e = str;
        }

        public MainSelectItem(String str, int i, int i2, String str2) {
            this.f16839a = i;
            this.b = -460552;
            this.f16840c = i2;
            this.e = str;
            this.g = str2;
        }
    }

    public MainSelectAdapter(List list, int i, int i2, boolean z, MainSelectListener mainSelectListener) {
        this.d = list;
        this.e = i2;
        this.f = i;
        this.g = z;
        this.i = mainSelectListener;
    }
}
