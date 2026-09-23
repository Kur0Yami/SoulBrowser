package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyRoundImage;
import java.util.List;

/* loaded from: classes3.dex */
public class MainAppAdapter extends RecyclerView.Adapter<ViewHolder> {
    public MainSelectAdapter.MainSelectListener d;
    public List e;
    public MainListLoader f;
    public int g;

    /* renamed from: com.mycompany.app.main.MainAppAdapter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MainListLoader.ListLoadListener {
        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void a(MainItem.ChildItem childItem, View view) {
        }

        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
            Object tag;
            if (childItem != null && view != null && (tag = view.getTag()) != null && (tag instanceof Integer) && ((Integer) tag).intValue() == childItem.J && (view instanceof MyRoundImage)) {
                ((MyRoundImage) view).setImageBitmap(bitmap);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public FrameLayout u;
        public MyRoundImage v;
        public AppCompatTextView w;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.main.MainListLoader$ListLoadListener, java.lang.Object] */
    public MainAppAdapter(Context context, MainSelectAdapter.MainSelectListener mainSelectListener) {
        this.d = mainSelectListener;
        this.f = new MainListLoader(context, false, new Object());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.g;
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
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        List list;
        MainItem.ChildItem childItem;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        if (viewHolder2.f1589a != null && (list = this.e) != null && i >= 0 && i < list.size() && (childItem = (MainItem.ChildItem) this.e.get(i)) != null && childItem.g != null) {
            viewHolder2.u.setTag(Integer.valueOf(i));
            viewHolder2.v.setTag(Integer.valueOf(i));
            viewHolder2.w.setText(childItem.h);
            viewHolder2.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainAppAdapter.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    Object tag;
                    MainSelectAdapter.MainSelectListener mainSelectListener;
                    if (view != null && (tag = view.getTag()) != null && (tag instanceof Integer) && (mainSelectListener = MainAppAdapter.this.d) != null) {
                        mainSelectListener.a(((Integer) tag).intValue());
                    }
                }
            });
            if (MainApp.K1) {
                viewHolder2.u.setBackgroundResource(R.drawable.selector_normal_dark);
                viewHolder2.w.setTextColor(-328966);
            } else {
                viewHolder2.u.setBackgroundResource(R.drawable.selector_normal);
                viewHolder2.w.setTextColor(-16777216);
            }
            MyRoundImage myRoundImage = viewHolder2.v;
            if (myRoundImage != null && this.f != null) {
                if (TextUtils.isEmpty(childItem.g)) {
                    myRoundImage.o(-460552, R.drawable.outline_android_black_24);
                    return;
                }
                ?? obj = new Object();
                obj.f16551c = 6;
                obj.S = childItem.S;
                obj.J = i;
                obj.g = childItem.g;
                Bitmap b = MainListLoader.b(obj);
                if (MainUtil.f6(b)) {
                    myRoundImage.setImageBitmap(b);
                } else {
                    myRoundImage.o(-460552, R.drawable.outline_android_black_24);
                    this.f.e(obj, myRoundImage);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainAppAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        int i2 = MainApp.F1;
        frameLayout.setPadding(i2, 0, i2, MainApp.E1);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        MyRoundImage myRoundImage = new MyRoundImage(context);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setRoundRadius(MainApp.G1);
        myRoundImage.setCircleRadius(MainApp.E1);
        int i3 = MainApp.g1;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 1;
        layoutParams.topMargin = MainApp.E1;
        frameLayout.addView(myRoundImage, layoutParams);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setGravity(1);
        appCompatTextView.setMaxLines(2);
        appCompatTextView.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView.setTextSize(1, 14.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = (int) MainUtil.G(context, 72.0f);
        frameLayout.addView(appCompatTextView, layoutParams2);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = frameLayout;
        viewHolder.v = myRoundImage;
        viewHolder.w = appCompatTextView;
        return viewHolder;
    }
}
