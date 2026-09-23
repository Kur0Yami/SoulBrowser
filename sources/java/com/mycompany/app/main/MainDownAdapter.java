package com.mycompany.app.main;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.impl.workers.a;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.GlideRequests;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyLineRelative;
import com.mycompany.app.view.MyRoundImage;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.util.List;

/* loaded from: classes3.dex */
public class MainDownAdapter extends RecyclerView.Adapter<DownHolder> {
    public MainActivity d;
    public List e;
    public final int f;
    public String g;
    public MainDownListener h;
    public DisplayImageOptions i;
    public GlideRequests j;
    public Handler k;
    public int l;

    /* renamed from: com.mycompany.app.main.MainDownAdapter$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 extends SimpleImageLoadingListener {
        @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
        public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
            DownHolder downHolder;
            Object tag;
            if (viewItem != null) {
                if (view == null || (tag = view.getTag()) == null || !(tag instanceof DownHolder)) {
                    downHolder = null;
                } else {
                    downHolder = (DownHolder) tag;
                }
                if (downHolder != null && downHolder.c() == viewItem.f && MainUtil.f6(bitmap)) {
                    downHolder.v.setImageBitmap(bitmap);
                }
            }
        }
    }

    /* renamed from: com.mycompany.app.main.MainDownAdapter$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass6 extends ViewOutlineProvider {
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

    /* renamed from: com.mycompany.app.main.MainDownAdapter$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass7 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, -MainApp.m1, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class DownHolder extends RecyclerView.ViewHolder {
        public AppCompatTextView A;
        public MyButtonImage B;
        public MyButtonImage C;
        public MyLineRelative u;
        public MyRoundImage v;
        public MyRoundImage w;
        public AppCompatTextView x;
        public AppCompatTextView y;
        public ImageView z;
    }

    /* loaded from: classes3.dex */
    public static class DownListItem {

        /* renamed from: a, reason: collision with root package name */
        public int f16459a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f16460c;
        public final String d;
        public int e;
        public String f;
        public boolean g;
        public boolean h;
        public String i;
        public int j;
        public int k;
        public long l;

        public DownListItem(int i, String str, String str2) {
            this.f16459a = i;
            this.f16460c = str;
            this.d = str2;
        }
    }

    /* loaded from: classes3.dex */
    public interface MainDownListener {
        void a(int i);

        void b(int i);

        void c(int i);
    }

    public MainDownAdapter(MainActivity mainActivity, List list, int i, String str, MainDownListener mainDownListener) {
        this.d = mainActivity;
        this.e = list;
        this.f = i;
        this.g = str;
        this.h = mainDownListener;
    }

