package com.mycompany.app.quick;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRoundImage;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class QuickAddAdapter extends RecyclerView.Adapter<QuickListHolder> {
    public List d;
    public QuickListListener e;
    public MainListLoader f;
    public Pattern g;
    public int h;

    /* loaded from: classes3.dex */
    public static class QuickListHolder extends RecyclerView.ViewHolder {
        public MyLineFrame u;
        public MyRoundImage v;
        public AppCompatTextView w;
        public AppCompatTextView x;
    }

    /* loaded from: classes3.dex */
    public interface QuickListListener {
        void a(String str, String str2, boolean z);
    }

    public QuickAddAdapter(Context context, QuickListListener quickListListener) {
        this.e = quickListListener;
        this.f = new MainListLoader(context, false, new MainListLoader.ListLoadListener() { // from class: com.mycompany.app.quick.QuickAddAdapter.1
            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void a(MainItem.ChildItem childItem, View view) {
            }

            @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
            public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
                if (childItem != null && view != null && QuickAddAdapter.v(QuickAddAdapter.this, view) == childItem.J) {
                    MyRoundImage myRoundImage = (MyRoundImage) view;
                    myRoundImage.r(childItem.g, true);
                    myRoundImage.setImageBitmap(bitmap);
                }
            }
        });
    }

    public static int v(QuickAddAdapter quickAddAdapter, View view) {
        Object tag;
        QuickListHolder quickListHolder = null;
        if (view != null && (tag = view.getTag()) != null && (tag instanceof QuickListHolder)) {
            quickListHolder = (QuickListHolder) tag;
        }
        if (quickListHolder != null && quickListHolder.f1589a != null) {
            return quickListHolder.c();
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v16, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        MainItem.ChildItem childItem;
        QuickListHolder quickListHolder = (QuickListHolder) viewHolder;
        if (quickListHolder.f1589a != null && quickListHolder.u != null) {
            List list = this.d;
            if (list != null && i >= 0 && i < list.size()) {
                childItem = (MainItem.ChildItem) this.d.get(i);
            } else {
                childItem = null;
            }
            if (childItem != null) {
                quickListHolder.u.setTag(quickListHolder);
                quickListHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.quick.QuickAddAdapter.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        MainItem.ChildItem childItem2;
                        QuickAddAdapter quickAddAdapter = QuickAddAdapter.this;
                        if (quickAddAdapter.e != null) {
                            int v = QuickAddAdapter.v(quickAddAdapter, view);
                            List list2 = quickAddAdapter.d;
                            if (list2 != null && v >= 0 && v < list2.size()) {
                                childItem2 = (MainItem.ChildItem) quickAddAdapter.d.get(v);
                            } else {
                                childItem2 = null;
                            }
                            if (childItem2 == null) {
                                return;
                            }
                            quickAddAdapter.e.a(childItem2.h, childItem2.g, childItem2.k);
                        }
                    }
                });
                quickListHolder.w.setText(childItem.h);
                if (childItem.k) {
                    quickListHolder.x.setVisibility(8);
                } else {
                    quickListHolder.x.setText(childItem.g);
                    quickListHolder.x.setVisibility(0);
                }
                if (MainApp.K1) {
                    quickListHolder.u.setBackgroundResource(R.drawable.selector_normal_dark);
                    quickListHolder.w.setTextColor(-328966);
                    quickListHolder.x.setTextColor(-4079167);
                } else {
                    quickListHolder.u.setBackgroundResource(R.drawable.selector_normal);
                    quickListHolder.w.setTextColor(-16777216);
                    quickListHolder.x.setTextColor(-10395295);
                }
                quickListHolder.u.h();
                quickListHolder.v.setTag(quickListHolder);
                MyRoundImage myRoundImage = quickListHolder.v;
                if (myRoundImage != null && this.f != null) {
                    if (childItem.k) {
                        if (childItem.b == 1) {
                            myRoundImage.o(0, R.drawable.outline_shift_2_black_24);
                            return;
                        } else {
                            myRoundImage.o(0, R.drawable.outline_folder_black_24);
                            return;
                        }
                    }
                    if (TextUtils.isEmpty(childItem.g)) {
                        int i2 = R.drawable.outline_public_black_24;
                        String str = childItem.h;
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
                    obj.h = childItem.h;
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
                    String str2 = childItem.h;
                    if (this.g == null) {
                        this.g = Pattern.compile("\\p{Punct}");
                    }
                    myRoundImage.p(-460552, i3, str2, this.g);
                    this.f.e(obj, myRoundImage);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.quick.QuickAddAdapter$QuickListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        MyLineFrame myLineFrame = new MyLineFrame(context);
        myLineFrame.a(MainApp.E1);
        myLineFrame.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        FrameLayout frameLayout = new FrameLayout(context);
        int i2 = MainApp.h1;
        myLineFrame.addView(frameLayout, i2, i2);
        MyRoundImage myRoundImage = new MyRoundImage(context);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setRoundRadius(MainApp.G1);
        myRoundImage.setCircleRadius((int) MainUtil.G(context, 12.0f));
        int G = (int) MainUtil.G(context, 24.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
        layoutParams.gravity = 17;
        frameLayout.addView(myRoundImage, layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        int i3 = MainApp.F1;
        linearLayout.setPadding(0, i3, 0, i3);
        linearLayout.setOrientation(1);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 8388627;
        layoutParams2.setMarginStart(MainApp.h1);
        layoutParams2.setMarginEnd(MainApp.E1);
        myLineFrame.addView(linearLayout, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 16.0f);
        linearLayout.addView(appCompatTextView, -2, -2);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 14.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.topMargin = MainApp.G1;
        linearLayout.addView(appCompatTextView2, layoutParams3);
        ?? viewHolder = new RecyclerView.ViewHolder(myLineFrame);
        viewHolder.u = myLineFrame;
        viewHolder.v = myRoundImage;
        viewHolder.w = appCompatTextView;
        viewHolder.x = appCompatTextView2;
        return viewHolder;
    }

    public final void w() {
        this.h = d();
        MainListLoader mainListLoader = this.f;
        if (mainListLoader != null) {
            mainListLoader.f();
            this.f = null;
        }
        this.d = null;
        this.e = null;
        this.g = null;
    }

    public final void x(List list) {
        MainListLoader mainListLoader = this.f;
        if (mainListLoader != null) {
            mainListLoader.f16599c = null;
        }
        this.d = list;
        g();
    }
}
