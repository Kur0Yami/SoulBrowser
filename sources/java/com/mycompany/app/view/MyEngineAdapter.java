package com.mycompany.app.view;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyLinkView;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class MyEngineAdapter extends RecyclerView.Adapter<ListHolder> {
    public ArrayList d;
    public boolean e;
    public int f;
    public int g;
    public MyLinkView.MainLinkListener h;

    /* loaded from: classes3.dex */
    public static class EngineItem {

        /* renamed from: a, reason: collision with root package name */
        public int f18692a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public BitmapDrawable f18693c;
        public int d;
        public String e;
    }

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
        return r3.f18692a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        EngineItem v;
        ListHolder listHolder = (ListHolder) viewHolder;
        boolean z = this.e;
        View view = listHolder.f1589a;
        if (view == null || (v = v(i)) == null) {
            return;
        }
        view.setTag(listHolder);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyEngineAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Object tag;
                EngineItem v2;
                MyEngineAdapter myEngineAdapter = MyEngineAdapter.this;
                if (myEngineAdapter.h == null || (tag = view2.getTag()) == null || !(tag instanceof ListHolder) || (v2 = myEngineAdapter.v(((ListHolder) tag).c())) == null) {
                    return;
                }
                myEngineAdapter.h.a(view2, v2.f18692a);
            }
        });
        BitmapDrawable bitmapDrawable = v.f18693c;
        if (bitmapDrawable != null) {
            listHolder.u.setBackground(bitmapDrawable);
            listHolder.u.setVisibility(0);
            listHolder.v.setPaddingRelative(MainApp.E1, 0, 0, 0);
        } else {
            int i2 = v.b;
            if (i2 != 0) {
                listHolder.u.setBackgroundResource(i2);
                listHolder.u.setVisibility(0);
                listHolder.v.setPaddingRelative(MainApp.E1, 0, 0, 0);
            } else {
                listHolder.u.setVisibility(8);
                listHolder.v.setPaddingRelative(0, 0, 0, 0);
            }
        }
        if (v.f18692a == PrefZtwo.j) {
            if (z) {
                listHolder.w.setBackgroundResource(R.drawable.outline_check_dark_24);
            } else {
                listHolder.w.setBackgroundResource(R.drawable.outline_check_black_24);
            }
            listHolder.w.setVisibility(0);
        } else {
            listHolder.w.setVisibility(8);
        }
        int i3 = v.d;
        if (i3 != 0) {
            listHolder.v.setText(i3);
        } else if (!TextUtils.isEmpty(v.e)) {
            listHolder.v.setText(v.e);
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

    /* JADX WARN: Type inference failed for: r7v3, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.view.MyEngineAdapter$ListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        int i2 = this.g;
        LinearLayout linearLayout = new LinearLayout(context);
        int i3 = MainApp.E1;
        linearLayout.setPadding(i3, 0, i3, 0);
        linearLayout.setGravity(16);
        linearLayout.setBaselineAligned(false);
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, this.f));
        View view = new View(context);
        linearLayout.addView(view, i2, i2);
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
        appCompatTextView.setMaxLines(2);
        appCompatTextView.setTextSize(1, 16.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        linearLayout.addView(appCompatTextView, layoutParams);
        View view2 = new View(context);
        view2.setVisibility(8);
        linearLayout.addView(view2, i2, i2);
        ?? viewHolder = new RecyclerView.ViewHolder(linearLayout);
        viewHolder.u = view;
        viewHolder.v = appCompatTextView;
        viewHolder.w = view2;
        return viewHolder;
    }

    public final EngineItem v(int i) {
        ArrayList arrayList = this.d;
        if (arrayList != null && i >= 0 && i < arrayList.size()) {
            return (EngineItem) this.d.get(i);
        }
        return null;
    }
}
