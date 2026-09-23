package com.mycompany.app.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyLinkView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MyPopupAdapter extends RecyclerView.Adapter<ListHolder> {
    public ArrayList d;
    public boolean e;
    public int f;
    public boolean g;
    public boolean h;
    public int i;
    public MyLinkView.MainLinkListener j;
    public MyLinkView.MainLinkListener k;

    /* loaded from: classes3.dex */
    public static class ListHolder extends RecyclerView.ViewHolder {
        public View u;
        public AppCompatTextView v;
        public View w;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        ArrayList arrayList = this.d;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        if (v(i) == null) {
            return -1L;
        }
        return r3.f18880a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        PopMenuItem v;
        int i2;
        ListHolder listHolder = (ListHolder) viewHolder;
        boolean z = this.e;
        View view = listHolder.f1589a;
        if (view == null || (v = v(i)) == null) {
            return;
        }
        String str = v.d;
        if (v.g) {
            view.setEnabled(false);
            view.setAlpha(0.2f);
        } else {
            view.setEnabled(true);
            view.setAlpha(1.0f);
        }
        view.setTag(listHolder);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyPopupAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Object tag;
                PopMenuItem v2;
                MyPopupAdapter myPopupAdapter = MyPopupAdapter.this;
                if (myPopupAdapter.j == null || (tag = view2.getTag()) == null || !(tag instanceof ListHolder) || (v2 = myPopupAdapter.v(((ListHolder) tag).c())) == null || v2.g) {
                    return;
                }
                myPopupAdapter.j.a(view2, v2.f18880a);
            }
        });
        view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyPopupAdapter.2
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                Object tag;
                PopMenuItem v2;
                MyPopupAdapter myPopupAdapter = MyPopupAdapter.this;
                if (myPopupAdapter.k == null || (tag = view2.getTag()) == null || !(tag instanceof ListHolder) || (v2 = myPopupAdapter.v(((ListHolder) tag).c())) == null || v2.g) {
                    return false;
                }
                myPopupAdapter.k.a(view2, v2.f18880a + 1000);
                return true;
            }
        });
        View view2 = listHolder.u;
        if (view2 != null) {
            int i3 = v.b;
            if (i3 != 0) {
                view2.setBackgroundResource(i3);
                listHolder.u.setVisibility(0);
                listHolder.v.setPaddingRelative(MainApp.E1, 0, 0, 0);
            } else {
                view2.setVisibility(8);
                listHolder.v.setPaddingRelative(0, 0, 0, 0);
            }
        }
        View view3 = listHolder.w;
        if (view3 != null) {
            boolean z2 = v.e;
            if (v.f) {
                if (z2) {
                    if (z) {
                        i2 = R.drawable.baseline_toggle_on_dark_24;
                    } else {
                        i2 = R.drawable.baseline_toggle_on_black_24;
                    }
                } else if (z) {
                    i2 = R.drawable.outline_toggle_off_dark_24;
                } else {
                    i2 = R.drawable.outline_toggle_off_black_24;
                }
            } else if (z2) {
                if (z) {
                    i2 = R.drawable.outline_check_dark_24;
                } else {
                    i2 = R.drawable.outline_check_black_24;
                }
            } else {
                i2 = 0;
            }
            if (i2 != 0) {
                view3.setBackgroundResource(i2);
                listHolder.w.setVisibility(0);
            } else {
                view3.setVisibility(8);
            }
        }
        int i4 = v.f18881c;
        if (i4 != 0) {
            listHolder.v.setText(i4);
        } else if (!TextUtils.isEmpty(str)) {
            listHolder.v.setText(str);
        } else {
            listHolder.v.setText((CharSequence) null);
        }
        if (z) {
            view.setBackgroundResource(R.drawable.selector_normal_dark);
            listHolder.v.setTextColor(-328966);
        } else {
            view.setBackgroundResource(R.drawable.selector_normal);
            listHolder.v.setTextColor(-16777216);
        }
    }

    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.view.MyPopupAdapter$ListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        View view;
        Context context = viewGroup.getContext();
        View view2 = null;
        if (context == null) {
            return null;
        }
        boolean z = this.h;
        int i2 = this.i;
        boolean z2 = this.g;
        LinearLayout linearLayout = new LinearLayout(context);
        int i3 = MainApp.E1;
        linearLayout.setPadding(i3, 0, i3, 0);
        linearLayout.setGravity(16);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, this.f));
        if (z2) {
            view = new View(context);
            view.setVisibility(8);
            linearLayout.addView(view, i2, i2);
        } else {
            view = null;
        }
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setMaxLines(2);
        appCompatTextView.setTextSize(1, 16.0f);
        if (!z2 && !z) {
            linearLayout.addView(appCompatTextView, -1, -2);
        } else {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
            layoutParams.weight = 1.0f;
            linearLayout.addView(appCompatTextView, layoutParams);
        }
        if (z) {
            view2 = new View(context);
            view2.setVisibility(8);
            linearLayout.addView(view2, i2, i2);
        }
        ?? viewHolder = new RecyclerView.ViewHolder(linearLayout);
        viewHolder.u = view;
        viewHolder.v = appCompatTextView;
        viewHolder.w = view2;
        return viewHolder;
    }

    public final PopMenuItem v(int i) {
        ArrayList arrayList = this.d;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (PopMenuItem) this.d.get(i);
        }
        return null;
    }

    /* loaded from: classes3.dex */
    public static class PopMenuItem {

        /* renamed from: a, reason: collision with root package name */
        public int f18880a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final int f18881c;
        public String d;
        public boolean e;
        public boolean f;
        public boolean g;

        public PopMenuItem(int i, int i2, String str) {
            this.f18880a = i;
            this.b = i2;
            this.d = str;
        }

        public PopMenuItem(int i, int i2) {
            this.f18880a = i;
            this.f18881c = i2;
        }

        public PopMenuItem(int i, String str) {
            this.f18880a = i;
            this.d = str;
        }

        public PopMenuItem(int i, int i2, boolean z) {
            this.f18880a = i;
            this.f18881c = i2;
            this.e = z;
        }

        public PopMenuItem(String str, int i, boolean z) {
            this.f18880a = i;
            this.d = str;
            this.e = z;
        }

        public PopMenuItem(int i, int i2, int i3, boolean z) {
            this.f18880a = i;
            this.f18881c = i2;
            this.e = z;
            this.f = true;
        }

        public PopMenuItem(int i, int i2, boolean z, Object obj) {
            this.f18880a = i;
            this.f18881c = i2;
            this.e = false;
            this.f = false;
            this.g = z;
        }
    }
}
