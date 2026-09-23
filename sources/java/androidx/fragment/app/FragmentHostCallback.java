package androidx.fragment.app;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public abstract class FragmentHostCallback<E> extends FragmentContainer {

    /* renamed from: c, reason: collision with root package name */
    public final FragmentActivity f1101c;
    public final FragmentActivity f;
    public final Handler g;
    public final FragmentManager h;

    public FragmentHostCallback(FragmentActivity fragmentActivity) {
        Handler handler = new Handler();
        this.h = new FragmentManager();
        this.f1101c = fragmentActivity;
        this.f = fragmentActivity;
        this.g = handler;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public View b(int i) {
        return null;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean c() {
        return true;
    }

    public abstract FragmentActivity e();

    public LayoutInflater f() {
        return LayoutInflater.from(this.f);
    }

    public boolean g(String str) {
        return false;
    }

    public void h() {
    }

    public void d(PrintWriter printWriter, String[] strArr) {
    }
}
