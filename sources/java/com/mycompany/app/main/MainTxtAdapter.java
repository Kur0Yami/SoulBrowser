package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainTxtView;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyManagerLinear;
import java.util.List;

/* loaded from: classes3.dex */
public class MainTxtAdapter extends RecyclerView.Adapter<ViewHolder> {
    public int d;
    public int e;
    public List f;
    public boolean g;
    public Typeface h;
    public int i;
    public int j;
    public int k;
    public MyManagerLinear l;
    public MainTxtListener m;
    public int n;

    /* loaded from: classes3.dex */
    public interface MainTxtListener {
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public AppCompatTextView u;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.n;
        if (i != 0) {
            return i;
        }
        List list = this.f;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        return 0L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        List list;
        if (this.g && (list = this.f) != null && i >= 0 && i < list.size() && i == this.f.size() - 1) {
            return 1;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        List list;
        AppCompatTextView appCompatTextView;
        int i2;
        int i3;
        int i4;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        View view = viewHolder2.f1589a;
        if (view != null && (list = this.f) != null && i >= 0 && i < list.size() && (appCompatTextView = viewHolder2.u) != null) {
            view.setTag(viewHolder2);
            String str = (String) this.f.get(i);
            appCompatTextView.setText(str);
            if (this.m != null) {
                if (TextUtils.isEmpty(str)) {
                    appCompatTextView.setOnLongClickListener(null);
                    appCompatTextView.setBackground(null);
                } else {
                    appCompatTextView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.main.MainTxtAdapter.1
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view2) {
                            ViewHolder viewHolder3;
                            int i5;
                            int I0;
                            Object tag;
                            MainTxtListener mainTxtListener = MainTxtAdapter.this.m;
                            if (mainTxtListener == null) {
                                return false;
                            }
                            if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof ViewHolder)) {
                                viewHolder3 = null;
                            } else {
                                viewHolder3 = (ViewHolder) tag;
                            }
                            if (viewHolder3 != null && viewHolder3.f1589a != null) {
                                i5 = viewHolder3.c();
                            } else {
                                i5 = -1;
                            }
                            final MainTxtView.AnonymousClass26 anonymousClass26 = (MainTxtView.AnonymousClass26) mainTxtListener;
                            MainTxtView mainTxtView = MainTxtView.this;
                            if (mainTxtView.O0 != null && !mainTxtView.O2) {
                                mainTxtView.O2 = true;
                                mainTxtView.A2 = false;
                                if (mainTxtView.x2) {
                                    if (mainTxtView.J1 != null && mainTxtView.s2 != null && (I0 = mainTxtView.I0(i5)) != mainTxtView.t2) {
                                        mainTxtView.X0(I0, true);
                                    }
                                } else {
                                    mainTxtView.v2 = i5;
                                    mainTxtView.T0();
                                }
                                mainTxtView.A2 = false;
                                mainTxtView.O0.postDelayed(new Runnable() { // from class: com.mycompany.app.main.MainTxtView.26.1
                                    public AnonymousClass1() {
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MainTxtView.this.O2 = false;
                                    }
                                }, 200L);
                            }
                            return true;
                        }
                    });
                    if (i == this.k) {
                        if (MainApp.K1) {
                            i4 = 1629058770;
                        } else {
                            i4 = 1639179772;
                        }
                        appCompatTextView.setBackgroundColor(i4);
                    } else {
                        if (MainApp.K1) {
                            i3 = R.drawable.selector_normal_dark;
                        } else {
                            i3 = R.drawable.selector_normal;
                        }
                        appCompatTextView.setBackgroundResource(i3);
                    }
                }
            }
            if (MainApp.K1) {
                i2 = -328966;
            } else {
                i2 = -16777216;
            }
            appCompatTextView.setTextColor(i2);
            if (this.g) {
                appCompatTextView.setTypeface(this.h);
            }
            y(appCompatTextView);
        }
    }

    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainTxtAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 1) {
            View view = new View(context);
            view.setLayoutParams(new AbsListView.LayoutParams(-1, MainApp.F1 * 10));
            return new RecyclerView.ViewHolder(view);
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        if (!this.g) {
            int i2 = MainApp.E1;
            appCompatTextView.setPadding(i2, 0, i2, 0);
        }
        y(appCompatTextView);
        ?? viewHolder = new RecyclerView.ViewHolder(appCompatTextView);
        viewHolder.u = appCompatTextView;
        return viewHolder;
    }

    public final void v(int i) {
        MyManagerLinear myManagerLinear;
        View s;
        ViewHolder viewHolder;
        AppCompatTextView appCompatTextView;
        int i2;
        int i3;
        List list = this.f;
        if (list != null && i >= 0 && i < list.size() && (myManagerLinear = this.l) != null && (s = myManagerLinear.s(i)) != null) {
            Object tag = s.getTag();
            if (tag == null || !(tag instanceof ViewHolder)) {
                viewHolder = null;
            } else {
                viewHolder = (ViewHolder) tag;
            }
            if (viewHolder != null && viewHolder.f1589a != null && (appCompatTextView = viewHolder.u) != null) {
                if (i == this.k) {
                    if (MainApp.K1) {
                        i3 = 1629058770;
                    } else {
                        i3 = 1639179772;
                    }
                    appCompatTextView.setBackgroundColor(i3);
                    return;
                }
                if (MainApp.K1) {
                    i2 = R.drawable.selector_normal_dark;
                } else {
                    i2 = R.drawable.selector_normal;
                }
                appCompatTextView.setBackgroundResource(i2);
            }
        }
    }

    public final int w(ScaleGestureDetector scaleGestureDetector) {
        if (this.i == 0) {
            this.i = 100;
        }
        if (scaleGestureDetector == null) {
            return this.i;
        }
        int round = Math.round(100.0f / ((1.0f - scaleGestureDetector.getScaleFactor()) + (100.0f / this.i)));
        this.i = round;
        return x(round);
    }

    public final int x(int i) {
        this.i = i;
        int i2 = this.d;
        if (i < i2) {
            this.i = i2;
        } else {
            int i3 = this.e;
            if (i > i3) {
                this.i = i3;
            }
        }
        int i4 = this.j;
        int i5 = this.i;
        if (i4 != i5) {
            this.j = i5;
            g();
        }
        return this.i;
    }

    public final void y(TextView textView) {
        float f;
        if (textView == null) {
            return;
        }
        float f2 = this.i / 100.0f;
        if (f2 <= 0.0f) {
            f2 = 1.0f;
        }
        if (this.g) {
            f = 18.0f;
        } else {
            f = 12.0f;
        }
        textView.setTextSize(1, f * f2);
    }
}
