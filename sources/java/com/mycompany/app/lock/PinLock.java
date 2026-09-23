package com.mycompany.app.lock;

import android.widget.LinearLayout;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyButtonText;

/* loaded from: classes3.dex */
public class PinLock extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public PinLockListener f16367c;
    public MyButtonText[] f;
    public MyButtonImage g;
    public String h;

    /* loaded from: classes3.dex */
    public interface PinLockListener {
        void a(String str);
    }

    public String getInput() {
        return this.h;
    }

    public void setListener(PinLockListener pinLockListener) {
        this.f16367c = pinLockListener;
    }
}
