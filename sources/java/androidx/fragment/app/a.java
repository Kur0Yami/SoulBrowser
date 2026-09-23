package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.SpecialEffectsController;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1150c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    public /* synthetic */ a(DefaultSpecialEffectsController defaultSpecialEffectsController, View view, DefaultSpecialEffectsController.AnimationInfo animationInfo) {
        this.f1150c = 1;
        this.f = defaultSpecialEffectsController;
        this.g = view;
        this.h = animationInfo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1150c) {
            case 0:
                List awaitingContainerChanges = (List) this.g;
                SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) this.h;
                DefaultSpecialEffectsController this$0 = (DefaultSpecialEffectsController) this.f;
                Intrinsics.checkNotNullParameter(awaitingContainerChanges, "$awaitingContainerChanges");
                Intrinsics.checkNotNullParameter(operation, "$operation");
                Intrinsics.checkNotNullParameter(this$0, "this$0");
                if (awaitingContainerChanges.contains(operation)) {
                    awaitingContainerChanges.remove(operation);
                    View view = operation.f1147c.mView;
                    SpecialEffectsController.Operation.State state = operation.f1146a;
                    Intrinsics.checkNotNullExpressionValue(view, "view");
                    state.a(view);
                    return;
                }
                return;
            case 1:
                DefaultSpecialEffectsController this$02 = (DefaultSpecialEffectsController) this.f;
                View view2 = (View) this.g;
                DefaultSpecialEffectsController.AnimationInfo animationInfo = (DefaultSpecialEffectsController.AnimationInfo) this.h;
                Intrinsics.checkNotNullParameter(this$02, "this$0");
                Intrinsics.checkNotNullParameter(animationInfo, "$animationInfo");
                this$02.f1144a.endViewTransition(view2);
                animationInfo.a();
                return;
            default:
                FragmentTransitionImpl impl = (FragmentTransitionImpl) this.g;
                View view3 = (View) this.h;
                Rect lastInEpicenterRect = (Rect) this.f;
                Intrinsics.checkNotNullParameter(impl, "$impl");
                Intrinsics.checkNotNullParameter(lastInEpicenterRect, "$lastInEpicenterRect");
                FragmentTransitionImpl.g(lastInEpicenterRect, view3);
                return;
        }
    }

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i) {
        this.f1150c = i;
        this.g = obj;
        this.h = obj2;
        this.f = obj3;
    }
}
