package com.mycompany.app.gdrive;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyRoundImage;
import java.util.List;

/* loaded from: classes3.dex */
public class GdriveAdapter extends RecyclerView.Adapter<GdriveHolder> {
    public List d;
    public GdriveListener e;
    public int f;

    /* loaded from: classes3.dex */
    public static class GdriveHolder extends RecyclerView.ViewHolder {
        public MyLineRelative u;
        public MyRoundImage v;
        public AppCompatTextView w;
        public AppCompatTextView x;
        public AppCompatTextView y;
        public MyButtonImage z;
    }

    /* loaded from: classes3.dex */
    public interface GdriveListener {
        void a(String str, boolean z);

        void b(int i, MainItem.ChildItem childItem);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.f;
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
        return 0L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        MainItem.ChildItem v = v(i);
        if (v == null) {
            return 0;
        }
        return v.b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        MainItem.ChildItem v;
        GdriveHolder gdriveHolder = (GdriveHolder) viewHolder;
        View view = gdriveHolder.f1589a;
        if (view != null && (v = v(i)) != null) {
            if (v.b == 2 && (view instanceof ImageView)) {
                if (MainApp.K1) {
                    ((ImageView) view).setImageResource(R.drawable.outline_list_footer_dark_24);
                } else {
                    ((ImageView) view).setImageResource(R.drawable.outline_list_footer_black_24);
                }
            }
            if (MainApp.K1) {
                view.setBackgroundResource(R.drawable.selector_normal_dark);
            } else {
                view.setBackgroundResource(R.drawable.selector_normal);
            }
            view.setTag(gdriveHolder);
            view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.gdrive.GdriveAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    GdriveHolder gdriveHolder2;
                    GdriveListener gdriveListener;
                    Object tag = view2.getTag();
                    if (tag != null && (tag instanceof GdriveHolder)) {
                        gdriveHolder2 = (GdriveHolder) tag;
                    } else {
                        gdriveHolder2 = null;
                    }
                    if (gdriveHolder2 != null && gdriveHolder2.f1589a != null) {
                        int c2 = gdriveHolder2.c();
                        GdriveAdapter gdriveAdapter = GdriveAdapter.this;
                        MainItem.ChildItem v2 = gdriveAdapter.v(c2);
                        if (v2 != null && (gdriveListener = gdriveAdapter.e) != null) {
                            gdriveListener.a(v2.g, v2.k);
                        }
                    }
                }
            });
            if (gdriveHolder.u == null) {
                return;
            }
            if (v.k) {
                if (v.b == 1) {
                    gdriveHolder.v.o(0, R.drawable.outline_shift_2_black_24);
                } else {
                    gdriveHolder.v.o(0, R.drawable.outline_folder_black_24);
                }
                gdriveHolder.x.setVisibility(8);
                gdriveHolder.y.setVisibility(8);
                gdriveHolder.z.setVisibility(8);
                gdriveHolder.z.setTag(null);
                gdriveHolder.z.setOnClickListener(null);
            } else {
                if (PrefUtil.a(43)) {
                    gdriveHolder.x.setText(v.F);
                    gdriveHolder.y.setText(v.G);
                    gdriveHolder.x.setVisibility(0);
                    gdriveHolder.y.setVisibility(0);
                } else {
                    gdriveHolder.x.setVisibility(8);
                    gdriveHolder.y.setVisibility(8);
                }
                gdriveHolder.v.o(v.v, v.w);
                gdriveHolder.z.setVisibility(0);
                gdriveHolder.z.setTag(gdriveHolder);
                gdriveHolder.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.gdrive.GdriveAdapter.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        GdriveHolder gdriveHolder2;
                        int c2;
                        GdriveAdapter gdriveAdapter;
                        MainItem.ChildItem v2;
                        GdriveListener gdriveListener;
                        Object tag = view2.getTag();
                        if (tag != null && (tag instanceof GdriveHolder)) {
                            gdriveHolder2 = (GdriveHolder) tag;
                        } else {
                            gdriveHolder2 = null;
                        }
                        if (gdriveHolder2 != null && gdriveHolder2.f1589a != null && (v2 = (gdriveAdapter = GdriveAdapter.this).v((c2 = gdriveHolder2.c()))) != null && (gdriveListener = gdriveAdapter.e) != null) {
                            gdriveListener.b(c2, v2);
                        }
                    }
                });
            }
            gdriveHolder.w.setSingleLine(PrefUtil.c(43));
            gdriveHolder.w.setText(v.h);
            if (MainApp.K1) {
                gdriveHolder.w.setTextColor(-328966);
                gdriveHolder.x.setTextColor(-4079167);
                gdriveHolder.y.setTextColor(-4079167);
                gdriveHolder.z.setImageResource(R.drawable.outline_close_dark_18);
                gdriveHolder.z.setBgPreColor(-12632257);
                return;
            }
            gdriveHolder.w.setTextColor(-16777216);
            gdriveHolder.x.setTextColor(-10395295);
            gdriveHolder.y.setTextColor(-10395295);
            gdriveHolder.z.setImageResource(R.drawable.outline_close_black_18);
            gdriveHolder.z.setBgPreColor(-2039584);
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.gdrive.GdriveAdapter$GdriveHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 2) {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.i1));
            return new RecyclerView.ViewHolder(imageView);
        }
        MyLineRelative myLineRelative = new MyLineRelative(context);
        myLineRelative.b(MainApp.E1);
        myLineRelative.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(context);
        int i2 = MainApp.h1;
        myLineRelative.addView(frameLayout, i2, i2);
        MyRoundImage myRoundImage = new MyRoundImage(context);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        int G = (int) MainUtil.G(context, 24.0f);
        myRoundImage.setCircleRadius(G / 2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
        layoutParams.gravity = 17;
        frameLayout.addView(myRoundImage, layoutParams);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        int i3 = R.id.gdrive_item_delete;
        myButtonImage.setId(i3);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int i4 = MainApp.g1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams2.addRule(15);
        layoutParams2.addRule(21);
        myLineRelative.addView(myButtonImage, layoutParams2);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        int i5 = MainApp.F1;
        relativeLayout.setPadding(0, i5, 0, i5);
        relativeLayout.setGravity(16);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(16, i3);
        layoutParams3.addRule(15);
        layoutParams3.setMarginStart(MainApp.h1);
        layoutParams3.setMarginEnd(MainApp.F1);
        myLineRelative.addView(relativeLayout, layoutParams3);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i6 = R.id.gdrive_item_name;
        appCompatTextView.setId(i6);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        relativeLayout.addView(appCompatTextView, -2, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        int i7 = R.id.gdrive_item_date;
        appCompatTextView2.setId(i7);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 14.0f);
        RelativeLayout.LayoutParams h = a.h(-2, -2, 3, i6);
        h.topMargin = MainApp.G1;
        relativeLayout.addView(appCompatTextView2, h);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        appCompatTextView3.setSingleLine(true);
        appCompatTextView3.setTextSize(1, 14.0f);
        RelativeLayout.LayoutParams h2 = a.h(-2, -2, 3, i6);
        h2.addRule(17, i7);
        h2.topMargin = MainApp.G1;
        h2.setMarginStart(MainApp.E1);
        relativeLayout.addView(appCompatTextView3, h2);
        ?? viewHolder = new RecyclerView.ViewHolder(myLineRelative);
        viewHolder.u = myLineRelative;
        viewHolder.v = myRoundImage;
        viewHolder.w = appCompatTextView;
        viewHolder.x = appCompatTextView2;
        viewHolder.y = appCompatTextView3;
        viewHolder.z = myButtonImage;
        return viewHolder;
    }

    public final MainItem.ChildItem v(int i) {
        List list = this.d;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainItem.ChildItem) this.d.get(i);
        }
        return null;
    }
}
