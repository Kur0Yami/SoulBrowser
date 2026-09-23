package androidx.fragment.app;

import android.util.Log;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.io.PrintWriter;
import java.util.ArrayList;
import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManager.OpGenerator {
    public final FragmentManager p;
    public boolean q;
    public int r;
    public final boolean s;

    public BackStackRecord(FragmentManager fragmentManager) {
        fragmentManager.F();
        FragmentHostCallback fragmentHostCallback = fragmentManager.u;
        if (fragmentHostCallback != null) {
            fragmentHostCallback.f.getClassLoader();
        }
        this.r = -1;
        this.s = false;
        this.p = fragmentManager;
    }

    @Override // androidx.fragment.app.FragmentManager.OpGenerator
    public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManager.J(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (this.g) {
            FragmentManager fragmentManager = this.p;
            if (fragmentManager.d == null) {
                fragmentManager.d = new ArrayList();
            }
            fragmentManager.d.add(this);
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final int c() {
        return i(false);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final int d() {
        return i(true);
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void e() {
        if (!this.g) {
            this.p.z(this, false);
            return;
        }
        throw new IllegalStateException("This transaction is already being added to the back stack");
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void f(int i, Fragment fragment, String str, int i2) {
        super.f(i, fragment, str, i2);
        fragment.mFragmentManager = this.p;
    }

    @Override // androidx.fragment.app.FragmentTransaction
    public final void g(Fragment fragment) {
        FragmentManager fragmentManager = fragment.mFragmentManager;
        if (fragmentManager != null && fragmentManager != this.p) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
        }
        super.g(fragment);
    }

    public final void h(int i) {
        if (this.g) {
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            ArrayList arrayList = this.f1127a;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i2);
                Fragment fragment = op.b;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (FragmentManager.J(2)) {
                        Log.v("FragmentManager", "Bump nesting of " + op.b + " to " + op.b.mBackStackNesting);
                    }
                }
            }
        }
    }

    public final int i(boolean z) {
        if (!this.q) {
            if (FragmentManager.J(2)) {
                Log.v("FragmentManager", "Commit: " + this);
                PrintWriter printWriter = new PrintWriter(new LogWriter());
                j("  ", printWriter, true);
                printWriter.close();
            }
            this.q = true;
            boolean z2 = this.g;
            FragmentManager fragmentManager = this.p;
            if (z2) {
                this.r = fragmentManager.i.getAndIncrement();
            } else {
                this.r = -1;
            }
            fragmentManager.w(this, z);
            return this.r;
        }
        throw new IllegalStateException("commit already called");
    }

    public final void j(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.h);
            printWriter.print(" mIndex=");
            printWriter.print(this.r);
            printWriter.print(" mCommitted=");
            printWriter.println(this.q);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.b != 0 || this.f1128c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1128c));
            }
            if (this.d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.i != 0 || this.j != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.i));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.j);
            }
            if (this.k != 0 || this.l != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.k));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.l);
            }
        }
        ArrayList arrayList = this.f1127a;
        if (!arrayList.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList.get(i);
                switch (op.f1129a) {
                    case 0:
                        str2 = "NULL";
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    case 10:
                        str2 = "OP_SET_MAX_LIFECYCLE";
                        break;
                    default:
                        str2 = "cmd=" + op.f1129a;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(op.b);
                if (z) {
                    if (op.d != 0 || op.e != 0) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.d));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.e));
                    }
                    if (op.f != 0 || op.g != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.f));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.g));
                    }
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.r >= 0) {
            sb.append(" #");
            sb.append(this.r);
        }
        if (this.h != null) {
            sb.append(" ");
            sb.append(this.h);
        }
        sb.append("}");
        return sb.toString();
    }
}
