package com.mycompany.app.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.image.ImageViewControl;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainListLoader;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyThumbView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;

/* loaded from: classes3.dex */
public class ImageThumbAdapter extends RecyclerView.Adapter<ViewHolder> {
    public Context d;
    public MyRecyclerView e;
    public int f;
    public int g;
    public Compress h;
    public int i;
    public MainListLoader j;
    public DisplayImageOptions k;
    public boolean l;
    public ThumbListener m;
    public int n;

    /* renamed from: com.mycompany.app.image.ImageThumbAdapter$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements MainListLoader.ListLoadListener {
        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void a(MainItem.ChildItem childItem, View view) {
            Object tag;
            if (childItem != null && view != null && (tag = view.getTag()) != null && (tag instanceof Integer) && ((Integer) tag).intValue() == childItem.J) {
                ((MyThumbView) view).setImageResource(R.drawable.outline_error_dark_web_24);
            }
        }

        @Override // com.mycompany.app.main.MainListLoader.ListLoadListener
        public final void b(MainItem.ChildItem childItem, View view, Bitmap bitmap) {
            Object tag;
            if (childItem != null && view != null && (tag = view.getTag()) != null && (tag instanceof Integer) && ((Integer) tag).intValue() == childItem.J) {
                MyThumbView myThumbView = (MyThumbView) view;
                if (MainUtil.f6(bitmap)) {
                    myThumbView.setImageBitmap(bitmap);
                } else {
                    myThumbView.setImageResource(R.drawable.outline_error_dark_web_24);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface ThumbListener {
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public MyThumbView u;
        public AppCompatTextView v;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.n;
        if (i != 0) {
            return i;
        }
        Compress compress = this.h;
        if (compress == null) {
            return 0;
        }
        return compress.R();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        return 0L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        Compress compress;
        int i2;
        int i3;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        if (viewHolder2.f1589a != null && (compress = this.h) != null) {
            if (PrefImage.s) {
                i2 = (compress.R() - i) - 1;
            } else {
                i2 = i;
            }
            viewHolder2.v.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + (i2 + 1));
            AppCompatTextView appCompatTextView = viewHolder2.v;
            if (i == this.i) {
                i3 = -769226;
            } else {
                i3 = -14606047;
            }
            appCompatTextView.setBackgroundColor(i3);
            viewHolder2.u.setTag(Integer.valueOf(i2));
            viewHolder2.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.image.ImageThumbAdapter.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ThumbListener thumbListener = ImageThumbAdapter.this.m;
                    if (thumbListener != null) {
                        int intValue = ((Integer) view.getTag()).intValue();
                        ImageViewControl.ControlListener controlListener = ImageViewControl.this.C;
                        if (controlListener != null) {
                            controlListener.h(intValue);
                        }
                    }
                }
            });
            if (this.l) {
                viewHolder2.u.setImageDrawable(null);
                return;
            }
            if (this.f == 12) {
                w(viewHolder2.u, i2);
                return;
            }
            if (this.j == null) {
                viewHolder2.u.setImageResource(R.drawable.outline_error_dark_web_24);
                return;
            }
            Compress compress2 = this.h;
            compress2.getClass();
            ?? obj = new Object();
            obj.f16551c = 8;
            obj.g = compress2.n(i2);
            obj.r = compress2.f12868c;
            obj.J = i2;
            obj.P = compress2;
            Bitmap b = MainListLoader.b(obj);
            if (MainUtil.f6(b)) {
                viewHolder2.u.setImageBitmap(b);
            } else {
                viewHolder2.u.setImageDrawable(null);
                this.j.e(obj, viewHolder2.u);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r6v7, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.image.ImageThumbAdapter$ViewHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        int G = (int) MainUtil.G(context, 64.0f);
        int G2 = (int) MainUtil.G(context, 82.0f);
        FrameLayout frameLayout = new FrameLayout(context);
        int i2 = MainApp.G1;
        frameLayout.setPadding(i2, i2, i2, i2);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(G, G2));
        View view = new View(context);
        view.setBackgroundColor(-14606047);
        int i3 = MainApp.h1;
        frameLayout.addView(view, i3, i3);
        MyThumbView myThumbView = new MyThumbView(context);
        frameLayout.addView(myThumbView, i3, i3);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setGravity(17);
        appCompatTextView.setTextDirection(3);
        appCompatTextView.setMinHeight((int) MainUtil.G(context, 18.0f));
        appCompatTextView.setTextSize(1, 14.0f);
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setBackgroundColor(-14606047);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, -2);
        layoutParams.gravity = 8388691;
        frameLayout.addView(appCompatTextView, layoutParams);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = myThumbView;
        viewHolder.v = appCompatTextView;
        return viewHolder;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.mycompany.app.main.MainListLoader$ListLoadListener, java.lang.Object] */
    public final void v() {
        if (this.h != null) {
            if (this.f == 12) {
                MainListLoader mainListLoader = this.j;
                if (mainListLoader != null) {
                    mainListLoader.f();
                    this.j = null;
                }
                if (this.k == null) {
                    DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
                    builder.f20960a = true;
                    builder.b = true;
                    Bitmap.Config config = Bitmap.Config.RGB_565;
                    builder.a();
                    builder.f = new Object();
                    this.k = new DisplayImageOptions(builder);
                    return;
                }
                return;
            }
            this.k = null;
            if (this.j != null) {
                return;
            }
            this.j = new MainListLoader(this.d, true, new Object());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final void w(MyThumbView myThumbView, int i) {
        Compress compress = this.h;
        if (compress != null && myThumbView != null) {
            String n = compress.n(i);
            if (this.g != 0 && !URLUtil.isNetworkUrl(n)) {
                myThumbView.setImageDrawable(null);
                return;
            }
            if (TextUtils.isEmpty(n)) {
                myThumbView.setImageResource(R.drawable.outline_error_dark_web_24);
                return;
            }
            Bitmap f = this.h.f(n, 2, false);
            if (MainUtil.f6(f)) {
                myThumbView.setImageBitmap(f);
                return;
            }
            myThumbView.setImageDrawable(null);
            ?? obj = new Object();
            obj.f16554a = 8;
            Compress compress2 = this.h;
            obj.b = compress2;
            obj.r = compress2.f12868c;
            obj.f = i;
            obj.t = 2;
            obj.u = true;
            ImageLoader.f().c(obj, myThumbView, this.k, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageThumbAdapter.3
                @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public final void a(MainItem.ViewItem viewItem, View view, FailReason failReason) {
                    Object tag;
                    if (viewItem != null && view != null && (tag = view.getTag()) != null && (tag instanceof Integer)) {
                        int intValue = ((Integer) tag).intValue();
                        ImageThumbAdapter imageThumbAdapter = ImageThumbAdapter.this;
                        if (imageThumbAdapter.g == 0 && imageThumbAdapter.h != null && failReason != null) {
                            FailReason.FailType failType = failReason.f20985a;
                            if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem.q) && !Compress.C(viewItem.q, true, true)) {
                                imageThumbAdapter.h.U(viewItem.f, viewItem.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                            }
                        }
                        if (intValue == viewItem.f) {
                            ((MyThumbView) view).setImageResource(R.drawable.outline_error_dark_web_24);
                        }
                    }
                }

                @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public final void c(MainItem.ViewItem viewItem, View view, Bitmap bitmap) {
                    Object tag;
                    if (viewItem != null && view != null && (tag = view.getTag()) != null && (tag instanceof Integer) && ((Integer) tag).intValue() == viewItem.f) {
                        MyThumbView myThumbView2 = (MyThumbView) view;
                        if (MainUtil.f6(bitmap)) {
                            myThumbView2.setImageBitmap(bitmap);
                        } else {
                            myThumbView2.setImageResource(R.drawable.outline_error_dark_web_24);
                        }
                    }
                }
            });
        }
    }
}
