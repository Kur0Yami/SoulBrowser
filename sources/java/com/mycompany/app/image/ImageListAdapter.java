package com.mycompany.app.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.URLUtil;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.compress.CompressCache;
import com.mycompany.app.data.DataAlbum;
import com.mycompany.app.data.DataCmp;
import com.mycompany.app.data.DataPdf;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.view.MyImageView;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class ImageListAdapter extends RecyclerView.Adapter<ViewHolder> {
    public final Object d = new Object();
    public ImageViewActivity e;
    public Context f;
    public ViewGroup g;
    public Compress h;
    public final int i;
    public DisplayImageOptions j;
    public ArrayList k;
    public boolean l;
    public boolean m;
    public int n;
    public final boolean o;
    public boolean p;
    public boolean q;
    public ArrayList r;
    public int s;
    public int t;
    public int u;
    public ImageListListener v;

    /* loaded from: classes3.dex */
    public interface ImageListListener {
        void a(int i);

        RecyclerView b();

        int c();

        String d();
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public MyImageView u;
    }

    public ImageListAdapter(ImageViewActivity imageViewActivity, Context context, ViewGroup viewGroup, Compress compress, int i, DisplayImageOptions displayImageOptions, boolean z, boolean z2, int i2, boolean z3) {
        this.e = imageViewActivity;
        this.f = context;
        this.g = viewGroup;
        this.h = compress;
        this.i = i;
        this.j = displayImageOptions;
        this.l = z;
        this.m = z2;
        this.n = i2;
        this.o = z3;
    }

    public static void v(ImageListAdapter imageListAdapter, MainItem.ViewItem viewItem) {
        if (viewItem != null && imageListAdapter.h != null) {
            imageListAdapter.A(false);
            imageListAdapter.y(viewItem.f + 1);
            imageListAdapter.y(viewItem.f - 1);
        }
    }

    public static void w(ImageListAdapter imageListAdapter, final MainItem.ViewItem viewItem) {
        ViewGroup viewGroup;
        if (imageListAdapter.q && viewItem != null && imageListAdapter.h != null) {
            imageListAdapter.z(viewItem);
            if (imageListAdapter.r.size() != imageListAdapter.B()) {
                ArrayList arrayList = imageListAdapter.k;
                if ((arrayList == null || arrayList.isEmpty()) && (viewGroup = imageListAdapter.g) != null) {
                    viewGroup.postDelayed(new Runnable() { // from class: com.mycompany.app.image.ImageListAdapter.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            MainItem.ViewItem viewItem2;
                            int R;
                            ImageListAdapter imageListAdapter2 = ImageListAdapter.this;
                            if (imageListAdapter2.q && (viewItem2 = viewItem) != null && imageListAdapter2.h != null) {
                                int i = viewItem2.f + 1;
                                ArrayList arrayList2 = imageListAdapter2.r;
                                if (arrayList2 != null && !arrayList2.isEmpty()) {
                                    Compress compress = imageListAdapter2.h;
                                    if (compress != null && (R = compress.R()) != 0) {
                                        synchronized (imageListAdapter2.d) {
                                            for (int i2 = 0; i2 < R; i2++) {
                                                try {
                                                    try {
                                                        int i3 = (i + i2) % R;
                                                        String n = imageListAdapter2.h.n(i3);
                                                        if (!TextUtils.isEmpty(n) && !imageListAdapter2.r.contains(n)) {
                                                            i = i3;
                                                            break;
                                                        }
                                                    } finally {
                                                    }
                                                } catch (Exception unused) {
                                                }
                                            }
                                        }
                                    }
                                    i = -1;
                                }
                                if (i != -1) {
                                    ImageListAdapter.this.y(i);
                                }
                            }
                        }
                    }, 200L);
                }
            }
        }
    }

    public static void x(ImageListAdapter imageListAdapter, MainItem.ViewItem viewItem, Bitmap bitmap) {
        MyImageView myImageView;
        if (imageListAdapter.h != null && viewItem != null && !viewItem.m && viewItem.d != null) {
            if (bitmap != null && !bitmap.isRecycled()) {
                viewItem.m = true;
                viewItem.d.setImageBitmap(bitmap);
            } else if (!viewItem.m && (myImageView = viewItem.d) != null) {
                if (viewItem.n) {
                    viewItem.n = false;
                    imageListAdapter.C(viewItem);
                } else {
                    viewItem.m = true;
                    myImageView.f(1, null);
                }
            }
        }
    }

    public final void A(boolean z) {
        ArrayList arrayList;
        RecyclerView b;
        int i;
        int intValue;
        MainItem.ViewItem viewItem;
        ImageView imageView;
        if (this.v != null && (arrayList = this.k) != null && !arrayList.isEmpty()) {
            synchronized (this.d) {
                try {
                    try {
                        b = this.v.b();
                        i = 0;
                    } finally {
                    }
                } catch (Exception unused) {
                }
                if (!z && b != null) {
                    int childCount = b.getChildCount();
                    int i2 = 0;
                    int i3 = 0;
                    for (int i4 = 0; i4 < childCount; i4++) {
                        View childAt = b.getChildAt(i4);
                        if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null) {
                            ArrayList arrayList2 = new ArrayList(this.k);
                            int size = arrayList2.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 < size) {
                                    Object obj = arrayList2.get(i5);
                                    i5++;
                                    imageView = (ImageView) obj;
                                    if (imageView != null && viewItem.f == ((Integer) imageView.getTag()).intValue()) {
                                        break;
                                    }
                                } else {
                                    imageView = null;
                                    break;
                                }
                            }
                            if (imageView != null) {
                                this.k.remove(imageView);
                                ImageLoader.f().a(imageView);
                                if (this.k.isEmpty()) {
                                    return;
                                }
                            }
                            i2 = Math.min(i2, viewItem.f);
                            i3 = Math.max(i3, viewItem.f);
                        }
                    }
                    int i6 = i2 - 1;
                    int i7 = i3 + 1;
                    ArrayList arrayList3 = new ArrayList(this.k);
                    int size2 = arrayList3.size();
                    while (i < size2) {
                        Object obj2 = arrayList3.get(i);
                        i++;
                        ImageView imageView2 = (ImageView) obj2;
                        if (imageView2 != null && ((intValue = ((Integer) imageView2.getTag()).intValue()) < i6 || intValue > i7)) {
                            this.k.remove(imageView2);
                            ImageLoader.f().a(imageView2);
                        }
                    }
                    return;
                }
                ArrayList arrayList4 = new ArrayList(this.k);
                int size3 = arrayList4.size();
                while (i < size3) {
                    Object obj3 = arrayList4.get(i);
                    i++;
                    ImageView imageView3 = (ImageView) obj3;
                    if (imageView3 != null) {
                        ImageLoader.f().a(imageView3);
                    }
                }
                this.k = null;
            }
        }
    }

    public final int B() {
        Compress compress = this.h;
        if (compress != null && compress.R() != 0) {
            return this.h.R();
        }
        return 1;
    }

    public final void C(MainItem.ViewItem viewItem) {
        Compress compress = this.h;
        if (compress != null && viewItem != null) {
            if (this.s == 0 || URLUtil.isNetworkUrl(compress.n(viewItem.f))) {
                A(false);
                ImageLoader.f().c(viewItem, viewItem.d, this.j, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageListAdapter.1
                    @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                    public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                        ImageListListener imageListListener;
                        ImageListAdapter imageListAdapter = ImageListAdapter.this;
                        if (imageListAdapter.s == 0) {
                            if (imageListAdapter.i == 12 && imageListAdapter.h != null && viewItem2 != null && failReason != null) {
                                String a3 = MainUtil.a3(viewItem2.q);
                                if (!TextUtils.isEmpty(a3) && !a3.equals(viewItem2.q)) {
                                    imageListAdapter.h.U(viewItem2.f, viewItem2.q, a3);
                                    viewItem2.q = a3;
                                    imageListAdapter.C(viewItem2);
                                    return;
                                } else {
                                    FailReason.FailType failType = failReason.f20985a;
                                    if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem2.q) && !Compress.C(viewItem2.q, true, true)) {
                                        imageListAdapter.h.U(viewItem2.f, viewItem2.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                    }
                                }
                            }
                        } else if (viewItem2 != null && (imageListListener = imageListAdapter.v) != null) {
                            imageListListener.a(viewItem2.f);
                        }
                        ImageListAdapter.x(imageListAdapter, viewItem2, null);
                        ImageListAdapter.v(imageListAdapter, viewItem2);
                    }

                    @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                    public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                        ImageListAdapter imageListAdapter = ImageListAdapter.this;
                        ImageListAdapter.x(imageListAdapter, viewItem2, bitmap);
                        ImageListAdapter.v(imageListAdapter, viewItem2);
                        imageListAdapter.z(viewItem2);
                    }
                });
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        return 100000;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        int i2;
        boolean z;
        boolean h0;
        boolean z2;
        boolean z3;
        String str;
        List list;
        int c2;
        int size;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        if (viewHolder2.f1589a != null && viewHolder2.u != null && this.h != null) {
            int B = B();
            boolean z4 = this.o;
            boolean z5 = false;
            if (B > 0) {
                if (i < 0) {
                    i2 = B - 1;
                } else {
                    i2 = i % B;
                }
                if (PrefImage.s && !z4) {
                    i2 = (B - i2) - 1;
                }
            } else {
                i2 = 0;
            }
            if (this.p && (i < this.t || i > this.u)) {
                z = true;
            } else {
                z = false;
            }
            ?? obj = new Object();
            obj.f16554a = 8;
            Compress compress = this.h;
            obj.b = compress;
            obj.r = compress.f12868c;
            obj.f = i2;
            obj.i = compress.g(i2);
            obj.j = z;
            obj.m = z;
            boolean z6 = !z;
            obj.n = z6;
            ImageViewActivity imageViewActivity = this.e;
            if (imageViewActivity == null) {
                h0 = MainUtil.N5(this.f);
            } else {
                h0 = imageViewActivity.h0();
            }
            int i3 = this.i;
            if (i3 == 2) {
                z2 = true;
            } else {
                z2 = false;
            }
            obj.t = MainUtil.l0(imageViewActivity, h0, z2);
            if (i3 == 12) {
                z3 = true;
            } else {
                z3 = false;
            }
            obj.u = z3;
            MyImageView myImageView = viewHolder2.u;
            obj.d = myImageView;
            myImageView.setParentView(this.g);
            obj.d.setPreProcess(z6);
            MyImageView myImageView2 = obj.d;
            boolean z7 = this.l;
            boolean z8 = this.m;
            int i4 = this.n;
            boolean z9 = PrefImage.s;
            myImageView2.i = z7;
            myImageView2.j = z8;
            myImageView2.k = i4;
            myImageView2.l = z9;
            String str2 = null;
            MainItem.ChildItem f = null;
            str2 = null;
            str2 = null;
            str2 = null;
            str2 = null;
            myImageView2.setImageDrawable(null);
            if (z) {
                MyImageView myImageView3 = obj.d;
                myImageView3.n = true;
                myImageView3.a(0, 0);
                ImageListListener imageListListener = this.v;
                if (imageListListener != null) {
                    str = imageListListener.d();
                } else {
                    str = null;
                }
                MyImageView myImageView4 = obj.d;
                if (i > this.u) {
                    z5 = true;
                }
                if (this.v != null && !TextUtils.isEmpty(str)) {
                    if (i3 == 1) {
                        list = DataAlbum.m(this.f).b;
                    } else if (i3 == 2) {
                        list = DataPdf.m(this.f).b;
                    } else if (i3 == 3) {
                        list = DataCmp.m(this.f).b;
                    } else {
                        list = null;
                    }
                    if (list != null && list.size() >= 2 && (((c2 = this.v.c()) != -1 && c2 < list.size() && str.equals(list.get(c2))) || (c2 = list.indexOf(str)) != -1)) {
                        if (z5) {
                            if (PrefImage.s && !z4) {
                                size = ((list.size() + c2) - 1) % list.size();
                            } else {
                                size = (c2 + 1) % list.size();
                            }
                        } else if (PrefImage.s && !z4) {
                            size = (c2 + 1) % list.size();
                        } else {
                            size = ((list.size() + c2) - 1) % list.size();
                        }
                        if (i3 == 1) {
                            f = DataAlbum.m(this.f).f(size);
                        } else if (i3 == 2) {
                            f = DataPdf.m(this.f).f(size);
                        } else if (i3 == 3) {
                            f = DataCmp.m(this.f).f(size);
                        }
                        str2 = f != null ? f.h : i3 == 1 ? MainUtil.j1(this.f, (String) list.get(size)) : MainUtil.b1(this.f, (String) list.get(size));
                    }
                }
                myImageView4.f(2, str2);
            } else {
                CompressCache.BitmapInfo bitmapInfo = obj.i;
                if (bitmapInfo != null) {
                    MyImageView myImageView5 = obj.d;
                    int i5 = bitmapInfo.f12872a;
                    int i6 = bitmapInfo.b;
                    myImageView5.n = true;
                    myImageView5.a(i5, i6);
                } else {
                    MyImageView myImageView6 = obj.d;
                    myImageView6.n = true;
                    myImageView6.a(0, 0);
                }
                obj.d.f(0, null);
            }
            obj.d.setTag(obj);
            C(obj);
        }
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.image.ImageListAdapter$ViewHolder] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.widget.ImageView, android.view.View, com.mycompany.app.view.MyImageView] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        int i2;
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (this.o) {
            i2 = 2;
        } else {
            i2 = 1;
        }
        ?? imageView = new ImageView(context);
        imageView.b(context, i2);
        imageView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
        ?? viewHolder = new RecyclerView.ViewHolder(imageView);
        viewHolder.u = imageView;
        return viewHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.mycompany.app.main.MainItem$ViewItem, java.lang.Object] */
    public final void y(int i) {
        RecyclerView b;
        boolean h0;
        boolean z;
        MainItem.ViewItem viewItem;
        Compress compress = this.h;
        if (compress != null && this.v != null) {
            if ((this.s == 0 || URLUtil.isNetworkUrl(compress.n(i))) && (b = this.v.b()) != null) {
                boolean z2 = false;
                if (this.p) {
                    if (i < 0 || i >= B()) {
                        return;
                    }
                } else if (i < 0) {
                    i = B() - 1;
                } else if (i >= B()) {
                    i = 0;
                }
                try {
                    int childCount = b.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        View childAt = b.getChildAt(i2);
                        if (childAt != null && (viewItem = (MainItem.ViewItem) childAt.getTag()) != null && i == viewItem.f) {
                            return;
                        }
                    }
                    ArrayList arrayList = this.k;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        synchronized (this.d) {
                            try {
                                ArrayList arrayList2 = new ArrayList(this.k);
                                int size = arrayList2.size();
                                int i3 = 0;
                                while (i3 < size) {
                                    Object obj = arrayList2.get(i3);
                                    i3++;
                                    ImageView imageView = (ImageView) obj;
                                    if (imageView != null && i == ((Integer) imageView.getTag()).intValue()) {
                                        return;
                                    }
                                }
                            } finally {
                            }
                        }
                    }
                    ?? obj2 = new Object();
                    obj2.f16554a = 8;
                    obj2.b = compress;
                    obj2.r = compress.f12868c;
                    obj2.f = i;
                    ImageViewActivity imageViewActivity = this.e;
                    if (imageViewActivity == null) {
                        h0 = MainUtil.N5(this.f);
                    } else {
                        h0 = imageViewActivity.h0();
                    }
                    if (this.i == 2) {
                        z = true;
                    } else {
                        z = false;
                    }
                    obj2.t = MainUtil.l0(imageViewActivity, h0, z);
                    if (this.i == 12) {
                        z2 = true;
                    }
                    obj2.u = z2;
                    if (this.e != null) {
                        ImageView imageView2 = new ImageView(this.e);
                        imageView2.setTag(Integer.valueOf(i));
                        if (this.k == null) {
                            this.k = new ArrayList();
                        }
                        this.k.add(imageView2);
                        ImageLoader.f().c(obj2, imageView2, this.j, new SimpleImageLoadingListener() { // from class: com.mycompany.app.image.ImageListAdapter.2
                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void a(MainItem.ViewItem viewItem2, View view, FailReason failReason) {
                                ImageListListener imageListListener;
                                ArrayList arrayList3;
                                ImageListAdapter imageListAdapter = ImageListAdapter.this;
                                if (view != null && (arrayList3 = imageListAdapter.k) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                                ImageListAdapter.w(imageListAdapter, viewItem2);
                                if (imageListAdapter.s == 0) {
                                    if (imageListAdapter.i == 12 && imageListAdapter.h != null && viewItem2 != null && failReason != null) {
                                        String a3 = MainUtil.a3(viewItem2.q);
                                        if (!TextUtils.isEmpty(a3) && !a3.equals(viewItem2.q)) {
                                            imageListAdapter.h.U(viewItem2.f, viewItem2.q, a3);
                                            return;
                                        }
                                        FailReason.FailType failType = failReason.f20985a;
                                        if ((failType.equals(FailReason.FailType.f) || failType.equals(FailReason.FailType.f20986c)) && !TextUtils.isEmpty(viewItem2.q) && !Compress.C(viewItem2.q, true, true)) {
                                            imageListAdapter.h.U(viewItem2.f, viewItem2.q, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                            return;
                                        }
                                        return;
                                    }
                                    return;
                                }
                                if (viewItem2 != null && (imageListListener = imageListAdapter.v) != null) {
                                    imageListListener.a(viewItem2.f);
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void b(View view) {
                                ArrayList arrayList3;
                                if (view != null && (arrayList3 = ImageListAdapter.this.k) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                            }

                            @Override // com.nostra13.universalimageloader.core.listener.SimpleImageLoadingListener, com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                            public final void c(MainItem.ViewItem viewItem2, View view, Bitmap bitmap) {
                                ArrayList arrayList3;
                                ImageListAdapter imageListAdapter = ImageListAdapter.this;
                                if (view != null && (arrayList3 = imageListAdapter.k) != null) {
                                    try {
                                        arrayList3.remove(view);
                                    } catch (Exception unused) {
                                    }
                                }
                                ImageListAdapter.w(imageListAdapter, viewItem2);
                            }
                        });
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    public final void z(MainItem.ViewItem viewItem) {
        String n;
        if (this.q && viewItem != null && this.h != null) {
            synchronized (this.d) {
                try {
                    try {
                        ArrayList arrayList = this.r;
                        if (arrayList == null) {
                            this.r = new ArrayList();
                        } else if (arrayList.size() == B()) {
                            return;
                        }
                        n = this.h.n(viewItem.f);
                    } catch (Exception unused) {
                    }
                    if (TextUtils.isEmpty(n)) {
                        return;
                    }
                    this.r.add(n);
                } finally {
                }
            }
        }
    }
}
