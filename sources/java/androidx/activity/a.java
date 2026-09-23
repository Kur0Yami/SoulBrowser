package androidx.activity;

import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f43c;
    public final /* synthetic */ ComponentActivity f;

    public /* synthetic */ a(ComponentActivity componentActivity, int i) {
        this.f43c = i;
        this.f = componentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f43c;
        ComponentActivity this$0 = this.f;
        switch (i) {
            case 0:
                int i2 = ComponentActivity.x;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                this$0.invalidateOptionsMenu();
                return;
            default:
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                try {
                    ComponentActivity.P(this$0);
                    return;
                } catch (IllegalStateException e) {
                    if (Intrinsics.areEqual(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        return;
                    } else {
                        throw e;
                    }
                } catch (NullPointerException e2) {
                    if (!Intrinsics.areEqual(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e2;
                    }
                    return;
                }
        }
    }
}
