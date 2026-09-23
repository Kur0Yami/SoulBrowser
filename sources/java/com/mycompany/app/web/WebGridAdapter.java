package com.mycompany.app.web;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.collection.LruCache;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.data.DataUrl;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyFadeView;
import com.mycompany.app.view.MyManagerGrid;
import com.mycompany.app.view.MyThumbView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.utils.MemoryCacheUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class WebGridAdapter extends RecyclerView.Adapter<WebGridHolder> {
    public final Context d;
    public MyManagerGrid e;
    public List f;
    public String g;
    public int h;
    public boolean i;
    public boolean[] j;
    public int k;
    public DisplayImageOptions l;
    public boolean[] m;
    public boolean[] n;
    public boolean[] o;
    public int[] p;
    public WebGridListener q;
    public final int r;
    public int s;

    /* loaded from: classes3.dex */
    public static class WebGridHolder extends RecyclerView.ViewHolder {
        public MyThumbView u;
        public MyFadeView v;
        public AppCompatTextView w;
        public MyButtonCheck x;
        public AppCompatTextView y;
    }

    /* loaded from: classes3.dex */
    public interface WebGridListener {
        void a(int i);

        void b(int i);

        void c(int i);

        void d();
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, com.nostra13.universalimageloader.core.display.BitmapDisplayer] */
    public WebGridAdapter(Context context, String str, int i, MyManagerGrid myManagerGrid, int i2) {
        this.d = context;
        this.g = str;
        this.h = i;
        this.r = i2;
        this.e = myManagerGrid;
        DisplayImageOptions.Builder builder = new DisplayImageOptions.Builder();
        builder.f20960a = true;
        builder.b = true;
        Bitmap.Config config = Bitmap.Config.RGB_565;
        builder.a();
        builder.f = new Object();
        this.l = new DisplayImageOptions(builder);
    }

    public static WebGridHolder z(View view) {
        Object tag;
        if (view == null || (tag = view.getTag()) == null || !(tag instanceof WebGridHolder)) {
            return null;
        }
        return (WebGridHolder) tag;
    }

    public final boolean A() {
        int y = y();
        if (y == 0 || this.k != y) {
            return false;
        }
        return true;
    }

    public final boolean B(int i) {
        List list = this.f;
        if (list != null && i >= 0 && i < list.size()) {
            return true;
        }
        return false;
    }

    public final void C() {
        this.s = d();
        this.e = null;
        this.f = null;
        this.g = null;
        this.j = null;
        this.k = 0;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
    }

    public final void D(boolean z, boolean z2) {
        int y = y();
        if (y != 0) {
            if (this.i) {
                boolean[] zArr = this.j;
                if (zArr != null) {
                    MainUtil.b(zArr, z);
                    if (!z) {
                        y = 0;
                    }
                    if (y == this.k) {
                        return;
                    } else {
                        this.k = y;
                    }
                } else {
                    return;
                }
            }
            v(true);
        }
    }

    public final void E(int i, boolean z) {
        if (this.i != z) {
            this.i = z;
            int y = y();
            if (y == 0) {
                return;
            }
            if (this.i) {
                boolean[] zArr = new boolean[y];
                this.j = zArr;
                MainUtil.b(zArr, false);
                if (i >= 0) {
                    boolean[] zArr2 = this.j;
                    if (i < zArr2.length) {
                        zArr2[i] = true;
                        this.k = 1;
                    }
                }
                this.k = 0;
            } else {
                this.j = null;
                this.k = 0;
            }
            v(false);
        }
    }

    public final void F(List list) {
        if (this.i) {
            return;
        }
        this.f = list;
        int y = y();
        if (y > 0) {
            if (this.r == 0) {
                this.m = null;
                this.n = new boolean[y];
                this.o = new boolean[y];
            } else {
                this.m = new boolean[y];
                this.n = null;
                this.o = null;
            }
            this.p = new int[y];
        } else {
            this.m = null;
            this.n = null;
            this.o = null;
            this.p = null;
        }
        g();
    }

    public final void G(int i, String str) {
        String str2;
        boolean[] zArr;
        if (!B(i)) {
            str2 = null;
        } else {
            str2 = (String) this.f.get(i);
        }
        if (str2 != null) {
            boolean isNetworkUrl = URLUtil.isNetworkUrl(str);
            if (isNetworkUrl && (zArr = this.m) != null && i >= 0 && i < zArr.length) {
                if (!zArr[i] || !str2.equals(str)) {
                    this.m[i] = true;
                } else {
                    return;
                }
            }
            this.f.set(i, str);
            DataUrl.b(this.d).c(str2, str);
            if (isNetworkUrl) {
                h(i);
            }
        }
    }

    public final void H(int i) {
        boolean[] zArr;
        boolean[] zArr2 = this.j;
        if (zArr2 != null && i >= 0 && i < zArr2.length) {
            boolean z = zArr2[i];
            boolean z2 = !z;
            int y = y();
            if (y != 0 && (zArr = this.j) != null && i >= 0 && i < zArr.length && zArr[i] != z2) {
                zArr[i] = z2;
                if (!z) {
                    int i2 = this.k;
                    if (i2 < y) {
                        this.k = i2 + 1;
                    }
                } else {
                    int i3 = this.k;
                    if (i3 > 0) {
                        this.k = i3 - 1;
                    }
                }
                w(i, true);
            }
        }
    }

    public final void I(List list) {
        int size;
        boolean[] zArr;
        if (list != null && this.f != null && (size = list.size()) == this.f.size()) {
            int length = this.m.length;
            for (int i = 0; i < size; i++) {
                String str = (String) list.get(i);
                if (URLUtil.isNetworkUrl(str) && (zArr = this.m) != null && i < length) {
                    zArr[i] = true;
                }
                this.f.set(i, str);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        int i = this.s;
        if (i != 0) {
            return i;
        }
        List list = this.f;
        if (list == null) {
            return 0;
        }
        return list.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int f(int i) {
        if (!B(i)) {
            return 1;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        boolean z;
        String str;
        int i2;
        int i3;
        int i4;
        int i5;
        WebGridHolder webGridHolder = (WebGridHolder) viewHolder;
        View view = webGridHolder.f1589a;
        if (view == null) {
            return;
        }
        view.setTag(webGridHolder);
        int i6 = 8;
        String str2 = null;
        if (!B(i)) {
            if (y() > 20) {
                if (view instanceof ImageView) {
                    if (MainApp.K1) {
                        ((ImageView) view).setImageResource(R.drawable.outline_list_footer_dark_24);
                    } else {
                        ((ImageView) view).setImageResource(R.drawable.outline_list_footer_black_24);
                    }
                }
                if (MainApp.K1) {
                    i5 = R.drawable.selector_normal_dark;
                } else {
                    i5 = R.drawable.selector_normal;
                }
                view.setBackgroundResource(i5);
                view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebGridAdapter.1
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        WebGridListener webGridListener = WebGridAdapter.this.q;
                        if (webGridListener != null) {
                            webGridListener.d();
                        }
                    }
                });
                view.setVisibility(0);
                return;
            }
            view.setBackground(null);
            view.setOnClickListener(null);
            view.setVisibility(8);
            return;
        }
        view.setBackground(null);
        view.setOnClickListener(null);
        view.setVisibility(0);
        webGridHolder.u.setTag(webGridHolder);
        webGridHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.web.WebGridAdapter.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                WebGridHolder z2;
                WebGridAdapter webGridAdapter = WebGridAdapter.this;
                if (webGridAdapter.q == null || (z2 = WebGridAdapter.z(view2)) == null) {
                    return;
                }
                webGridAdapter.q.c(z2.c());
            }
        });
        webGridHolder.u.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.web.WebGridAdapter.3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                WebGridHolder z2;
                WebGridAdapter webGridAdapter = WebGridAdapter.this;
                if (webGridAdapter.q == null || (z2 = WebGridAdapter.z(view2)) == null) {
                    return true;
                }
                MyThumbView myThumbView = z2.u;
                if (myThumbView != null) {
                    myThumbView.p();
                }
                webGridAdapter.q.b(z2.c());
                return true;
            }
        });
        boolean[] zArr = this.j;
        if (zArr != null && i >= 0 && i < zArr.length) {
            z = zArr[i];
        } else {
            z = false;
        }
        MyFadeView myFadeView = webGridHolder.v;
        if (z) {
            myFadeView.f(false);
        } else {
            myFadeView.d(false);
        }
        webGridHolder.x.t(this.i, false);
        webGridHolder.x.q(z, false);
        AppCompatTextView appCompatTextView = webGridHolder.y;
        if (this.i) {
            i6 = 0;
        }
        appCompatTextView.setVisibility(i6);
        int y = y();
        if (y == 0) {
            webGridHolder.y.setText("0 / 0");
        } else {
            webGridHolder.y.setText(MainUtil.h3(i + 1, y));
        }
        MyThumbView myThumbView = webGridHolder.u;
        AppCompatTextView appCompatTextView2 = webGridHolder.w;
        if (myThumbView != null && appCompatTextView2 != null && B(i)) {
            if (!B(i)) {
                str = null;
            } else {
                str = (String) this.f.get(i);
            }
            if (TextUtils.isEmpty(str)) {
                appCompatTextView2.setText("None");
                if (MainApp.K1) {
                    i4 = R.drawable.outline_error_dark_web_24;
                } else {
                    i4 = R.drawable.outline_error_black_web_24;
                }
                myThumbView.setImageResource(i4);
            } else {
                int i7 = this.r;
                if (i7 != 0 && !URLUtil.isNetworkUrl(str)) {
                    if (i7 == 2) {
                        appCompatTextView2.setText("WEBP");
                    } else {
                        appCompatTextView2.setText("JPG");
                    }
                    if (MainApp.K1) {
                        i3 = R.drawable.outline_image_dark_web_24;
                    } else {
                        i3 = R.drawable.outline_image_black_web_24;
                    }
                    myThumbView.setImageResource(i3);
                } else {
                    boolean[] zArr2 = this.m;
                    if (zArr2 != null && i >= 0 && i < zArr2.length) {
                        zArr2[i] = true;
                    }
                    if (i7 == 2) {
                        appCompatTextView2.setText("WEBP");
                    } else if (i7 == 1) {
                        appCompatTextView2.setText("JPG");
                    } else {
                        String W3 = MainUtil.W3(str, true);
                        if (TextUtils.isEmpty(W3)) {
                            appCompatTextView2.setText("None");
                        } else {
                            appCompatTextView2.setText(W3.toUpperCase(Locale.US));
                        }
                    }
                    Bitmap a2 = ImageLoader.f().g().a(MemoryCacheUtils.a(2, str));
                    if (MainUtil.f6(a2)) {
                        if (a2.hasAlpha()) {
                            myThumbView.j(a2.getWidth(), a2.getHeight(), -460552);
                        } else {
                            myThumbView.j(0, 0, 0);
                        }
                        myThumbView.setImageBitmap(a2);
                    } else {
                        if (MainApp.K1) {
                            i2 = R.drawable.outline_image_dark_web_24;
                        } else {
                            i2 = R.drawable.outline_image_black_web_24;
                        }
                        myThumbView.setImageResource(i2);
                        String str3 = this.g;
                        boolean[] zArr3 = this.o;
                        if (zArr3 != null && i >= 0 && i < zArr3.length && zArr3[i]) {
                            boolean z2 = MainConst.f16452a;
                        } else {
                            str2 = str3;
                        }
                        ?? obj = new Object();
                        obj.f16554a = 7;
                        obj.q = str;
                        obj.r = str2;
                        obj.f = i;
                        obj.t = 2;
                        obj.u = true;
                        ImageLoader.f().c(obj, myThumbView, this.l, new SimpleImageLoadingListener() { // from class: com.mycompany.app.web.WebGridAdapter.4
                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void a(MainItem.ViewItem viewItem, View view2, FailReason failReason) {
                                String str4;
                                MyThumbView myThumbView2;
                                int i8;
                                WebGridAdapter webGridAdapter = WebGridAdapter.this;
                                Context context = webGridAdapter.d;
                                if (viewItem != null) {
                                    int i9 = viewItem.f;
                                    if (!webGridAdapter.B(i9)) {
                                        str4 = null;
                                    } else {
                                        str4 = (String) webGridAdapter.f.get(i9);
                                    }
                                    if (str4 != null) {
                                        if (webGridAdapter.r == 0) {
                                            boolean[] zArr4 = webGridAdapter.n;
                                            if (zArr4 != null && i9 < zArr4.length) {
                                                if (!zArr4[i9]) {
                                                    zArr4[i9] = true;
                                                    String a3 = MainUtil.a3(str4);
                                                    if (!TextUtils.isEmpty(a3) && !a3.equals(str4)) {
                                                        webGridAdapter.f.set(i9, a3);
                                                        DataUrl.b(context).c(str4, a3);
                                                        webGridAdapter.h(i9);
                                                        return;
                                                    }
                                                }
                                                boolean[] zArr5 = webGridAdapter.o;
                                                if (zArr5 != null && i9 < zArr5.length) {
                                                    if (!zArr5[i9]) {
                                                        zArr5[i9] = true;
                                                        webGridAdapter.h(i9);
                                                        return;
                                                    } else if (failReason != null) {
                                                        FailReason.FailType failType = failReason.f20985a;
                                                        if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !Compress.C(str4, true, true)) {
                                                            webGridAdapter.f.set(i9, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                                            DataUrl.b(context).c(str4, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                                        }
                                                    }
                                                } else {
                                                    return;
                                                }
                                            } else {
                                                return;
                                            }
                                        } else {
                                            WebGridListener webGridListener = webGridAdapter.q;
                                            if (webGridListener != null) {
                                                webGridListener.a(i9);
                                            }
                                        }
                                        WebGridHolder z3 = WebGridAdapter.z(view2);
                                        if (z3 == null || i9 != z3.c() || (myThumbView2 = z3.u) == null) {
                                            return;
                                        }
                                        if (MainApp.K1) {
                                            i8 = R.drawable.outline_error_dark_web_24;
                                        } else {
                                            i8 = R.drawable.outline_error_black_web_24;
                                        }
                                        myThumbView2.setImageResource(i8);
                                    }
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void c(MainItem.ViewItem viewItem, View view2, Bitmap bitmap) {
                                MyThumbView myThumbView2;
                                int i8;
                                boolean z3;
                                LruCache lruCache;
                                if (viewItem != null) {
                                    int i9 = viewItem.f;
                                    boolean f6 = MainUtil.f6(bitmap);
                                    if (f6) {
                                        CompressCache a3 = CompressCache.a();
                                        String str4 = viewItem.q;
                                        CompressCache.BitmapInfo bitmapInfo = new CompressCache.BitmapInfo(bitmap.getWidth(), bitmap.getHeight(), 0);
                                        a3.getClass();
                                        if (!TextUtils.isEmpty(str4) && (lruCache = a3.f12871a) != null) {
                                            lruCache.d(str4, bitmapInfo);
                                        }
                                        WebGridAdapter webGridAdapter = WebGridAdapter.this;
                                        int[] iArr = webGridAdapter.p;
                                        if (iArr != null && i9 >= 0 && i9 < iArr.length) {
                                            int i10 = 1;
                                            if (bitmap.getWidth() > bitmap.getHeight()) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            int[] iArr2 = webGridAdapter.p;
                                            if (z3) {
                                                i10 = 2;
                                            }
                                            iArr2[i9] = i10;
                                        }
                                    }
                                    WebGridHolder z4 = WebGridAdapter.z(view2);
                                    if (z4 == null || i9 != z4.c() || (myThumbView2 = z4.u) == null) {
                                        return;
                                    }
                                    if (f6) {
                                        if (bitmap.hasAlpha()) {
                                            z4.u.j(bitmap.getWidth(), bitmap.getHeight(), -460552);
                                        } else {
                                            z4.u.j(0, 0, 0);
                                        }
                                        z4.u.setImageBitmap(bitmap);
                                        return;
                                    }
                                    if (MainApp.K1) {
                                        i8 = R.drawable.outline_error_dark_web_24;
                                    } else {
                                        i8 = R.drawable.outline_error_black_web_24;
                                    }
                                    myThumbView2.setImageResource(i8);
                                }
                            }
                        });
                    }
                }
            }
        }
        if (MainApp.K1) {
            webGridHolder.u.setBackColor(-14606047);
            webGridHolder.w.setBackgroundResource(R.drawable.round_label_dark);
            webGridHolder.w.setTextColor(-328966);
            webGridHolder.x.setBgNorColor(-16777216);
            webGridHolder.x.p(R.drawable.baseline_check_circle_dark_24, R.drawable.outline_radio_button_unchecked_dark_24);
            webGridHolder.y.setBackgroundResource(R.drawable.round_label_dark);
            webGridHolder.y.setTextColor(-328966);
            return;
        }
        webGridHolder.u.setBackColor(-1);
        webGridHolder.w.setBackgroundResource(R.drawable.round_label);
        webGridHolder.w.setTextColor(-16777216);
        webGridHolder.x.setBgNorColor(-1);
        webGridHolder.x.p(R.drawable.baseline_check_circle_black_24, R.drawable.outline_radio_button_unchecked_black_24);
        webGridHolder.y.setBackgroundResource(R.drawable.round_label);
        webGridHolder.y.setTextColor(-16777216);
    }

    /* JADX WARN: Type inference failed for: r13v5, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.web.WebGridAdapter$WebGridHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 1) {
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            imageView.setLayoutParams(new ViewGroup.LayoutParams(-1, MainApp.i1));
            return new RecyclerView.ViewHolder(imageView);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, this.h));
        FrameLayout frameLayout2 = new FrameLayout(context);
        int i2 = MainApp.p1;
        frameLayout2.setPadding(i2, i2, i2, i2);
        frameLayout.addView(frameLayout2, -1, -1);
        MyThumbView myThumbView = new MyThumbView(context);
        frameLayout2.addView(myThumbView, -1, -1);
        MyFadeView myFadeView = new MyFadeView(context);
        myFadeView.setBackgroundColor(1895825408);
        myFadeView.setVisibility(8);
        frameLayout2.addView(myFadeView, -1, -1);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        int i3 = MainApp.G1;
        appCompatTextView.setPadding(i3, 0, i3, 0);
        appCompatTextView.setSingleLine(true);
        appCompatTextView.setTextSize(1, 14.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 8388613;
        int i4 = MainApp.G1;
        layoutParams.topMargin = i4;
        layoutParams.setMarginEnd(i4);
        frameLayout2.addView(appCompatTextView, layoutParams);
        MyButtonCheck myButtonCheck = new MyButtonCheck(context);
        myButtonCheck.setBgNorRadius((int) MainUtil.G(context, 12.0f));
        myButtonCheck.setVisibility(8);
        int G = (int) MainUtil.G(context, 32.0f);
        frameLayout2.addView(myButtonCheck, G, G);
        AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
        int i5 = MainApp.G1;
        appCompatTextView2.setPadding(i5, 0, i5, 0);
        appCompatTextView2.setTextDirection(3);
        appCompatTextView2.setSingleLine(true);
        appCompatTextView2.setTextSize(1, 14.0f);
        appCompatTextView2.setVisibility(8);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 8388693;
        int i6 = MainApp.G1;
        layoutParams2.bottomMargin = i6;
        layoutParams2.setMarginEnd(i6);
        frameLayout2.addView(appCompatTextView2, layoutParams2);
        ?? viewHolder = new RecyclerView.ViewHolder(frameLayout);
        viewHolder.u = myThumbView;
        viewHolder.v = myFadeView;
        viewHolder.w = appCompatTextView;
        viewHolder.x = myButtonCheck;
        viewHolder.y = appCompatTextView2;
        return viewHolder;
    }

    public final void v(boolean z) {
        MyManagerGrid myManagerGrid = this.e;
        if (myManagerGrid != null) {
            int V0 = myManagerGrid.V0() + 1;
            View view = null;
            for (int U0 = myManagerGrid.U0(); U0 < V0; U0++) {
                View w = w(U0, z);
                if (view == null && w != null) {
                    view = w;
                }
            }
            if (view == null) {
                return;
            }
            view.post(new Runnable() { // from class: com.mycompany.app.web.WebGridAdapter.5
                @Override // java.lang.Runnable
                public final void run() {
                    MyManagerGrid myManagerGrid2;
                    WebGridAdapter webGridAdapter = WebGridAdapter.this;
                    int y = webGridAdapter.y();
                    if (y != 0 && (myManagerGrid2 = webGridAdapter.e) != null) {
                        int U02 = myManagerGrid2.U0();
                        int V02 = myManagerGrid2.V0() + 1;
                        if (U02 > 0) {
                            webGridAdapter.k(0, U02);
                        }
                        if (y > V02) {
                            webGridAdapter.k(V02, y - V02);
                        }
                    }
                }
            });
        }
    }

    public final View w(int i, boolean z) {
        MyManagerGrid myManagerGrid;
        View s;
        WebGridHolder z2;
        boolean z3;
        if (!B(i) || (myManagerGrid = this.e) == null || (s = myManagerGrid.s(i)) == null || (z2 = z(s)) == null) {
            return null;
        }
        boolean[] zArr = this.j;
        int i2 = 0;
        if (zArr != null && i >= 0 && i < zArr.length) {
            z3 = zArr[i];
        } else {
            z3 = false;
        }
        MyFadeView myFadeView = z2.v;
        if (z3) {
            myFadeView.f(z);
        } else {
            myFadeView.d(z);
        }
        z2.x.t(this.i, false);
        z2.x.q(z3, z);
        AppCompatTextView appCompatTextView = z2.y;
        if (!this.i) {
            i2 = 8;
        }
        appCompatTextView.setVisibility(i2);
        return s;
    }

    public final ArrayList x() {
        int y;
        boolean z;
        if (this.k > 0 && (y = y()) != 0) {
            if (A()) {
                return new ArrayList(this.f);
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < y; i++) {
                String str = (String) this.f.get(i);
                if (str != null) {
                    boolean[] zArr = this.j;
                    if (zArr != null && i >= 0 && i < zArr.length) {
                        z = zArr[i];
                    } else {
                        z = false;
                    }
                    if (z) {
                        arrayList.add(str);
                    }
                }
            }
            return arrayList;
        }
        return null;
    }

    public final int y() {
        List list = this.f;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}
