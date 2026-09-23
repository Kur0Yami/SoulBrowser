package com.mycompany.app.main;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyCircleView;

/* loaded from: classes3.dex */
public class NewsMenuAdapter extends RecyclerView.Adapter<ListHolder> {
    public static final int[] f = {R.string.news_topic_headline, R.string.news_topic_world, R.string.news_topic_nation, R.string.news_topic_business, R.string.news_topic_tech, R.string.news_topic_enter, R.string.news_topic_sports, R.string.news_topic_science, R.string.news_topic_health, R.string.search_url};
    public static final int[] g = {R.drawable.outline_newspaper_black_24, R.drawable.outline_public_black_24, R.drawable.outline_travel_explore_black_24, R.drawable.outline_monitoring_black_24, R.drawable.outline_rocket_launch_black_24, R.drawable.outline_movie_filter_black_24, R.drawable.outline_sports_handball_black_24, R.drawable.outline_biotech_black_24, R.drawable.outline_cardiology_black_24, R.drawable.outline_search_black_24};
    public static final int[] h = {R.drawable.outline_newspaper_dark_24, R.drawable.outline_public_dark_24, R.drawable.outline_travel_explore_dark_24, R.drawable.outline_monitoring_dark_24, R.drawable.outline_rocket_launch_dark_24, R.drawable.outline_movie_filter_dark_24, R.drawable.outline_sports_handball_dark_24, R.drawable.outline_biotech_dark_24, R.drawable.outline_cardiology_dark_24, R.drawable.outline_search_dark_24};
    public static final int[] i = {R.drawable.outline_newspaper_white_24, R.drawable.outline_public_white_24, R.drawable.outline_travel_explore_white_24, R.drawable.outline_monitoring_white_24, R.drawable.outline_rocket_launch_white_24, R.drawable.outline_movie_filter_white_24, R.drawable.outline_sports_handball_white_24, R.drawable.outline_biotech_white_24, R.drawable.outline_cardiology_white_24, R.drawable.outline_search_white_24};
    public static final int[] j = {-65536, -3862174, -10354454, -14064897, -16729900, -16725933, -8227049, -37120, -2282496, -9079435};
    public int d;
    public SettingListAdapter.SettingListener e;

    /* loaded from: classes3.dex */
    public static class ListHolder extends RecyclerView.ViewHolder {
        public MyCircleView u;
        public View v;
        public AppCompatTextView w;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        return 10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i2) {
        if (i2 >= 0 && i2 < 10) {
            return f[i2];
        }
        return -1L;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i2) {
        int i3;
        int i4;
        int i5;
        ListHolder listHolder = (ListHolder) viewHolder;
        int i6 = this.d;
        View view = listHolder.f1589a;
        if (view == null) {
            return;
        }
        view.setTag(listHolder);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.NewsMenuAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ListHolder listHolder2;
                Object tag = view2.getTag();
                if (tag != null && (tag instanceof ListHolder)) {
                    listHolder2 = (ListHolder) tag;
                } else {
                    listHolder2 = null;
                }
                if (listHolder2 != null && listHolder2.f1589a != null) {
                    int c2 = listHolder2.c();
                    SettingListAdapter.SettingListener settingListener = NewsMenuAdapter.this.e;
                    if (settingListener != null) {
                        settingListener.a(null, c2, false, 0);
                    }
                }
            }
        });
        if (i2 == PrefZtwo.Q) {
            MyCircleView myCircleView = listHolder.u;
            int[] iArr = j;
            if (i2 >= 0 && i2 < 10) {
                i5 = iArr[i2];
            } else {
                i5 = iArr[0];
            }
            myCircleView.setColor(i5);
            listHolder.u.setVisibility(0);
        } else {
            listHolder.u.setVisibility(8);
        }
        View view2 = listHolder.v;
        if (i2 == PrefZtwo.Q) {
            int[] iArr2 = i;
            if (i2 >= 0 && i2 < 10) {
                i3 = iArr2[i2];
            } else {
                i3 = iArr2[0];
            }
        } else if (i6 == 0) {
            int[] iArr3 = g;
            if (i2 >= 0 && i2 < 10) {
                i3 = iArr3[i2];
            } else {
                i3 = iArr3[0];
            }
        } else {
            int[] iArr4 = h;
            if (i2 >= 0 && i2 < 10) {
                i3 = iArr4[i2];
            } else {
                i3 = iArr4[0];
            }
        }
        view2.setBackgroundResource(i3);
        AppCompatTextView appCompatTextView = listHolder.w;
        int[] iArr5 = f;
        if (i2 >= 0 && i2 < 10) {
            i4 = iArr5[i2];
        } else {
            i4 = iArr5[0];
        }
        appCompatTextView.setText(i4);
        if (i6 == 0) {
            view.setBackgroundResource(R.drawable.selector_normal);
            listHolder.w.setTextColor(-16777216);
        } else {
            view.setBackgroundResource(R.drawable.selector_normal_dark);
            listHolder.w.setTextColor(-328966);
        }
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.NewsMenuAdapter$ListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i2) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setPaddingRelative(0, 0, MainApp.F1, 0);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MainUtil.G(context, 52.0f)));
        MyCircleView myCircleView = new MyCircleView(context);
        int G = (int) MainUtil.G(context, 32.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
        int G2 = (int) MainUtil.G(context, 10.0f);
        layoutParams.topMargin = G2;
        layoutParams.setMarginStart(G2);
        frameLayout.addView(myCircleView, layoutParams);
        View view = new View(context);
        int G3 = (int) MainUtil.G(context, 20.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(G3, G3);
        int i3 = MainApp.E1;
        layoutParams2.topMargin = i3;
        layoutParams2.setMarginStart(i3);
        frameLayout.addView(view, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setGravity(16);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -1);
        layoutParams3.setMarginStart((int) MainUtil.G(context, 52.0f));
        frameLayout.addView(appCompatTextView, layoutParams3);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = myCircleView;
        viewHolder.v = view;
        viewHolder.w = appCompatTextView;
        return viewHolder;
    }
}
