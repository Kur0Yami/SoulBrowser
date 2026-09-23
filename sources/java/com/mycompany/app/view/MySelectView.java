package com.mycompany.app.view;

import android.content.Context;
import android.view.View;
import com.mycompany.app.main.MainApp;

/* loaded from: classes3.dex */
public class MySelectView extends View {

    /* renamed from: c, reason: collision with root package name */
    public int f18958c;
    public float f;
    public boolean g;
    public boolean h;
    public long i;
    public final Runnable j;
    public final Runnable k;

    public MySelectView(Context context) {
        super(context);
        this.j = new Runnable() { // from class: com.mycompany.app.view.MySelectView.1
            @Override // java.lang.Runnable
            public final void run() {
                MySelectView mySelectView = MySelectView.this;
                if (!mySelectView.g) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis() - mySelectView.i;
                if (currentTimeMillis > 500) {
                    mySelectView.g = false;
                    mySelectView.h = true;
                    mySelectView.f18958c = -1;
                    mySelectView.setAlpha(mySelectView.f);
                    mySelectView.i = System.currentTimeMillis();
                    MainApp.N(mySelectView.getContext(), mySelectView.k);
                    return;
                }
                mySelectView.setAlpha((((float) currentTimeMillis) / 500.0f) * mySelectView.f);
                if (mySelectView.getVisibility() != 0) {
                    mySelectView.setVisibility(0);
                }
                MainApp.N(mySelectView.getContext(), mySelectView.j);
            }
        };
        this.k = new Runnable() { // from class: com.mycompany.app.view.MySelectView.2
            @Override // java.lang.Runnable
            public final void run() {
                MySelectView mySelectView = MySelectView.this;
                if (!mySelectView.h) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis() - mySelectView.i;
                if (currentTimeMillis > 500) {
                    mySelectView.b();
                    return;
                }
                float f = mySelectView.f;
                mySelectView.setAlpha(f - ((((float) currentTimeMillis) / 500.0f) * f));
                MainApp.N(mySelectView.getContext(), mySelectView.k);
            }
        };
        this.f18958c = -1;
        this.f = 0.4f;
    }

    public final void a(int i, int i2) {
        if (this.g) {
            return;
        }
        this.g = true;
        this.h = false;
        this.f18958c = i;
        super.setBackgroundColor(i2);
        this.i = System.currentTimeMillis();
        MainApp.N(getContext(), this.j);
    }

    public final void b() {
        this.g = false;
        this.h = false;
        this.f18958c = -1;
        if (getVisibility() != 8) {
            setVisibility(8);
        }
    }

    public final void c(int i) {
        if (MainApp.K1) {
            a(i, -10395295);
        } else {
            a(i, -5854742);
        }
    }

    public int getChildPos() {
        return this.f18958c;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        b();
        super.onDetachedFromWindow();
    }

    public void setMaxAlpha(float f) {
        this.f = f;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != 0) {
            this.g = false;
            this.h = false;
            this.f18958c = -1;
        }
        super.setVisibility(i);
    }
}
