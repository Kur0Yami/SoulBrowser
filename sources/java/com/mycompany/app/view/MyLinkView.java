package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class MyLinkView extends NestedScrollView {
    public static final /* synthetic */ int S = 0;
    public Context J;
    public MainLinkListener K;
    public List L;
    public LinearLayout M;
    public ArrayList N;
    public ArrayList O;
    public ArrayList P;
    public Drawable Q;
    public boolean R;
    /** Optional long-press listener; receives item id + 1000 (same contract as MyPopupAdapter.k). */
    public MainLinkListener T;

    /* loaded from: classes3.dex */
    public static class MainLinkItem {

        /* renamed from: a, reason: collision with root package name */
        public int f18850a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f18851c;
        public String d;

        public MainLinkItem(int i, int i2, int i3) {
            this.f18850a = i;
            this.b = i2;
            this.f18851c = i3;
        }
    }

    /* loaded from: classes3.dex */
    public interface MainLinkListener {
        void a(View view, int i);
    }

    public MyLinkView(Context context) {
        super(context, null);
        this.J = context;
    }

    private void setItemView(int i) {
        ArrayList arrayList;
        MainLinkItem y = y(i);
        if (y != null && (arrayList = this.N) != null && i >= 0 && i < arrayList.size()) {
            FrameLayout frameLayout = (FrameLayout) this.N.get(i);
            View view = (View) this.O.get(i);
            TextView textView = (TextView) this.P.get(i);
            frameLayout.setTag(Integer.valueOf(i));
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.view.MyLinkView.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i2;
                    MainLinkListener mainLinkListener;
                    Object tag;
                    int i3 = MyLinkView.S;
                    MyLinkView myLinkView = MyLinkView.this;
                    myLinkView.getClass();
                    if (view2 == null || (tag = view2.getTag()) == null || !(tag instanceof Integer)) {
                        i2 = -1;
                    } else {
                        i2 = ((Integer) tag).intValue();
                    }
                    MainLinkItem y2 = myLinkView.y(i2);
                    if (y2 != null && (mainLinkListener = myLinkView.K) != null) {
                        mainLinkListener.a(view2, y2.f18850a);
                    }
                }
            });
            frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.mycompany.app.view.MyLinkView.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view2) {
                    Object tag;
                    MainLinkItem y2;
                    MainLinkListener mainLinkListener;
                    MyLinkView myLinkView = MyLinkView.this;
                    if (myLinkView.T == null || view2 == null || (tag = view2.getTag()) == null || !(tag instanceof Integer) || (y2 = myLinkView.y(((Integer) tag).intValue())) == null || (mainLinkListener = myLinkView.T) == null) {
                        return false;
                    }
                    mainLinkListener.a(view2, y2.f18850a + 1000);
                    return true;
                }
            });
            int i2 = y.b;
            if (i2 > 0) {
                view.setBackgroundResource(i2);
                view.setAlpha(1.0f);
            } else {
                view.setBackground(null);
            }
            int i3 = y.f18851c;
            if (i3 > 0) {
                textView.setText(i3);
            } else {
                textView.setText(y.d);
            }
            if (MainApp.K1) {
                frameLayout.setBackgroundResource(R.drawable.selector_normal_dark);
                textView.setTextColor(-328966);
            } else {
                frameLayout.setBackgroundResource(R.drawable.selector_normal);
                textView.setTextColor(-16777216);
            }
        }
    }

    private void setShadowRect(int i) {
        Drawable drawable = this.Q;
        if (drawable == null || i == 0) {
            return;
        }
        drawable.setBounds(0, 0, i, MainApp.e1);
    }

    public final void A() {
        Context context = this.J;
        if (context == null) {
            return;
        }
        if (this.Q == null) {
            this.Q = MainUtil.S(context, R.drawable.shadow_list_up);
        }
        setShadowRect(getWidth());
        this.R = false;
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (!this.R && this.Q != null) {
            canvas.translate(0.0f, getScrollY());
            this.Q.draw(canvas);
            canvas.translate(0.0f, -r0);
        }
    }

    @Override // androidx.core.widget.NestedScrollView, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        setShadowRect(i);
    }

    public void setItems(List<MainLinkItem> list) {
        this.L = list;
        try {
            z();
        } catch (Exception unused) {
        }
    }

    public void setListener(MainLinkListener mainLinkListener) {
        this.K = mainLinkListener;
    }

    public void setLongListener(MainLinkListener mainLinkListener) {
        this.T = mainLinkListener;
    }

    public final MainLinkItem y(int i) {
        List list = this.L;
        if (list != null && i >= 0 && i < list.size()) {
            return (MainLinkItem) this.L.get(i);
        }
        return null;
    }

    public final void z() {
        int i;
        ArrayList arrayList;
        if (this.J != null) {
            List list = this.L;
            if (list != null) {
                i = list.size();
            } else {
                i = 0;
            }
            if (i == 0) {
                LinearLayout linearLayout = this.M;
                if (linearLayout != null) {
                    linearLayout.removeAllViews();
                    return;
                }
                return;
            }
            if (this.M == null) {
                LinearLayout linearLayout2 = new LinearLayout(this.J);
                this.M = linearLayout2;
                linearLayout2.setOrientation(1);
                addView(this.M, -1, -1);
            }
            if (this.N == null) {
                this.N = new ArrayList();
            }
            if (this.O == null) {
                this.O = new ArrayList();
            }
            if (this.P == null) {
                this.P = new ArrayList();
            }
            int childCount = this.M.getChildCount();
            if (childCount > i) {
                for (int i2 = i; i2 < childCount; i2++) {
                    FrameLayout frameLayout = (FrameLayout) this.N.get(i2);
                    if (frameLayout == null) {
                        break;
                    }
                    this.M.removeView(frameLayout);
                }
            } else if (childCount < i) {
                while (childCount < i) {
                    FrameLayout frameLayout2 = null;
                    if (this.J != null && (arrayList = this.N) != null && childCount >= 0) {
                        if (childCount < arrayList.size()) {
                            frameLayout2 = (FrameLayout) this.N.get(childCount);
                        } else {
                            FrameLayout frameLayout3 = new FrameLayout(this.J);
                            View view = new View(this.J);
                            int G = (int) MainUtil.G(this.J, 20.0f);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, G);
                            layoutParams.topMargin = (int) MainUtil.G(this.J, 14.0f);
                            layoutParams.setMarginStart((int) MainUtil.G(this.J, 22.0f));
                            frameLayout3.addView(view, layoutParams);
                            AppCompatTextView appCompatTextView = new AppCompatTextView(this.J, null);
                            appCompatTextView.setGravity(16);
                            appCompatTextView.setSingleLine(true);
                            appCompatTextView.setTextSize(1, 16.0f);
                            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
                            layoutParams2.setMarginStart((int) MainUtil.G(this.J, 64.0f));
                            layoutParams2.setMarginEnd(MainApp.F1);
                            frameLayout3.addView(appCompatTextView, layoutParams2);
                            this.N.add(frameLayout3);
                            this.O.add(view);
                            this.P.add(appCompatTextView);
                            frameLayout2 = frameLayout3;
                        }
                    }
                    if (frameLayout2 != null) {
                        this.M.addView(frameLayout2, -1, MainApp.g1);
                        childCount++;
                    }
                }
            }
            for (int i3 = 0; i3 < i; i3++) {
                setItemView(i3);
            }
        }
    }
}
