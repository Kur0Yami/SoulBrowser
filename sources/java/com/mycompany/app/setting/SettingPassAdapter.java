package com.mycompany.app.setting;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class SettingPassAdapter extends RecyclerView.Adapter<PassListHolder> {
    public List d;
    public PassListListener e;
    public MainListLoader f;
    public Pattern g;
    public int h;

    /* loaded from: classes3.dex */
    public static class PassListHolder extends RecyclerView.ViewHolder {
        public MyLineFrame u;
        public MyRoundImage v;
        public AppCompatTextView w;
        public AppCompatTextView x;
        public MyButtonImage y;
        public ImageView z;
    }

    /* loaded from: classes3.dex */
    public interface PassListListener {
        void a(int i, MainItem.ChildItem childItem, boolean z);
    }

    public static int v(SettingPassAdapter settingPassAdapter, View view) {
        Object tag;
        PassListHolder passListHolder = null;
        if (view != null && (tag = view.getTag()) != null && (tag instanceof PassListHolder)) {
            passListHolder = (PassListHolder) tag;
        }
        if (passListHolder != null && passListHolder.f1589a != null) {
            return passListHolder.c();
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.h;
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
        List list = this.d;
        if (list == null || i < 0 || i >= list.size() || i != this.d.size() - 1) {
            return 0;
        }
        return 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v17, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        List list;
        MainItem.ChildItem childItem;
        PassListHolder passListHolder = (PassListHolder) viewHolder;
        if (passListHolder.f1589a != null && (list = this.d) != null && i >= 0 && i < list.size() && (childItem = (MainItem.ChildItem) this.d.get(i)) != null) {
            if (passListHolder.z != null) {
                if (this.d.size() <= 10) {
                    passListHolder.z.setVisibility(4);
                    return;
                }
                passListHolder.z.setVisibility(0);
                if (MainApp.K1) {
                    passListHolder.z.setImageResource(R.drawable.outline_list_footer_dark_24);
                    passListHolder.z.setBackgroundResource(R.drawable.selector_normal_dark);
                } else {
                    passListHolder.z.setImageResource(R.drawable.outline_list_footer_black_24);
                    passListHolder.z.setBackgroundResource(R.drawable.selector_normal);
                }
                passListHolder.z.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassAdapter.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MyRecyclerView myRecyclerView;
                        PassListListener passListListener = SettingPassAdapter.this.e;
                        if (passListListener != null && (myRecyclerView = SettingPassList.this.L1) != null) {
                            myRecyclerView.i0(0);
                        }
                    }
                });
                return;
            }
            MyLineFrame myLineFrame = passListHolder.u;
            if (myLineFrame != null) {
                myLineFrame.setTag(passListHolder);
                passListHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassAdapter.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainItem.ChildItem childItem2;
                        PassListListener passListListener;
                        SettingPassAdapter settingPassAdapter = SettingPassAdapter.this;
                        int v = SettingPassAdapter.v(settingPassAdapter, view);
                        if (settingPassAdapter.d != null && v >= 0 && v < r1.size() - 1 && (childItem2 = (MainItem.ChildItem) settingPassAdapter.d.get(v)) != null && (passListListener = settingPassAdapter.e) != null) {
                            passListListener.a(v, childItem2, false);
                        }
                    }
                });
                passListHolder.w.setText(childItem.g);
                passListHolder.x.setText(childItem.q);
                passListHolder.y.setTag(passListHolder);
                passListHolder.y.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingPassAdapter.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainItem.ChildItem childItem2;
                        PassListListener passListListener;
                        SettingPassAdapter settingPassAdapter = SettingPassAdapter.this;
                        int v = SettingPassAdapter.v(settingPassAdapter, view);
                        List list2 = settingPassAdapter.d;
                        if (list2 != null && v >= 0 && v < list2.size() - 1 && (childItem2 = (MainItem.ChildItem) settingPassAdapter.d.get(v)) != null && (passListListener = settingPassAdapter.e) != null) {
                            passListListener.a(v, childItem2, true);
                        }
                    }
                });
                if (MainApp.K1) {
                    passListHolder.u.setBackgroundResource(R.drawable.selector_normal_dark);
                    passListHolder.w.setTextColor(-328966);
                    passListHolder.x.setTextColor(-4079167);
                    passListHolder.y.setImageResource(R.drawable.outline_close_dark_18);
                    passListHolder.y.setBgPreColor(-12632257);
                } else {
                    passListHolder.u.setBackgroundResource(R.drawable.selector_normal);
                    passListHolder.w.setTextColor(-16777216);
                    passListHolder.x.setTextColor(-10395295);
                    passListHolder.y.setImageResource(R.drawable.outline_close_black_18);
                    passListHolder.y.setBgPreColor(-2039584);
                }
                passListHolder.v.setTag(passListHolder);
                MyRoundImage myRoundImage = passListHolder.v;
                if (myRoundImage != null && this.f != null) {
                    if (TextUtils.isEmpty(childItem.g)) {
                        int i2 = R.drawable.outline_public_black_24;
                        String str = childItem.g;
                        if (this.g == null) {
                            this.g = Pattern.compile("\\p{Punct}");
                        }
                        myRoundImage.p(-460552, i2, str, this.g);
                        return;
                    }
                    ?? obj = new Object();
                    obj.f16550a = childItem.f16550a;
                    obj.f16551c = 11;
                    obj.g = childItem.g;
                    obj.z = childItem.g;
                    obj.y = childItem.y;
                    obj.J = i;
                    Bitmap b = MainListLoader.b(obj);
                    if (MainUtil.f6(b)) {
                        myRoundImage.r(childItem.g, false);
                        myRoundImage.setImageBitmap(b);
                        return;
                    }
                    int i3 = R.drawable.outline_public_black_24;
                    String str2 = childItem.g;
                    if (this.g == null) {
                        this.g = Pattern.compile("\\p{Punct}");
                    }
                    myRoundImage.p(-460552, i3, str2, this.g);
                    this.f.e(obj, myRoundImage);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [com.mycompany.app.setting.SettingPassAdapter$PassListHolder, androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    /* JADX WARN: Type inference failed for: r9v7, types: [com.mycompany.app.setting.SettingPassAdapter$PassListHolder, androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 1) {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setLayoutParams(new AbsListView.LayoutParams(-1, MainApp.i1));
            ?? viewHolder = new RecyclerView.ViewHolder(imageView);
            viewHolder.z = imageView;
            return viewHolder;
        }
        MyLineFrame myLineFrame = new MyLineFrame(context);
        myLineFrame.a(MainApp.E1);
        myLineFrame.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        MyRoundImage myRoundImage = new MyRoundImage(context);
        int G = (int) MainUtil.G(context, 24.0f);
        int i2 = G / 2;
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setRoundRadius(MainApp.G1);
        myRoundImage.setCircleRadius(i2);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
        layoutParams.topMargin = i2;
        layoutParams.setMarginStart(i2);
        myLineFrame.addView(myRoundImage, layoutParams);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        int i3 = MainApp.F1;
        relativeLayout.setPadding(0, i3, 0, i3);
        relativeLayout.setGravity(16);
        relativeLayout.setMinimumHeight(MainApp.h1);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 8388627;
        layoutParams2.setMarginStart(MainApp.h1);
        layoutParams2.setMarginEnd(MainApp.g1);
        myLineFrame.addView(relativeLayout, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i4 = R.id.pass_item_name;
        appCompatTextView.setId(i4);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        relativeLayout.addView(appCompatTextView, -2, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 14.0f);
        RelativeLayout.LayoutParams h = a.h(-2, -2, 3, i4);
        h.topMargin = MainApp.G1;
        relativeLayout.addView(appCompatTextView2, h);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int i5 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i5, i5);
        layoutParams3.gravity = 8388613;
        layoutParams3.topMargin = MainApp.F1;
        myLineFrame.addView(myButtonImage, layoutParams3);
        ?? viewHolder2 = new RecyclerView.ViewHolder(myLineFrame);
        viewHolder2.u = myLineFrame;
        viewHolder2.v = myRoundImage;
        viewHolder2.w = appCompatTextView;
        viewHolder2.x = appCompatTextView2;
        viewHolder2.y = myButtonImage;
        return viewHolder2;
    }

    public final int w() {
        int size;
        if (this.d == null || r0.size() - 1 < 0) {
            return 0;
        }
        return size;
    }
}
