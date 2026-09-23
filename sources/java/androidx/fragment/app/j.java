package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.SpecialEffectsController;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1159c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ SpecialEffectsController.Operation g;

    public /* synthetic */ j(Object obj, SpecialEffectsController.Operation operation, int i) {
        this.f1159c = i;
        this.f = obj;
        this.g = operation;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1159c) {
            case 0:
                SpecialEffectsController this$0 = (SpecialEffectsController) this.f;
                SpecialEffectsController.FragmentStateManagerOperation operation = (SpecialEffectsController.FragmentStateManagerOperation) this.g;
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                Intrinsics.checkNotNullParameter(operation, "$operation");
                if (this$0.b.contains(operation)) {
                    SpecialEffectsController.Operation.State state = operation.f1146a;
                    View view = operation.f1147c.mView;
                    Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
                    state.a(view);
                    return;
                }
                return;
            case 1:
                SpecialEffectsController this$02 = (SpecialEffectsController) this.f;
                SpecialEffectsController.FragmentStateManagerOperation operation2 = (SpecialEffectsController.FragmentStateManagerOperation) this.g;
                Intrinsics.checkNotNullParameter(this$02, "this$0");
                Intrinsics.checkNotNullParameter(operation2, "$operation");
                this$02.b.remove(operation2);
                this$02.f1145c.remove(operation2);
                return;
            default:
                DefaultSpecialEffectsController.TransitionInfo transitionInfo = (DefaultSpecialEffectsController.TransitionInfo) this.f;
                Intrinsics.checkNotNullParameter(transitionInfo, "$transitionInfo");
                SpecialEffectsController.Operation operation3 = this.g;
                Intrinsics.checkNotNullParameter(operation3, "$operation");
                transitionInfo.a();
                if (FragmentManager.J(2)) {
                    Log.v("FragmentManager", "Transition for operation " + operation3 + " has completed");
                    return;
                }
                return;
        }
    }
}
