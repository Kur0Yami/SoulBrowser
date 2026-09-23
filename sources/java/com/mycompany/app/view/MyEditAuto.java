package com.mycompany.app.view;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Filter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefZtwo;
import com.mycompany.app.web.WebSearchAdapter2;
import java.util.List;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public class MyEditAuto extends AppCompatEditText {
    public MainActivity A;
    public ListPopupWindow B;
    public Filter C;
    public String D;
    public boolean E;
    public String F;
    public int G;
    public String H;
    public int I;
    public String J;
    public int K;
    public String L;
    public int M;
    public final Runnable N;
    public String O;
    public boolean k;
    public EditAutoListener l;
    public KeyBackListener m;
    public List n;
    public String o;
    public boolean p;
    public String q;
    public Paint r;
    public Rect s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public ExecutorService z;

    /* renamed from: com.mycompany.app.view.MyEditAuto$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public interface EditAutoListener {
        boolean a(String str);
    }

    /* loaded from: classes3.dex */
    public interface KeyBackListener {
        boolean a(boolean z, boolean z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.view.View$OnClickListener, java.lang.Object] */
    public MyEditAuto(MainActivity mainActivity) {
        super(mainActivity, null, 0);
        this.N = new Runnable() { // from class: com.mycompany.app.view.MyEditAuto.6
            @Override // java.lang.Runnable
            public final void run() {
                int length;
                String substring;
                MyEditAuto myEditAuto = MyEditAuto.this;
                String str = myEditAuto.o;
                if (TextUtils.isEmpty(str)) {
                    myEditAuto.setTextAppend(null);
                    return;
                }
                List<String> list = myEditAuto.n;
                if (list == null || list.isEmpty()) {
                    myEditAuto.setTextAppend(null);
                    return;
                }
                for (String str2 : list) {
                    if (myEditAuto.n == null || !str.equals(myEditAuto.o) || TextUtils.isEmpty(str2)) {
                        break;
                    }
                    myEditAuto.p = false;
                    if (str2 != null && (length = str2.length()) != 0) {
                        if (length > 4 && str2.startsWith("www.")) {
                            myEditAuto.p = true;
                            substring = str2.substring(4);
                        } else if (length > 2 && str2.startsWith(".", 1)) {
                            myEditAuto.p = true;
                            substring = str2.substring(2);
                        } else if (length > 7 && str2.startsWith("mobile.")) {
                            myEditAuto.p = true;
                            substring = str2.substring(7);
                        }
                        if (TextUtils.isEmpty(substring) && substring.startsWith(str)) {
                            myEditAuto.setTextAppend(substring);
                            return;
                        } else if (myEditAuto.p && str2.startsWith(str)) {
                            myEditAuto.setTextAppend(str2);
                            return;
                        }
                    }
                    substring = str2;
                    if (TextUtils.isEmpty(substring)) {
                    }
                    if (myEditAuto.p) {
                        myEditAuto.setTextAppend(str2);
                        return;
                    }
                }
                myEditAuto.setTextAppend(null);
            }
        };
        this.k = true;
        MainUtil.c5(this);
        int inputType = getInputType();
        if ((inputType & 15) == 1) {
            setRawInputType(inputType | 65536);
        }
        setFocusable(true);
        setOnClickListener(new Object());
        addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.view.MyEditAuto.2

            /* renamed from: c, reason: collision with root package name */
            public boolean f18685c;

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                String str;
                MyEditAuto myEditAuto = MyEditAuto.this;
                if (myEditAuto.l != null) {
                    if (editable != null) {
                        str = editable.toString();
                    } else {
                        str = null;
                    }
                    if (!myEditAuto.l.a(str)) {
                        if (myEditAuto.B != null && this.f18685c && !myEditAuto.f()) {
                            myEditAuto.D = null;
                            return;
                        }
                        if (PrefZtwo.B) {
                            if (!MainUtil.q5(str, myEditAuto.D)) {
                                myEditAuto.D = str;
                            } else {
                                return;
                            }
                        }
                        Filter filter = myEditAuto.C;
                        if (filter != null) {
                            filter.filter(editable);
                        }
                    }
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                MyEditAuto myEditAuto = MyEditAuto.this;
                if (myEditAuto.B != null) {
                    this.f18685c = myEditAuto.f();
                }
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }
        });
    }

    public static void b(MyEditAuto myEditAuto) {
        String str = myEditAuto.H;
        int i = myEditAuto.I;
        myEditAuto.H = null;
        String str2 = myEditAuto.F;
        if (myEditAuto.k && myEditAuto.G == i && MainUtil.q5(str2, str)) {
            myEditAuto.setTextAppend(null);
            myEditAuto.J = str;
            myEditAuto.K = i;
            myEditAuto.post(new Runnable() { // from class: com.mycompany.app.view.MyEditAuto.4
                @Override // java.lang.Runnable
                public final void run() {
                    final MyEditAuto myEditAuto2 = MyEditAuto.this;
                    String str3 = myEditAuto2.J;
                    int i2 = myEditAuto2.K;
                    myEditAuto2.J = null;
                    String str4 = myEditAuto2.F;
                    if (myEditAuto2.k && myEditAuto2.G == i2 && MainUtil.q5(str4, str3)) {
                        myEditAuto2.setText(str3);
                        if (i2 >= 0 && !TextUtils.isEmpty(str3)) {
                            myEditAuto2.L = str3;
                            myEditAuto2.M = i2;
                            myEditAuto2.post(new Runnable() { // from class: com.mycompany.app.view.MyEditAuto.5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    MyEditAuto myEditAuto3 = MyEditAuto.this;
                                    String str5 = myEditAuto3.L;
                                    int i3 = myEditAuto3.M;
                                    myEditAuto3.L = null;
                                    String str6 = myEditAuto3.F;
                                    myEditAuto3.F = null;
                                    if (myEditAuto3.k && myEditAuto3.G == i3 && MainUtil.q5(str6, str5) && i3 >= 0 && !TextUtils.isEmpty(str5)) {
                                        try {
                                            myEditAuto3.setSelection(i3);
                                        } catch (Exception unused) {
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextAppend(String str) {
        int i;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.o)) {
            TextPaint paint = getPaint();
            if (paint != null) {
                if (this.r == null) {
                    Paint paint2 = new Paint();
                    this.r = paint2;
                    paint2.setAntiAlias(true);
                    this.r.setColor(-2137994503);
                }
                if (this.s == null) {
                    this.s = new Rect();
                }
                String str2 = this.o;
                paint.getTextBounds(str2, 0, str2.length(), this.s);
                int i2 = this.s.right;
                if (!str.equals(this.q)) {
                    this.q = str;
                    if (paint.getColor() != getCurrentTextColor()) {
                        paint.setColor(getCurrentTextColor());
                    }
                    paint.getTextBounds(str, 0, str.length(), this.s);
                    this.t = this.s.right;
                }
                Rect rect = this.s;
                rect.left = i2;
                rect.right = this.t;
                if (this.u == 0) {
                    this.u = MainApp.E1 - MainApp.G1;
                }
                int round = Math.round((paint.ascent() + paint.descent()) / 2.0f);
                this.v = round;
                Rect rect2 = this.s;
                if (rect2 != null && (i = this.y) != 0) {
                    int i3 = this.u;
                    rect2.top = i - i3;
                    rect2.bottom = i3 + i;
                    this.w = i - round;
                }
                postInvalidate();
                return;
            }
            return;
        }
        if (this.q != null) {
            this.q = null;
            postInvalidate();
        }
    }

    public final void d() {
        if (this.B != null) {
            MainActivity mainActivity = this.A;
            if (mainActivity != null) {
                mainActivity.a1 = null;
            }
            if (!f()) {
                return;
            }
            this.B.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        String str;
        if (motionEvent.getActionMasked() == 0 && (str = this.q) != null) {
            i(-1, str);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return true;
        }
    }

    public final void e() {
        this.n = null;
        this.o = null;
        setTextAppend(null);
    }

    public final boolean f() {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return false;
        }
        return listPopupWindow.isShowing();
    }

    public final void g() {
        this.k = false;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
    }

    @Override // android.widget.EditText, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return MyEditAuto.class.getName();
    }

    public String getAutoText() {
        if (!TextUtils.isEmpty(this.q)) {
            return MainUtil.a7(this.q);
        }
        return MainUtil.a7(MainUtil.Q0(this, false));
    }

    public int getDropDownHeight() {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return 0;
        }
        return listPopupWindow.getHeight();
    }

    public int getDropDownHorizontalOffset() {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return 0;
        }
        return listPopupWindow.getHorizontalOffset();
    }

    public int getDropDownVerticalOffset() {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return 0;
        }
        return listPopupWindow.getVerticalOffset();
    }

    public int getDropDownWidth() {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return 0;
        }
        return listPopupWindow.getWidth();
    }

    public String getSelected() {
        String Q0 = MainUtil.Q0(this, false);
        if (TextUtils.isEmpty(Q0)) {
            return null;
        }
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (selectionStart >= 0 && selectionStart < selectionEnd && selectionEnd <= Q0.length()) {
            return Q0.substring(selectionStart, selectionEnd);
        }
        return Q0;
    }

    public final boolean h(String str) {
        int length;
        List list = this.n;
        if (list != null && !list.isEmpty()) {
            if (this.q != null && this.o != null) {
                if (str == null) {
                    length = 0;
                } else {
                    length = str.length();
                }
                if (length < this.o.length() && (length <= 0 || this.o.startsWith(str))) {
                    this.q = null;
                    this.O = this.o;
                    post(new Runnable() { // from class: com.mycompany.app.view.MyEditAuto.7
                        @Override // java.lang.Runnable
                        public final void run() {
                            int length2;
                            MyEditAuto myEditAuto = MyEditAuto.this;
                            try {
                                String str2 = myEditAuto.O;
                                myEditAuto.O = null;
                                if (str2 != null && (length2 = str2.length()) != 0 && str2.equals(myEditAuto.o)) {
                                    myEditAuto.setText(str2);
                                    myEditAuto.setSelection(length2);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                    return true;
                }
            }
            this.O = null;
            if (TextUtils.isEmpty(str)) {
                this.o = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                setTextAppend(null);
                return false;
            }
            if (this.o == null) {
                this.o = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (str.length() < this.o.length()) {
                this.o = str;
                setTextAppend(null);
                return false;
            }
            if (!str.equals(this.o)) {
                this.o = str;
                Runnable runnable = this.N;
                ExecutorService executorService = this.z;
                if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
                    executorService = MainApp.i(getContext());
                    if (executorService != null) {
                        this.z = executorService;
                    }
                }
                try {
                    executorService.execute(runnable);
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    public final void i(int i, String str) {
        this.o = str;
        this.F = str;
        this.G = i;
        this.H = str;
        this.I = i;
        post(new Runnable() { // from class: com.mycompany.app.view.MyEditAuto.3
            @Override // java.lang.Runnable
            public final void run() {
                MyEditAuto.b(MyEditAuto.this);
            }
        });
    }

    public final void j() {
        ListView listView;
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow != null) {
            MainActivity mainActivity = this.A;
            if (mainActivity != null) {
                mainActivity.a1 = this;
            }
            listPopupWindow.setInputMethodMode(1);
            this.B.show();
            if (Build.VERSION.SDK_INT < 31 && !this.E && (listView = this.B.getListView()) != null) {
                listView.setOverScrollMode(2);
                this.E = true;
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.view.View
    public final void onDetachedFromWindow() {
        d();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDisplayHint(int i) {
        super.onDisplayHint(i);
        if (i == 4) {
            d();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Paint paint;
        Rect rect;
        if (this.q != null && (paint = this.r) != null && (rect = this.s) != null) {
            try {
                canvas.drawRect(rect, paint);
                canvas.drawText(this.q, 0.0f, this.w, getPaint());
                return;
            } catch (Exception unused) {
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if ((Build.VERSION.SDK_INT < 24 || !isTemporarilyDetached()) && !z) {
            d();
        }
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        boolean f = f();
        if (f && this.B.onKeyDown(i, keyEvent)) {
            return true;
        }
        if (i == 61 && f && keyEvent.hasNoModifiers()) {
            return true;
        }
        boolean onKeyDown = super.onKeyDown(i, keyEvent);
        if (onKeyDown && f) {
            this.B.clearListSelection();
        }
        return onKeyDown;
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        boolean z;
        if (this.m != null && i == 4) {
            if (keyEvent.getAction() == 1) {
                z = true;
            } else {
                z = false;
            }
            if (this.m.a(z, false)) {
                return true;
            }
        }
        if ((i == 4 || i == 111) && f()) {
            int action = keyEvent.getAction();
            if (action == 0) {
                if (keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
            } else if (action == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    d();
                    return true;
                }
            }
        }
        return super.onKeyPreIme(i, keyEvent);
    }

    @Override // android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        boolean f = f();
        if (f && this.B.onKeyUp(i, keyEvent) && (i == 23 || i == 61 || i == 66 || i == 160)) {
            if (keyEvent.hasNoModifiers()) {
                d();
            }
            return true;
        }
        if (i == 61 && f && keyEvent.hasNoModifiers()) {
            d();
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int round = Math.round(i2 / 2.0f);
        this.y = round;
        Rect rect = this.s;
        if (rect != null && round != 0) {
            int i5 = this.u;
            rect.top = round - i5;
            rect.bottom = i5 + round;
            this.w = round - this.v;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (!z) {
            d();
        }
    }

    public void setAutoList(List<String> list) {
        this.n = list;
    }

    public void setDropDownAdapter(WebSearchAdapter2 webSearchAdapter2) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        if (webSearchAdapter2 != null) {
            this.C = webSearchAdapter2.z;
        } else {
            this.C = null;
        }
        this.D = null;
        listPopupWindow.setAdapter(webSearchAdapter2);
    }

    public void setDropDownAnchor(View view) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        if (view != null) {
            listPopupWindow.setAnchorView(view);
        } else {
            listPopupWindow.setAnchorView(this);
        }
    }

    public void setDropDownBackgroundDrawable(Drawable drawable) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        listPopupWindow.setBackgroundDrawable(drawable);
    }

    public void setDropDownFilter(Filter filter) {
        this.C = filter;
        this.D = null;
    }

    public void setDropDownHeight(int i) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        listPopupWindow.setHeight(i);
    }

    public void setDropDownHorizontalOffset(int i) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        listPopupWindow.setHorizontalOffset(i);
    }

    public void setDropDownVerticalOffset(int i) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        listPopupWindow.setVerticalOffset(i);
    }

    public void setDropDownWidth(int i) {
        ListPopupWindow listPopupWindow = this.B;
        if (listPopupWindow == null) {
            return;
        }
        listPopupWindow.setWidth(i);
    }

    public void setEditAutoListener(EditAutoListener editAutoListener) {
        this.l = editAutoListener;
    }

    @Override // android.widget.TextView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        if (f()) {
            j();
        }
        return frame;
    }

    public void setOldKeyListener(KeyBackListener keyBackListener) {
        if (MainConst.f16453c) {
            return;
        }
        this.m = keyBackListener;
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        if (this.x == i) {
            return;
        }
        this.x = i;
        super.setTextColor(i);
    }
}