    public static int v(MainDownAdapter mainDownAdapter, View view) {
        DownHolder downHolder;
        int i;
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof DownHolder)) {
            downHolder = null;
        } else {
            downHolder = (DownHolder) tag;
        }
        if (downHolder != null && downHolder.f1589a != null) {
            i = downHolder.c();
        } else {
            i = -1;
        }
        DownListItem w = mainDownAdapter.w(i);
        if (w == null) {
            return -1;
        }
        return w.f16459a;
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
        if (w(i) == null) {
            return -1L;
        }
        return r3.f16459a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        DownListItem w = w(i);
        if (w == null) {
            return 0;
        }
        return w.k;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02b7  */
    /* JADX WARN: Type inference failed for: r12v8, types: [com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v16, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r9v8, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(androidx.recyclerview.widget.RecyclerView.ViewHolder r14, int r15) {
        /*
            Method dump skipped, instructions count: 758
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.main.MainDownAdapter.n(androidx.recyclerview.widget.RecyclerView$ViewHolder, int):void");
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.main.MainDownAdapter$DownHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        FrameLayout frameLayout = new FrameLayout(context);
        if (i == 2) {
            frameLayout.setPadding(0, 0, 0, MainApp.E1);
        }
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        int i2 = MainApp.h1;
        MyLineRelative myLineRelative = new MyLineRelative(context);
        myLineRelative.setMinimumHeight(i2);
        myLineRelative.c(MainApp.E1);
        if (i == 1) {
            myLineRelative.setOutlineProvider(new ViewOutlineProvider());
            myLineRelative.setClipToOutline(true);
        } else if (i == 2) {
            myLineRelative.setOutlineProvider(new ViewOutlineProvider());
            myLineRelative.setClipToOutline(true);
        }
        frameLayout.addView(myLineRelative, -1, -2);
        MyRoundImage myRoundImage = new MyRoundImage(context);
        int i3 = R.id.down_item_icon;
        myRoundImage.setId(i3);
        myRoundImage.setScaleType(ImageView.ScaleType.CENTER_CROP);
        myRoundImage.setCircleRadius((int) MainUtil.G(context, 20.0f));
        int i4 = MainApp.f1;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i4);
        layoutParams.addRule(15);
        layoutParams.setMarginStart(MainApp.E1);
        myLineRelative.addView(myRoundImage, layoutParams);
        MyRoundImage myRoundImage2 = new MyRoundImage(context);
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        myRoundImage2.setScaleType(scaleType);
        myRoundImage2.setVisibility(8);
        int i5 = MainApp.f1;
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i5, i5);
        layoutParams2.addRule(15);
        layoutParams2.setMarginStart(MainApp.E1);
        myLineRelative.addView(myRoundImage2, layoutParams2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setGravity(1);
        appCompatTextView.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 72.0f), -2);
        layoutParams3.addRule(15);
        myLineRelative.addView(appCompatTextView, layoutParams3);
        LinearLayout linearLayout = new LinearLayout(context);
        int i6 = R.id.down_item_frame;
        linearLayout.setId(i6);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, i2);
        layoutParams4.addRule(15);
        layoutParams4.addRule(21);
        layoutParams4.setMarginEnd(MainApp.G1);
        myLineRelative.addView(linearLayout, layoutParams4);
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(scaleType);
        imageView.setVisibility(8);
        linearLayout.addView(imageView, new RelativeLayout.LayoutParams(MainApp.g1, i2));
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        appCompatTextView2.setPaddingRelative(MainApp.E1, 0, MainApp.F1, 0);
        appCompatTextView2.setGravity(16);
        appCompatTextView2.setTextSize(1, 16.0f);
        appCompatTextView2.setVisibility(8);
        linearLayout.addView(appCompatTextView2, -2, i2);
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(scaleType);
        linearLayout.addView(myButtonImage, MainApp.g1, i2);
        MyButtonImage myButtonImage2 = new MyButtonImage(context);
        myButtonImage2.setScaleType(scaleType);
        myButtonImage2.setVisibility(8);
        linearLayout.addView(myButtonImage2, MainApp.g1, i2);
        AppCompatTextView appCompatTextView3 = new AppCompatTextView(context, null);
        int i7 = MainApp.F1;
        appCompatTextView3.setPadding(0, i7, 0, i7);
        appCompatTextView3.setMaxLines(2);
        appCompatTextView3.setEllipsize(TextUtils.TruncateAt.END);
        appCompatTextView3.setTextSize(1, 16.0f);
        RelativeLayout.LayoutParams h = a.h(-1, -2, 17, i3);
        h.addRule(16, i6);
        h.addRule(15);
        h.setMarginStart(MainApp.E1);
        myLineRelative.addView(appCompatTextView3, h);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = myLineRelative;
        viewHolder.v = myRoundImage;
        viewHolder.w = myRoundImage2;
        viewHolder.x = appCompatTextView;
        viewHolder.z = imageView;
        viewHolder.A = appCompatTextView2;
        viewHolder.B = myButtonImage;
        viewHolder.C = myButtonImage2;
        viewHolder.y = appCompatTextView3;
        return viewHolder;
    }

    public final DownListItem w(int i) {
        List list = this.e;
        if (list != null && i >= 0 && i < list.size()) {
            return (DownListItem) this.e.get(i);
        }
        return null;
    }

    public final void x() {
        this.l = d();
        if (this.j != null) {
            this.j = null;
        }
        this.d = null;
        this.e = null;
        this.g = null;
        this.h = null;
        this.i = null;
        MainUtil.R6(this.k);
        this.k = null;
    }
}
