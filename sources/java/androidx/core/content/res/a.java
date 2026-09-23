package androidx.core.content.res;

import android.view.View;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f677c;
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    public /* synthetic */ a(int i, int i2, Object obj) {
        this.f677c = i2;
        this.g = obj;
        this.f = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f677c) {
            case 0:
                ((ResourcesCompat.FontCallback) this.g).b(this.f);
                return;
            default:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.g;
                View view = (View) sideSheetBehavior.t.get();
                if (view != null) {
                    sideSheetBehavior.A(this.f, view, false);
                    return;
                }
                return;
        }
    }
}
