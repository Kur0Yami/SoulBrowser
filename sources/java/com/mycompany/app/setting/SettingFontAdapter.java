package com.mycompany.app.setting;

import android.content.Context;
import android.graphics.Outline;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingFont;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyLineFrame;
import com.mycompany.app.view.MyRoundImage;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class SettingFontAdapter extends RecyclerView.Adapter<QuickListHolder> {
    public List d;
    public SettingFontListener e;
    public String f;
    public Pattern g;
    public int h;

    /* renamed from: com.mycompany.app.setting.SettingFontAdapter$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends ViewOutlineProvider {
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

    /* renamed from: com.mycompany.app.setting.SettingFontAdapter$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends ViewOutlineProvider {
        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (view != null && outline != null) {
                outline.setRoundRect(0, -MainApp.m1, view.getWidth(), view.getHeight(), MainApp.m1);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class QuickListHolder extends RecyclerView.ViewHolder {
        public MyLineFrame u;
        public MyRoundImage v;
        public AppCompatTextView w;
    }

    /* loaded from: classes3.dex */
    public interface SettingFontListener {
        void a(String str, String str2);
    }

    public SettingFontAdapter(String str, SettingFontListener settingFontListener) {
        this.e = settingFontListener;
        this.f = str;
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
        SettingFont.FontItem fontItem;
        List list = this.d;
        if (list != null && i >= 0 && i < list.size() && (fontItem = (SettingFont.FontItem) this.d.get(i)) != null) {
            return fontItem.f17750a;
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        List list;
        SettingFont.FontItem fontItem;
        int i2;
        QuickListHolder quickListHolder = (QuickListHolder) viewHolder;
        if (quickListHolder.f1589a != null && quickListHolder.u != null && (list = this.d) != null && i >= 0 && i < list.size() && (fontItem = (SettingFont.FontItem) this.d.get(i)) != null) {
            quickListHolder.u.setTag(Integer.valueOf(i));
            quickListHolder.u.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingFontAdapter.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingFont.FontItem fontItem2;
                    SettingFontListener settingFontListener;
                    int intValue = ((Integer) view.getTag()).intValue();
                    SettingFontAdapter settingFontAdapter = SettingFontAdapter.this;
                    List list2 = settingFontAdapter.d;
                    if (list2 != null && intValue >= 0 && intValue < list2.size() && (fontItem2 = (SettingFont.FontItem) settingFontAdapter.d.get(intValue)) != null && (settingFontListener = settingFontAdapter.e) != null) {
                        settingFontListener.a(fontItem2.b, fontItem2.f17751c);
                    }
                }
            });
            MyRoundImage myRoundImage = quickListHolder.v;
            int i3 = R.drawable.outline_draft_black_24;
            String str = fontItem.f17751c;
            if (this.g == null) {
                this.g = Pattern.compile("\\p{Punct}");
            }
            myRoundImage.p(-460552, i3, str, this.g);
            if (fontItem.e == null) {
                fontItem.e = MainUtil.w1(quickListHolder.w.getContext(), fontItem.b);
            }
            quickListHolder.w.setTypeface(fontItem.e);
            quickListHolder.w.setText(fontItem.f17751c);
            if (!TextUtils.isEmpty(this.f) && this.f.equals(fontItem.b)) {
                quickListHolder.w.setTextColor(-769226);
            } else {
                AppCompatTextView appCompatTextView = quickListHolder.w;
                if (MainApp.K1) {
                    i2 = -328966;
                } else {
                    i2 = -16777216;
                }
                appCompatTextView.setTextColor(i2);
            }
            if (MainApp.K1) {
                quickListHolder.u.setBackgroundResource(R.drawable.selector_list_back_dark);
            } else {
                quickListHolder.u.setBackgroundResource(R.drawable.selector_list_back);
            }
            quickListHolder.u.h();
        }
    }

    /* JADX WARN: Type inference failed for: r9v3, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder, com.mycompany.app.setting.SettingFontAdapter$QuickListHolder] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        if (context == null) {
            return null;
        }
        if (i == 3) {
            View view = new View(context);
            view.setLayoutParams(new RecyclerView.LayoutParams(-1, MainApp.F1 * 4));
            return new RecyclerView.ViewHolder(view);
        }
        MyLineFrame myLineFrame = new MyLineFrame(context);
        myLineFrame.a(MainApp.E1);
        if (i == 1) {
            myLineFrame.setOutlineProvider(new ViewOutlineProvider());
            myLineFrame.setClipToOutline(true);
        } else if (i == 2) {
            myLineFrame.setOutlineProvider(new ViewOutlineProvider());
            myLineFrame.setClipToOutline(true);
        }
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
        appCompatTextView.setIncludeFontPadding(false);
        linearLayout.addView(appCompatTextView, -2, -2);
        ?? viewHolder = new RecyclerView.ViewHolder(myLineFrame);
        viewHolder.u = myLineFrame;
        viewHolder.v = myRoundImage;
        viewHolder.w = appCompatTextView;
        return viewHolder;
    }

    public final void v(String str) {
        if (!MainUtil.q5(this.f, str)) {
            this.f = str;
            g();
        }
    }
}
