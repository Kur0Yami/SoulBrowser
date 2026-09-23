package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public abstract class OrientationHelper {

    /* renamed from: a, reason: collision with root package name */
    public final RecyclerView.LayoutManager f1551a;
    public int b = IntCompanionObject.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1552c = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.OrientationHelper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends OrientationHelper {
        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.F(view) + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.E(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int d(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.D(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.C(view) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int f() {
            return this.f1551a.n;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int g() {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            return layoutManager.n - layoutManager.L();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int h() {
            return this.f1551a.L();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int i() {
            return this.f1551a.l;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int j() {
            return this.f1551a.m;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int k() {
            return this.f1551a.K();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int l() {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            return (layoutManager.n - layoutManager.K()) - layoutManager.L();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int m(View view) {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            Rect rect = this.f1552c;
            layoutManager.Q(rect, view);
            return rect.right;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int n(View view) {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            Rect rect = this.f1552c;
            layoutManager.Q(rect, view);
            return rect.left;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final void o(int i) {
            this.f1551a.U(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.OrientationHelper$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends OrientationHelper {
        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int b(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.A(view) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.D(view) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int d(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.E(view) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int e(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            this.f1551a.getClass();
            return RecyclerView.LayoutManager.G(view) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int f() {
            return this.f1551a.o;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int g() {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            return layoutManager.o - layoutManager.J();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int h() {
            return this.f1551a.J();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int i() {
            return this.f1551a.m;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int j() {
            return this.f1551a.l;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int k() {
            return this.f1551a.M();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int l() {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            return (layoutManager.o - layoutManager.M()) - layoutManager.J();
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int m(View view) {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            Rect rect = this.f1552c;
            layoutManager.Q(rect, view);
            return rect.bottom;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final int n(View view) {
            RecyclerView.LayoutManager layoutManager = this.f1551a;
            Rect rect = this.f1552c;
            layoutManager.Q(rect, view);
            return rect.top;
        }

        @Override // androidx.recyclerview.widget.OrientationHelper
        public final void o(int i) {
            this.f1551a.V(i);
        }
    }

    public OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.f1551a = layoutManager;
    }

    public static OrientationHelper a(RecyclerView.LayoutManager layoutManager, int i) {
        if (i != 0) {
            if (i == 1) {
                return new OrientationHelper(layoutManager);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return new OrientationHelper(layoutManager);
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m(View view);

    public abstract int n(View view);

    public abstract void o(int i);
}
