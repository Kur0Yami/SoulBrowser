package com.mycompany.app.fragment;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class FragmentTabPath extends HorizontalScrollView {

    /* renamed from: c, reason: collision with root package name */
    public String[] f15705c;
    public FragmentTabListener f;
    public LinearLayout g;

    /* loaded from: classes3.dex */
    public interface FragmentTabListener {
        void a(String str);
    }

    public final void a(int i) {
        int childCount;
        View childAt;
        LinearLayout linearLayout = this.g;
        if (linearLayout != null && (childCount = linearLayout.getChildCount()) != 0 && i >= 0 && i < childCount && (childAt = this.g.getChildAt(i)) != null) {
            scrollTo(Math.round((0.0f * childAt.getWidth()) + (childAt.getLeft() - ((getWidth() - childAt.getWidth()) / 2.0f))), 0);
        }
    }

    public final void b(Context context, String str) {
        String[] split2;
        AppCompatTextView appCompatTextView;
        LinearLayout linearLayout = this.g;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
            String string = context.getString(R.string.bookmark);
            if (this.g != null) {
                String Y6 = MainUtil.Y6(str);
                if (TextUtils.isEmpty(Y6)) {
                    split2 = new String[]{string};
                } else {
                    split2 = (string + "/" + Y6).split("/");
                }
                this.f15705c = split2;
                if (split2 == null || split2.length == 0) {
                    this.f15705c = r13;
                    String[] strArr = {string};
                }
                int length = this.f15705c.length;
                for (int i = 0; i < length; i++) {
                    if (i != 0) {
                        appCompatTextView = a.C(context, null, 17, 1, 16.0f);
                        appCompatTextView.setText("/");
                        this.g.addView(appCompatTextView, -2, MainApp.f1);
                    } else {
                        appCompatTextView = null;
                    }
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                    int i2 = MainApp.F1;
                    appCompatTextView2.setPadding(i2, 0, i2, 0);
                    appCompatTextView2.setGravity(17);
                    appCompatTextView2.setTextSize(1, 16.0f);
                    appCompatTextView2.setTag(Integer.valueOf(i));
                    appCompatTextView2.setText(this.f15705c[i]);
                    if (MainApp.K1) {
                        if (appCompatTextView != null) {
                            appCompatTextView.setTextColor(-328966);
                        }
                        appCompatTextView2.setTextColor(-328966);
                        appCompatTextView2.setBackgroundResource(R.drawable.selector_normal_dark);
                    } else {
                        if (appCompatTextView != null) {
                            appCompatTextView.setTextColor(-16777216);
                        }
                        appCompatTextView2.setTextColor(-16777216);
                        appCompatTextView2.setBackgroundResource(R.drawable.selector_normal_gray);
                    }
                    if (this.f == null) {
                        appCompatTextView2.setClickable(false);
                    } else {
                        appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.fragment.FragmentTabPath.2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                FragmentTabPath fragmentTabPath = FragmentTabPath.this;
                                FragmentTabListener fragmentTabListener = fragmentTabPath.f;
                                if (fragmentTabListener == null) {
                                    return;
                                }
                                String[] strArr2 = fragmentTabPath.f15705c;
                                if (strArr2 != null && strArr2.length >= 2) {
                                    int min = Math.min(((Integer) view.getTag()).intValue() + 1, fragmentTabPath.f15705c.length);
                                    if (min < 2) {
                                        fragmentTabPath.f.a("/");
                                        return;
                                    }
                                    StringBuilder sb = new StringBuilder();
                                    for (int i3 = 1; i3 < min; i3++) {
                                        String str2 = fragmentTabPath.f15705c[i3];
                                        if (!TextUtils.isEmpty(str2)) {
                                            sb.append("/");
                                            sb.append(str2);
                                        }
                                    }
                                    String sb2 = sb.toString();
                                    if (TextUtils.isEmpty(sb2)) {
                                        fragmentTabPath.f.a("/");
                                        return;
                                    } else {
                                        fragmentTabPath.f.a(sb2);
                                        return;
                                    }
                                }
                                fragmentTabListener.a("/");
                            }
                        });
                    }
                    this.g.addView(appCompatTextView2, -2, MainApp.f1);
                }
            }
            if (this.g.getChildCount() == 0) {
                return;
            }
            post(new Runnable() { // from class: com.mycompany.app.fragment.FragmentTabPath.1
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentTabPath fragmentTabPath = FragmentTabPath.this;
                    LinearLayout linearLayout2 = fragmentTabPath.g;
                    if (linearLayout2 != null && linearLayout2.getChildCount() != 0) {
                        fragmentTabPath.a(fragmentTabPath.g.getChildCount() - 1);
                    }
                }
            });
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (motionEvent.getActionMasked() == 0 && (parent = getParent()) != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        LinearLayout linearLayout = this.g;
        if (linearLayout == null || linearLayout.getChildCount() == 0) {
            return;
        }
        a(this.g.getChildCount() - 1);
    }

    public void setListener(FragmentTabListener fragmentTabListener) {
        this.f = fragmentTabListener;
    }
}
