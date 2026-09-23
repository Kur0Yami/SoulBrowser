package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.pref.PrefRead;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyCircleView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MainAreaAdapter extends RecyclerView.Adapter<ViewHolder> {
    public ArrayList d;
    public MainAreaListener e;
    public int f;
    public int g;

    /* renamed from: com.mycompany.app.main.MainAreaAdapter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                int width = view.getWidth();
                int height = view.getHeight();
                int i = MainApp.m1;
                outline.setRoundRect(0, 0, width, height + i, i);
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainAreaAdapter$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, -MainApp.m1, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainAreaAdapter$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class AreaItem {

        /* renamed from: a, reason: collision with root package name */
        public int f16450a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f16451c;
        public int d;
        public int e;
        public int f;
        public String g;
        public String h;
        public boolean i;
    }

    /* loaded from: classes3.dex */
    public interface MainAreaListener {
        void a(int i, String str);

        boolean b();

        void c();
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public MyCircleView u;
        public AppCompatTextView v;
        public MyButtonCheck w;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.g;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.d;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        if (v(i) == null) {
            return -1L;
        }
        return r3.f;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        AreaItem v = v(i);
        if (v == null) {
            return 2;
        }
        return v.f16450a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        AreaItem v;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        View view = viewHolder2.f1589a;
        if (view != null && viewHolder2.v != null && (v = v(i)) != null) {
            int i2 = v.f16451c;
            if (i2 == 1) {
                view.setOutlineProvider(new ViewOutlineProvider());
                view.setClipToOutline(true);
            } else if (i2 == 2) {
                view.setOutlineProvider(new ViewOutlineProvider());
                view.setClipToOutline(true);
            } else if (i2 == 3) {
                view.setOutlineProvider(new ViewOutlineProvider());
                view.setClipToOutline(true);
            } else {
                view.setClipToOutline(false);
            }
            view.setPadding(0, v.d, 0, v.e);
            if (PrefRead.J) {
                if (v.f == this.f) {
                    if (view instanceof FrameLayout) {
                        if (viewHolder2.u == null) {
                            MyCircleView myCircleView = new MyCircleView(view.getContext());
                            viewHolder2.u = myCircleView;
                            myCircleView.setColor(-769226);
                            int round = Math.round(MainUtil.G(viewHolder2.u.getContext(), 6.0f));
                            int i3 = round * 2;
                            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(round, round);
                            layoutParams.setMarginStart(i3);
                            layoutParams.topMargin = i3;
                            ((FrameLayout) view).addView(viewHolder2.u, layoutParams);
                        }
                        viewHolder2.u.setVisibility(0);
                    }
                } else {
                    MyCircleView myCircleView2 = viewHolder2.u;
                    if (myCircleView2 != null) {
                        myCircleView2.setVisibility(8);
                    }
                }
            }
            viewHolder2.v.setTag(viewHolder2);
            viewHolder2.v.setText(v.h);
            viewHolder2.v.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainAreaAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ViewHolder viewHolder3;
                    AreaItem v2;
                    Object tag;
                    MainAreaAdapter mainAreaAdapter = MainAreaAdapter.this;
                    MainAreaListener mainAreaListener = mainAreaAdapter.e;
                    if (mainAreaListener != null && !mainAreaListener.b()) {
                        if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof ViewHolder)) {
                            viewHolder3 = null;
                        } else {
                            viewHolder3 = (ViewHolder) tag;
                        }
                        if (viewHolder3 == null || (v2 = mainAreaAdapter.v(viewHolder3.c())) == null) {
                            return;
                        }
                        MyCircleView myCircleView3 = viewHolder3.u;
                        if (myCircleView3 != null && PrefRead.J) {
                            PrefRead.J = false;
                            PrefSet.d(8, myCircleView3.getContext(), "mNotiAre3", PrefRead.J);
                            viewHolder3.u.setVisibility(8);
                        }
                        mainAreaAdapter.e.a(v2.f, v2.h);
                    }
                }
            });
            viewHolder2.w.setTag(viewHolder2);
            viewHolder2.w.q(v.i, false);
            viewHolder2.w.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainAreaAdapter.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ViewHolder viewHolder3;
                    AreaItem v2;
                    MyButtonCheck myButtonCheck;
                    Object tag;
                    MainAreaAdapter mainAreaAdapter = MainAreaAdapter.this;
                    MainAreaListener mainAreaListener = mainAreaAdapter.e;
                    if (mainAreaListener != null && !mainAreaListener.b()) {
                        if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof ViewHolder)) {
                            viewHolder3 = null;
                        } else {
                            viewHolder3 = (ViewHolder) tag;
                        }
                        if (viewHolder3 == null || (v2 = mainAreaAdapter.v(viewHolder3.c())) == null || (myButtonCheck = viewHolder3.w) == null) {
                            return;
                        }
                        boolean z = !v2.i;
                        v2.i = z;
                        myButtonCheck.q(z, true);
                        mainAreaAdapter.e.c();
                    }
                }
            });
            if (MainApp.K1) {
                viewHolder2.v.setTextColor(-328966);
                viewHolder2.v.setBackgroundResource(R.drawable.selector_list_back_dark);
                view.setBackgroundColor(-14606047);
                viewHolder2.w.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
                viewHolder2.w.setBgPreColor(-12632257);
                return;
            }
            viewHolder2.v.setTextColor(-16777216);
            viewHolder2.v.setBackgroundResource(R.drawable.selector_list_back);
            view.setBackgroundColor(-1);
            viewHolder2.w.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
            viewHolder2.w.setBgPreColor(-2039584);
        }
    }

    /* JADX WARN: Type inference failed for: r10v3, types: [com.mycompany.app.main.MainAreaAdapter$ViewHolder, androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        float G;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 2) {
            View view = new View(context);
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.E1));
            return new RecyclerView.ViewHolder(view);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        if (i == 0) {
            G = MainUtil.G(context, 64.0f);
        } else {
            G = MainUtil.G(context, 24.0f);
        }
        appCompatTextView.setPaddingRelative((int) G, 0, (int) MainUtil.G(context, 72.0f), 0);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        frameLayout.addView(appCompatTextView, -1, MainApp.g1);
        if (i == 0) {
            FrameLayout frameLayout2 = new FrameLayout(context);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, MainApp.g1);
            layoutParams.setMarginStart((int) MainUtil.G(context, 14.0f));
            frameLayout.addView(frameLayout2, layoutParams);
            AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
            int G2 = (int) MainUtil.G(context, 6.0f);
            int G3 = (int) MainUtil.G(context, 2.0f);
            appCompatTextView2.setPaddingRelative(G2, G3, G2, G3);
            appCompatTextView2.setTextSize(1, 12.0f);
            appCompatTextView2.setText("TAG");
            appCompatTextView2.setTextColor(-1);
            if (MainApp.K1) {
                appCompatTextView2.setBackgroundColor(-12632257);
            } else {
                appCompatTextView2.setBackgroundColor(-16777216);
            }
            MainUtil.n7(appCompatTextView2);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
            layoutParams2.gravity = 16;
            frameLayout2.addView(appCompatTextView2, layoutParams2);
        }
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        int i2 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2);
        layoutParams3.gravity = 8388613;
        layoutParams3.setMarginEnd(MainApp.F1);
        frameLayout.addView(myButtonCheck, layoutParams3);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.v = appCompatTextView;
        viewHolder.w = myButtonCheck;
        return viewHolder;
    }

    public final AreaItem v(int i) {
        ArrayList arrayList = this.d;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (AreaItem) this.d.get(i);
        }
        return null;
    }

    public final int w() {
        ArrayList arrayList = this.d;
        if (arrayList != null && !arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                AreaItem areaItem = (AreaItem) obj;
                if (areaItem != null && areaItem.f16450a == 1) {
                    return areaItem.f;
                }
            }
            int size2 = arrayList.size();
            while (i < size2) {
                Object obj2 = arrayList.get(i);
                i++;
                AreaItem areaItem2 = (AreaItem) obj2;
                if (areaItem2 != null && areaItem2.f16450a == 0) {
                    return areaItem2.f;
                }
            }
            return -1;
        }
        return -1;
    }
}
