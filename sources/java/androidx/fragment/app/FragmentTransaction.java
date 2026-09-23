package androidx.fragment.app;

import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class FragmentTransaction {
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f1128c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public String h;
    public int i;
    public CharSequence j;
    public int k;
    public CharSequence l;
    public ArrayList m;
    public ArrayList n;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1127a = new ArrayList();
    public boolean o = false;

    public final void b(Op op) {
        this.f1127a.add(op);
        op.d = this.b;
        op.e = this.f1128c;
        op.f = this.d;
        op.g = this.e;
    }

    public abstract int c();

    public abstract int d();

    public abstract void e();

    public void f(int i, Fragment fragment, String str, int i2) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            FragmentStrictMode.d(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (!cls.isAnonymousClass() && Modifier.isPublic(modifiers) && (!cls.isMemberClass() || Modifier.isStatic(modifiers))) {
            if (str != null) {
                String str3 = fragment.mTag;
                if (str3 != null && !str.equals(str3)) {
                    StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                    sb.append(fragment);
                    sb.append(": was ");
                    throw new IllegalStateException(android.support.v4.media.a.q(sb, fragment.mTag, " now ", str));
                }
                fragment.mTag = str;
            }
            if (i != 0) {
                if (i != -1) {
                    int i3 = fragment.mFragmentId;
                    if (i3 != 0 && i3 != i) {
                        throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
                    }
                    fragment.mFragmentId = i;
                    fragment.mContainerId = i;
                } else {
                    throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
                }
            }
            b(new Op(fragment, i2));
            return;
        }
        throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
    }

    public void g(Fragment fragment) {
        b(new Op(fragment, 3));
    }

    /* loaded from: classes.dex */
    public static final class Op {

        /* renamed from: a, reason: collision with root package name */
        public int f1129a;
        public Fragment b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1130c = false;
        public int d;
        public int e;
        public int f;
        public int g;
        public Lifecycle.State h;
        public Lifecycle.State i;

        public Op(Fragment fragment, int i) {
            this.f1129a = i;
            this.b = fragment;
            Lifecycle.State state = Lifecycle.State.i;
            this.h = state;
            this.i = state;
        }

        public Op(Fragment fragment, int i, int i2) {
            this.f1129a = i;
            this.b = fragment;
            Lifecycle.State state = Lifecycle.State.i;
            this.h = state;
            this.i = state;
        }
    }
}
