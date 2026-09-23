package com.bumptech.glide.manager;

import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Util;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

@RequiresApi
/* loaded from: classes.dex */
final class FirstFrameWaiter implements FrameWaiter {

    /* renamed from: a, reason: collision with root package name */
    public final Set f2420a = Collections.newSetFromMap(new WeakHashMap());
    public volatile boolean b;

    @Override // com.bumptech.glide.manager.FrameWaiter
    public final void a(FragmentActivity fragmentActivity) {
        if (this.b || !this.f2420a.add(fragmentActivity)) {
            return;
        }
        final View decorView = fragmentActivity.getWindow().getDecorView();
        decorView.getViewTreeObserver().addOnDrawListener(new ViewTreeObserver.OnDrawListener() { // from class: com.bumptech.glide.manager.FirstFrameWaiter.1
            @Override // android.view.ViewTreeObserver.OnDrawListener
            public final void onDraw() {
                Util.f().post(new Runnable() { // from class: com.bumptech.glide.manager.FirstFrameWaiter.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        HardwareConfigState a2 = HardwareConfigState.a();
                        a2.getClass();
                        Util.a();
                        a2.d.set(true);
                        FirstFrameWaiter.this.b = true;
                        View view = decorView;
                        view.getViewTreeObserver().removeOnDrawListener(this);
                        FirstFrameWaiter.this.f2420a.clear();
                    }
                });
            }
        });
    }
}
