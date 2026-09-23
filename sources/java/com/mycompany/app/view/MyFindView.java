package com.mycompany.app.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;

/* loaded from: classes3.dex */
public class MyFindView extends LinearLayout {

    public Context c;
    public DialogSetFull.DialogApplyListener f;
    public boolean g;
    public WebView h;
    public String i;
    public MyIconView j;
    public MyIconView k;
    public MyIconView l;
    public MyIconView m;
    public MyEditPure n;
    public MyTextFast o;
    public int p;
    public int q;
    public int r;
    public RectF s;
    public Paint t;
    public Paint u;
    public int v;
    public MyIconView w;
    public MyIconView caseIcon;
    public boolean x;
    public boolean caseOn;
    public int y;
    public int z;

    class AnonymousClass1 implements View.OnClickListener {
        @Override
        public final void onClick(View view) {
        }
    }

    class AnonymousClass9 implements Runnable {
        public AnonymousClass9() {
        }

        @Override
        public final void run() {
            MyFindView myFindView = MyFindView.this;
            MyEditPure myEditPure = myFindView.n;
            if (myEditPure == null) {
                return;
            }
            final String pending = myFindView.i;
            myFindView.i = null;
            if (!TextUtils.isEmpty(pending)) {
                // Prefill without focusing or opening the IME. Taking focus here while
                // the URL-bar keyboard is still tearing down replaces the query with
                // a single character via select-all / composition handoff.
                myEditPure.setText(pending);
                try {
                    myEditPure.setSelection(pending.length());
                } catch (Exception unused) {
                }
                return;
            }
            myEditPure.requestFocus();
            myFindView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    MyFindView myFindView2 = MyFindView.this;
                    MyEditPure myEditPure2 = myFindView2.n;
                    if (myEditPure2 == null) {
                        return;
                    }
                    MainUtil.c8(myFindView2.c, myEditPure2);
                }
            }, 200L);
        }
    }

    public MyFindView(Context context) {
        super(context);
        this.c = context;
        setGravity(16);
        setBaselineAligned(false);
        setOrientation(0);
        this.p = 1234;
        this.s = new RectF();
        setOnClickListener(new AnonymousClass1());
    }

    public final void a() {
        MyEditPure myEditPure = this.n;
        if (myEditPure != null) {
            MainUtil.X4(this.c, myEditPure);
            setVisibility(8);
            this.k.setVisibility(8);
            this.n.setText((CharSequence) null);
            d();
            WebView webView = this.h;
            if (webView != null) {
                webView.clearMatches();
                FindWholeWordHelper.clear(webView);
            }
            this.x = false;
            this.caseOn = false;
            A();
        }
    }

    public final void b(int i, int i2, boolean z) {
        Context context;
        if (this.j == null && (context = this.c) != null) {
            MyIconView myIconView = new MyIconView(context);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myIconView.setScaleType(scaleType);
            addView(myIconView, MainApp.g1, MainApp.Y0);
            MyEditPure myEditPure = new MyEditPure(context);
            myEditPure.setSingleLine(true);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setHint(R.string.find_word);
            myEditPure.setImeOptions(268435459);
            myEditPure.setSelectAllOnFocus(true);
            myEditPure.setBackground(null);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, MainApp.Y0);
            layoutParams.weight = 1.0f;
            addView(myEditPure, layoutParams);
            int actionW = MainApp.a1;
            MyIconView myIconView2 = new MyIconView(context);
            myIconView2.setScaleType(scaleType);
            myIconView2.setVisibility(8);
            addView(myIconView2, actionW, MainApp.Y0);
            MyIconView myIconViewCase = new MyIconView(context);
            myIconViewCase.setScaleType(scaleType);
            addView(myIconViewCase, actionW, MainApp.Y0);
            MyIconView myIconViewWw = new MyIconView(context);
            myIconViewWw.setScaleType(scaleType);
            addView(myIconViewWw, actionW, MainApp.Y0);
            MyTextFast myTextFast = new MyTextFast(context);
            int i3 = MainApp.G1;
            myTextFast.setPadding(i3, 0, i3, 0);
            myTextFast.setGravity(16);
            myTextFast.setTextDirection(3);
            myTextFast.setTextSize(1, 16.0f);
            addView(myTextFast, -2, MainApp.Y0);
            MyIconView myIconView3 = new MyIconView(context);
            myIconView3.setScaleType(scaleType);
            addView(myIconView3, actionW, MainApp.Y0);
            MyIconView myIconView4 = new MyIconView(context);
            myIconView4.setScaleType(scaleType);
            addView(myIconView4, actionW, MainApp.Y0);
            this.j = myIconView;
            this.k = myIconView2;
            this.caseIcon = myIconViewCase;
            this.w = myIconViewWw;
            this.l = myIconView3;
            this.m = myIconView4;
            this.n = myEditPure;
            this.o = myTextFast;
            myIconView.v(false, true);
            this.k.v(false, true);
            this.caseIcon.v(false, true);
            this.w.v(false, true);
            this.l.v(false, true);
            this.m.v(false, true);
            d();
            e(i, i2, z);
            this.j.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DialogSetFull.DialogApplyListener dialogApplyListener = MyFindView.this.f;
                    if (dialogApplyListener != null) {
                        dialogApplyListener.a();
                    }
                }
            });
            this.k.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MyFindView myFindView = MyFindView.this;
                    MyIconView myIconView5 = myFindView.k;
                    if (myIconView5 != null) {
                        myIconView5.setVisibility(8);
                        myFindView.n.setText((CharSequence) null);
                        myFindView.d();
                        WebView webView = myFindView.h;
                        if (webView != null) {
                            webView.clearMatches();
                            FindWholeWordHelper.clear(webView);
                        }
                    }
                }
            });
            this.caseIcon.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MyFindView myFindView = MyFindView.this;
                    myFindView.caseOn = !myFindView.caseOn;
                    myFindView.A();
                    myFindView.B();
                }
            });
            this.w.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MyFindView myFindView = MyFindView.this;
                    myFindView.x = !myFindView.x;
                    myFindView.A();
                    myFindView.B();
                }
            });
            this.l.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MyFindView myFindView = MyFindView.this;
                    if (myFindView.usesCustomFind()) {
                        myFindView.C(false);
                        return;
                    }
                    WebView webView = myFindView.h;
                    if (webView != null) {
                        webView.findNext(false);
                    }
                }
            });
            this.m.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MyFindView myFindView = MyFindView.this;
                    if (myFindView.usesCustomFind()) {
                        myFindView.C(true);
                        return;
                    }
                    WebView webView = myFindView.h;
                    if (webView != null) {
                        webView.findNext(true);
                    }
                }
            });
            this.h.setFindListener(new WebView.FindListener() {
                @Override
                public final void onFindResultReceived(int i4, int i5, boolean z2) {
                    if (z2) {
                        MyFindView myFindView = MyFindView.this;
                        if (myFindView.usesCustomFind() || myFindView.o == null) {
                            return;
                        }
                        if (i5 == 0) {
                            myFindView.d();
                            return;
                        }
                        myFindView.o.setText((i4 + 1) + " / " + i5);
                        myFindView.o.setAlpha(1.0f);
                        myFindView.l.setEnabled(true);
                        myFindView.m.setEnabled(true);
                    }
                }
            });
            MainUtil.c5(this.n);
            this.n.addTextChangedListener(new TextWatcher() {
                @Override
                public final void afterTextChanged(Editable editable) {
                    MyFindView myFindView = MyFindView.this;
                    if (myFindView.k != null) {
                        if (TextUtils.isEmpty(editable)) {
                            myFindView.k.setVisibility(8);
                            myFindView.d();
                            WebView webView = myFindView.h;
                            if (webView != null) {
                                webView.clearMatches();
                                FindWholeWordHelper.clear(webView);
                            }
                            return;
                        }
                        myFindView.k.setVisibility(0);
                        myFindView.B();
                    }
                }

                @Override
                public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                }

                @Override
                public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                }
            });
            this.n.setOnEditorActionListener(new TextView.OnEditorActionListener() {
                @Override
                public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                    MyFindView myFindView = MyFindView.this;
                    if (myFindView.usesCustomFind()) {
                        myFindView.C(true);
                        return true;
                    }
                    WebView webView = myFindView.h;
                    if (webView != null) {
                        webView.findNext(true);
                    }
                    return true;
                }
            });
            if (getVisibility() != 0) {
                return;
            }
            f();
        }
    }

    public final void c() {
        WebView webView = this.h;
        if (webView != null) {
            webView.setFindListener(null);
            this.h.clearMatches();
            FindWholeWordHelper.clear(this.h);
            this.h = null;
        }
        MyIconView myIconView = this.j;
        if (myIconView != null) {
            myIconView.m();
            this.j = null;
        }
        MyIconView myIconView2 = this.k;
        if (myIconView2 != null) {
            myIconView2.m();
            this.k = null;
        }
        MyIconView myIconViewCase = this.caseIcon;
        if (myIconViewCase != null) {
            myIconViewCase.m();
            this.caseIcon = null;
        }
        MyIconView myIconViewWw = this.w;
        if (myIconViewWw != null) {
            myIconViewWw.m();
            this.w = null;
        }
        MyIconView myIconView3 = this.l;
        if (myIconView3 != null) {
            myIconView3.m();
            this.l = null;
        }
        MyIconView myIconView4 = this.m;
        if (myIconView4 != null) {
            myIconView4.m();
            this.m = null;
        }
        this.c = null;
        this.f = null;
        this.i = null;
        this.n = null;
        this.o = null;
        this.s = null;
        this.t = null;
        this.u = null;
    }

    public final void d() {
        MyTextFast myTextFast = this.o;
        if (myTextFast == null) {
            return;
        }
        myTextFast.setText("0 / 0");
        this.o.setAlpha(0.4f);
        this.l.setEnabled(false);
        this.m.setEnabled(false);
        this.y = 0;
        this.z = 0;
    }

    @Override
    public final void dispatchDraw(Canvas canvas) {
        Paint paint;
        int i = this.q;
        if (i != 0) {
            canvas.drawColor(i);
        }
        RectF rectF = this.s;
        if (rectF != null && (paint = this.t) != null) {
            float f = MainApp.E1;
            canvas.drawRoundRect(rectF, f, f, paint);
        }
        super.dispatchDraw(canvas);
        if (this.v != 0 && this.u != null) {
            if (this.g) {
                canvas.drawLine(0.0f, getHeight() - 0.0f, getWidth(), getHeight() - 0.0f, this.u);
            } else {
                canvas.drawLine(0.0f, 0.0f, getWidth(), 0.0f, this.u);
            }
        }
    }

    public final void e(int i, int i2, boolean z) {
        int i3;
        boolean z2;
        if (this.o != null) {
            if (!this.g) {
                i = 0;
            }
            int s0 = MainUtil.s0(i, z);
            if (this.p == s0) {
                return;
            }
            this.p = s0;
            boolean C5 = MainUtil.C5(z);
            int k = MyIconView.k(s0, false);
            if (C5) {
                i3 = 0;
            } else if (s0 == 0) {
                i3 = -1;
            } else if (s0 == 1) {
                i3 = -16777216;
            } else {
                i3 = s0;
            }
            if (this.q != i3) {
                this.q = i3;
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.t == null) {
                Paint paint = new Paint();
                this.t = paint;
                paint.setAntiAlias(true);
                this.t.setStyle(Paint.Style.FILL);
                z2 = true;
            }
            int l = MyIconView.l(s0, i2, false);
            if (this.r != l) {
                this.r = l;
                this.t.setColor(l);
                z2 = true;
            }
            if (this.u != null) {
                this.u = null;
                this.v = 0;
                z2 = true;
            }
            if (z2) {
                invalidate();
            }
            this.o.setTextColor(k);
            this.n.setTextColor(k);
            this.n.setHintTextColor(MyIconView.k(s0, true));
            if (s0 == 0) {
                this.j.setImageResource(R.drawable.outline_chevron_left_black_24);
                this.k.setImageResource(R.drawable.outline_cancel_black_18);
                this.caseIcon.setImageResource(R.drawable.outline_match_case_black_24);
                this.w.setImageResource(R.drawable.outline_match_word_black_24);
                this.l.setImageResource(R.drawable.outline_keyboard_arrow_up_black_24);
                this.m.setImageResource(R.drawable.outline_keyboard_arrow_down_black_24);
            } else {
                this.j.setImageResource(R.drawable.outline_chevron_left_dark_24);
                this.k.setImageResource(R.drawable.outline_cancel_dark_18);
                this.caseIcon.setImageResource(R.drawable.outline_match_case_dark_24);
                this.w.setImageResource(R.drawable.outline_match_word_dark_24);
                this.l.setImageResource(R.drawable.outline_keyboard_arrow_up_dark_24);
                this.m.setImageResource(R.drawable.outline_keyboard_arrow_down_dark_24);
            }
            float i4 = MyIconView.i(s0);
            this.j.setMaxAlpha(i4);
            this.k.setMaxAlpha(i4);
            this.l.setMaxAlpha(i4);
            this.m.setMaxAlpha(i4);
            int P1 = MainUtil.P1(s0, i2);
            this.j.setBgPreColor(P1);
            this.k.setBgPreColor(P1);
            this.caseIcon.setBgPreColor(P1);
            this.w.setBgPreColor(P1);
            this.l.setBgPreColor(P1);
            this.m.setBgPreColor(P1);
            A();
        }
    }

    public final void f() {
        if (this.n == null) {
            return;
        }
        post(new AnonymousClass9());
    }

    public final boolean usesCustomFind() {
        return this.x || this.caseOn;
    }

    public final void A() {
        float base = MyIconView.i(this.p);
        float dim = base * 0.45f;
        MyIconView caseIcon = this.caseIcon;
        if (caseIcon != null) {
            if (this.caseOn) {
                caseIcon.setMaxAlpha(base);
                caseIcon.setAlpha(base);
            } else {
                caseIcon.setMaxAlpha(dim);
                caseIcon.setAlpha(dim);
            }
            caseIcon.setContentDescription(this.caseOn ? "Match case on" : "Match case");
        }
        MyIconView myIconView = this.w;
        if (myIconView != null) {
            if (this.x) {
                myIconView.setMaxAlpha(base);
                myIconView.setAlpha(base);
            } else {
                myIconView.setMaxAlpha(dim);
                myIconView.setAlpha(dim);
            }
            myIconView.setContentDescription(this.x ? "Match whole word on" : "Match whole word");
        }
    }

    public final void B() {
        WebView webView = this.h;
        MyEditPure edit = this.n;
        if (webView == null || edit == null) {
            return;
        }
        String query = MainUtil.Q0(edit, false);
        if (TextUtils.isEmpty(query)) {
            webView.clearMatches();
            FindWholeWordHelper.clear(webView);
            d();
            return;
        }
        if (usesCustomFind()) {
            webView.clearMatches();
            FindWholeWordHelper.search(webView, query, this.x, this.caseOn, new ValueCallback<Integer>() {
                @Override
                public final void onReceiveValue(Integer count) {
                    MyFindView myFindView = MyFindView.this;
                    int n = count == null ? 0 : count.intValue();
                    myFindView.y = n;
                    if (n <= 0) {
                        myFindView.z = 0;
                        myFindView.d();
                        return;
                    }
                    myFindView.z = 1;
                    if (myFindView.o != null) {
                        myFindView.o.setText("1 / " + n);
                        myFindView.o.setAlpha(1.0f);
                        myFindView.l.setEnabled(true);
                        myFindView.m.setEnabled(true);
                    }
                }
            });
        } else {
            FindWholeWordHelper.clear(webView);
            webView.findAllAsync(query);
        }
    }

    public final void C(final boolean forward) {
        WebView webView = this.h;
        if (webView == null || this.y <= 0) {
            return;
        }
        FindWholeWordHelper.findNext(webView, forward, new ValueCallback<Boolean>() {
            @Override
            public final void onReceiveValue(Boolean found) {
                MyFindView myFindView = MyFindView.this;
                if (found == null || !found.booleanValue() || myFindView.y <= 0) {
                    return;
                }
                if (forward) {
                    myFindView.z++;
                    if (myFindView.z > myFindView.y) {
                        myFindView.z = 1;
                    }
                } else {
                    myFindView.z--;
                    if (myFindView.z < 1) {
                        myFindView.z = myFindView.y;
                    }
                }
                if (myFindView.o != null) {
                    myFindView.o.setText(myFindView.z + " / " + myFindView.y);
                }
            }
        });
    }

    public String getFindText() {
        if (!TextUtils.isEmpty(this.i)) {
            return this.i;
        }
        return MainUtil.Q0(this.n, false);
    }

    @Override
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.s == null) {
            return;
        }
        float paddingBottom = (i2 - getPaddingBottom()) / 2.0f;
        float f = (MainApp.Y0 / 2.0f) - MainApp.F1;
        this.s.set(MainApp.G1, paddingBottom - f, i - MainApp.G1, paddingBottom + f);
    }
}
