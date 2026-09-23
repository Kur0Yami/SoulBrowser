package com.mycompany.app.main;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.fragment.FragmentDragView;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MySwitchView;
import com.mycompany.app.web.WebViewActivity;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MainDragAdapter extends ArrayAdapter<MainDragItem> {

    /* renamed from: c, reason: collision with root package name */
    public WebViewActivity f16533c;
    public FragmentDragView f;
    public ArrayList g;
    public MainDragListener h;
    public int i;

    /* loaded from: classes3.dex */
    public static class MainDragItem {

        /* renamed from: a, reason: collision with root package name */
        public final int f16535a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f16536c;
        public boolean d;

        public MainDragItem(int i, int i2, int i3, boolean z) {
            this.f16535a = i;
            this.b = i2;
            this.f16536c = i3;
            this.d = z;
        }
    }

    /* loaded from: classes3.dex */
    public interface MainDragListener {
        void a(int i, boolean z);
    }

    /* loaded from: classes3.dex */
    public static class ViewHolder {

        /* renamed from: a, reason: collision with root package name */
        public MyLineFrame f16537a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public ImageView f16538c;
        public AppCompatTextView d;
        public MySwitchView e;
        public ImageView f;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final MainDragItem getItem(int i) {
        ArrayList arrayList = this.g;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (MainDragItem) this.g.get(i);
        }
        return null;
    }

    public final boolean c(int i) {
        MainDragItem item;
        ViewHolder viewHolder;
        MySwitchView mySwitchView;
        Object tag;
        int i2 = 0;
        if (this.f == null || (item = getItem(i)) == null) {
            return false;
        }
        int childCount = this.f.getChildCount();
        while (true) {
            if (i2 < childCount) {
                View childAt = this.f.getChildAt(i2);
                if (childAt != null && (tag = childAt.getTag()) != null && (tag instanceof ViewHolder)) {
                    viewHolder = (ViewHolder) tag;
                    if (viewHolder.b == i) {
                        break;
                    }
                }
                i2++;
            } else {
                viewHolder = null;
                break;
            }
        }
        if (viewHolder != null && (mySwitchView = viewHolder.e) != null) {
            boolean z = !item.d;
            item.d = z;
            mySwitchView.b(z, true);
        }
        return item.d;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final int getCount() {
        int i = this.i;
        if (i != 0) {
            return i;
        }
        ArrayList arrayList = this.g;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final long getItemId(int i) {
        if (getItem(i) == null) {
            return 0L;
        }
        return r3.f16535a;
    }

    /* JADX WARN: Type inference failed for: r12v12, types: [com.mycompany.app.main.MainDragAdapter$ViewHolder, java.lang.Object] */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            WebViewActivity webViewActivity = this.f16533c;
            viewHolder = null;
            if (webViewActivity != null) {
                MyLineFrame myLineFrame = new MyLineFrame(webViewActivity);
                myLineFrame.a(MainApp.E1);
                int G = (int) MainUtil.G(webViewActivity, 52.0f);
                myLineFrame.setLayoutParams(new ViewGroup.LayoutParams(-1, G));
                ImageView imageView = new ImageView(webViewActivity);
                int G2 = (int) MainUtil.G(webViewActivity, 20.0f);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G2, G2);
                layoutParams.topMargin = MainApp.E1;
                layoutParams.setMarginStart((int) MainUtil.G(webViewActivity, 22.0f));
                myLineFrame.addView(imageView, layoutParams);
                AppCompatTextView appCompatTextView = new AppCompatTextView(webViewActivity, null);
                appCompatTextView.setGravity(16);
                appCompatTextView.setSingleLine(true);
                appCompatTextView.setTextSize(1, 16.0f);
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                layoutParams2.setMarginStart((int) MainUtil.G(webViewActivity, 64.0f));
                layoutParams2.setMarginEnd((int) MainUtil.G(webViewActivity, 100.0f));
                myLineFrame.addView(appCompatTextView, layoutParams2);
                MySwitchView mySwitchView = new MySwitchView(webViewActivity);
                int i2 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2);
                layoutParams3.gravity = 8388629;
                layoutParams3.setMarginEnd(G);
                myLineFrame.addView(mySwitchView, layoutParams3);
                ImageView imageView2 = new ImageView(webViewActivity);
                imageView2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                int i3 = MainApp.g1;
                FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i3, i3);
                layoutParams4.gravity = 8388629;
                layoutParams4.setMarginEnd(MainApp.G1);
                myLineFrame.addView(imageView2, layoutParams4);
                View view2 = new View(webViewActivity);
                view2.setId(R.id.item_drag);
                FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(G, G);
                layoutParams5.gravity = 8388629;
                myLineFrame.addView(view2, layoutParams5);
                ?? obj = new Object();
                obj.f16537a = myLineFrame;
                obj.f16538c = imageView;
                obj.d = appCompatTextView;
                obj.e = mySwitchView;
                obj.f = imageView2;
                viewHolder = obj;
            }
            if (viewHolder == null) {
                return view;
            }
            view = viewHolder.f16537a;
            if (view == null) {
                return view;
            }
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
            if (viewHolder == null) {
                return view;
            }
        }
        MainDragItem item = getItem(i);
        if (item == null) {
            return view;
        }
        viewHolder.b = i;
        int i4 = item.b;
        if (i4 > 0) {
            viewHolder.f16538c.setBackgroundResource(i4);
            viewHolder.f16538c.setAlpha(1.0f);
            viewHolder.f16538c.setVisibility(0);
        } else {
            viewHolder.f16538c.setVisibility(8);
        }
        int i5 = item.f16536c;
        if (i5 > 0) {
            viewHolder.d.setText(i5);
            viewHolder.d.setVisibility(0);
        } else {
            viewHolder.d.setVisibility(8);
        }
        viewHolder.e.setTag(viewHolder);
        viewHolder.e.b(item.d, false);
        viewHolder.e.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.main.MainDragAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                ViewHolder viewHolder2;
                MySwitchView mySwitchView2;
                Object tag = view3.getTag();
                if (tag != null && (tag instanceof ViewHolder)) {
                    viewHolder2 = (ViewHolder) tag;
                } else {
                    viewHolder2 = null;
                }
                if (viewHolder2 != null) {
                    int i6 = viewHolder2.b;
                    MainDragAdapter mainDragAdapter = MainDragAdapter.this;
                    MainDragItem item2 = mainDragAdapter.getItem(i6);
                    if (item2 != null && (mySwitchView2 = viewHolder2.e) != null) {
                        boolean z = !item2.d;
                        item2.d = z;
                        mySwitchView2.b(z, true);
                        MainDragListener mainDragListener = mainDragAdapter.h;
                        if (mainDragListener != null) {
                            mainDragListener.a(item2.f16535a, item2.d);
                        }
                    }
                }
            }
        });
        if (MainApp.K1) {
            view.setBackgroundResource(R.drawable.selector_list_back_dark);
            viewHolder.d.setTextColor(-328966);
            viewHolder.f.setImageResource(R.drawable.outline_height_dark_24);
            return view;
        }
        view.setBackgroundResource(R.drawable.selector_list_back);
        viewHolder.d.setTextColor(-16777216);
        viewHolder.f.setImageResource(R.drawable.outline_height_black_24);
        return view;
    }
}
