package androidx.core.view;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f842c;
    public final /* synthetic */ View f;

    public /* synthetic */ c(View view, int i) {
        this.f842c = i;
        this.f = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f842c) {
            case 0:
                View view = this.f;
                ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                return;
            case 1:
                View view2 = this.f;
                view2.requestFocus();
                view2.post(new c(view2, 2));
                return;
            default:
                View view3 = this.f;
                ((InputMethodManager) view3.getContext().getSystemService(InputMethodManager.class)).showSoftInput(view3, 1);
                return;
        }
    }
}
