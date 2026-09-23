package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
public class AlertDialog extends AppCompatDialog implements DialogInterface {
    public final AlertController j;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final AlertController.AlertParams f81a;
        public final int b;

        public Builder(Context context) {
            int f = AlertDialog.f(context, 0);
            this.f81a = new AlertController.AlertParams(new ContextThemeWrapper(context, AlertDialog.f(context, f)));
            this.b = f;
        }

        public AlertDialog a() {
            int i;
            Message message;
            final AlertController.AlertParams alertParams = this.f81a;
            AlertDialog alertDialog = new AlertDialog(alertParams.f76a, this.b);
            View view = alertParams.e;
            final AlertController alertController = alertDialog.j;
            if (view != null) {
                alertController.r = view;
            } else {
                CharSequence charSequence = alertParams.d;
                if (charSequence != null) {
                    alertController.d = charSequence;
                    TextView textView = alertController.p;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = alertParams.f77c;
                if (drawable != null) {
                    alertController.n = drawable;
                    ImageView imageView = alertController.o;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.o.setImageDrawable(drawable);
                    }
                }
            }
            CharSequence charSequence2 = alertParams.f;
            if (charSequence2 != null) {
                DialogInterface.OnClickListener onClickListener = alertParams.g;
                if (onClickListener != null) {
                    message = alertController.z.obtainMessage(-2, onClickListener);
                } else {
                    message = null;
                }
                alertController.j = charSequence2;
                alertController.k = message;
            }
            if (alertParams.i != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) alertParams.b.inflate(alertController.v, (ViewGroup) null);
                if (alertParams.l) {
                    i = alertController.w;
                } else {
                    i = alertController.x;
                }
                ListAdapter listAdapter = alertParams.i;
                if (listAdapter == null) {
                    listAdapter = new ArrayAdapter(alertParams.f76a, i, R.id.text1, (Object[]) null);
                }
                alertController.s = listAdapter;
                alertController.t = alertParams.m;
                if (alertParams.j != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.AlertParams.3
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView adapterView, View view2, int i2, long j) {
                            AlertParams alertParams2 = AlertParams.this;
                            DialogInterface.OnClickListener onClickListener2 = alertParams2.j;
                            AlertController alertController2 = alertController;
                            onClickListener2.onClick(alertController2.b, i2);
                            if (!alertParams2.l) {
                                alertController2.b.dismiss();
                            }
                        }
                    });
                }
                if (alertParams.l) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.e = recycleListView;
            }
            View view2 = alertParams.k;
            if (view2 != null) {
                alertController.f = view2;
                alertController.g = false;
            }
            alertDialog.setCancelable(true);
            alertDialog.setCanceledOnTouchOutside(true);
            alertDialog.setOnCancelListener(null);
            alertDialog.setOnDismissListener(null);
            DialogInterface.OnKeyListener onKeyListener = alertParams.h;
            if (onKeyListener != null) {
                alertDialog.setOnKeyListener(onKeyListener);
            }
            return alertDialog;
        }
    }

    public AlertDialog(ContextThemeWrapper contextThemeWrapper, int i) {
        super(contextThemeWrapper, f(contextThemeWrapper, i));
        this.j = new AlertController(getContext(), this, getWindow());
    }

    public static int f(Context context, int i) {
        if (((i >>> 24) & KotlinVersion.MAX_COMPONENT_VALUE) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public final AlertController.RecycleListView e() {
        return this.j.e;
    }

    @Override // androidx.appcompat.app.AppCompatDialog, androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        boolean z;
        int i;
        boolean z2;
        int i2;
        boolean z3;
        ListAdapter listAdapter;
        int i3;
        int i4;
        View view;
        View findViewById;
        super.onCreate(bundle);
        AlertController alertController = this.j;
        alertController.b.setContentView(alertController.u);
        Context context = alertController.f73a;
        Window window = alertController.f74c;
        View findViewById2 = window.findViewById(androidx.appcompat.R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(androidx.appcompat.R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(androidx.appcompat.R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(androidx.appcompat.R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(androidx.appcompat.R.id.customPanel);
        View view2 = alertController.f;
        if (view2 == null) {
            view2 = null;
        }
        int i5 = 0;
        if (view2 != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z || !AlertController.a(view2)) {
            window.setFlags(131072, 131072);
        }
        if (z) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(androidx.appcompat.R.id.custom);
            frameLayout.addView(view2, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.g) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (alertController.e != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(androidx.appcompat.R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(androidx.appcompat.R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(androidx.appcompat.R.id.buttonPanel);
        ViewGroup b = AlertController.b(findViewById6, findViewById3);
        ViewGroup b2 = AlertController.b(findViewById7, findViewById4);
        ViewGroup b3 = AlertController.b(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(androidx.appcompat.R.id.scrollView);
        alertController.m = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.m.setNestedScrollingEnabled(false);
        TextView textView = (TextView) b2.findViewById(R.id.message);
        alertController.q = textView;
        if (textView != null) {
            textView.setVisibility(8);
            alertController.m.removeView(alertController.q);
            if (alertController.e != null) {
                ViewGroup viewGroup2 = (ViewGroup) alertController.m.getParent();
                int indexOfChild = viewGroup2.indexOfChild(alertController.m);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(alertController.e, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                b2.setVisibility(8);
            }
        }
        Button button = (Button) b3.findViewById(R.id.button1);
        alertController.h = button;
        View.OnClickListener onClickListener = alertController.A;
        button.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(null)) {
            alertController.h.setVisibility(8);
            i = 0;
        } else {
            alertController.h.setText((CharSequence) null);
            alertController.h.setVisibility(0);
            i = 1;
        }
        Button button2 = (Button) b3.findViewById(R.id.button2);
        alertController.i = button2;
        button2.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(alertController.j)) {
            alertController.i.setVisibility(8);
        } else {
            alertController.i.setText(alertController.j);
            alertController.i.setVisibility(0);
            i |= 2;
        }
        Button button3 = (Button) b3.findViewById(R.id.button3);
        alertController.l = button3;
        button3.setOnClickListener(onClickListener);
        if (TextUtils.isEmpty(null)) {
            alertController.l.setVisibility(8);
        } else {
            alertController.l.setText((CharSequence) null);
            alertController.l.setVisibility(0);
            i |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(androidx.appcompat.R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i == 1) {
                Button button4 = alertController.h;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i == 2) {
                Button button5 = alertController.i;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i == 4) {
                Button button6 = alertController.l;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i == 0) {
            b3.setVisibility(8);
        }
        if (alertController.r != null) {
            b.addView(alertController.r, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(androidx.appcompat.R.id.title_template).setVisibility(8);
        } else {
            alertController.o = (ImageView) window.findViewById(R.id.icon);
            if (!TextUtils.isEmpty(alertController.d) && alertController.y) {
                TextView textView2 = (TextView) window.findViewById(androidx.appcompat.R.id.alertTitle);
                alertController.p = textView2;
                textView2.setText(alertController.d);
                Drawable drawable = alertController.n;
                if (drawable != null) {
                    alertController.o.setImageDrawable(drawable);
                } else {
                    alertController.p.setPadding(alertController.o.getPaddingLeft(), alertController.o.getPaddingTop(), alertController.o.getPaddingRight(), alertController.o.getPaddingBottom());
                    alertController.o.setVisibility(8);
                }
            } else {
                window.findViewById(androidx.appcompat.R.id.title_template).setVisibility(8);
                alertController.o.setVisibility(8);
                b.setVisibility(8);
            }
        }
        if (viewGroup.getVisibility() != 8) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (b != null && b.getVisibility() != 8) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (b3.getVisibility() != 8) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3 && (findViewById = b2.findViewById(androidx.appcompat.R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i2 != 0) {
            NestedScrollView nestedScrollView2 = alertController.m;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            if (alertController.e != null) {
                view = b.findViewById(androidx.appcompat.R.id.titleDividerNoCustom);
            } else {
                view = null;
            }
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            View findViewById9 = b2.findViewById(androidx.appcompat.R.id.textSpacerNoTitle);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        }
        AlertController.RecycleListView recycleListView = alertController.e;
        if (recycleListView != null && (!z3 || i2 == 0)) {
            int paddingLeft = recycleListView.getPaddingLeft();
            if (i2 != 0) {
                i3 = recycleListView.getPaddingTop();
            } else {
                i3 = recycleListView.f80c;
            }
            int paddingRight = recycleListView.getPaddingRight();
            if (z3) {
                i4 = recycleListView.getPaddingBottom();
            } else {
                i4 = recycleListView.f;
            }
            recycleListView.setPadding(paddingLeft, i3, paddingRight, i4);
        }
        if (!z2) {
            ViewGroup viewGroup3 = alertController.e;
            if (viewGroup3 == null) {
                viewGroup3 = alertController.m;
            }
            if (viewGroup3 != null) {
                if (z3) {
                    i5 = 2;
                }
                View findViewById10 = window.findViewById(androidx.appcompat.R.id.scrollIndicatorUp);
                View findViewById11 = window.findViewById(androidx.appcompat.R.id.scrollIndicatorDown);
                ViewCompat.J(viewGroup3, i2 | i5);
                if (findViewById10 != null) {
                    b2.removeView(findViewById10);
                }
                if (findViewById11 != null) {
                    b2.removeView(findViewById11);
                }
            }
        }
        AlertController.RecycleListView recycleListView2 = alertController.e;
        if (recycleListView2 != null && (listAdapter = alertController.s) != null) {
            recycleListView2.setAdapter(listAdapter);
            int i6 = alertController.t;
            if (i6 > -1) {
                recycleListView2.setItemChecked(i6, true);
                recycleListView2.setSelection(i6);
            }
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.j.m;
        if (nestedScrollView != null && nestedScrollView.c(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.j.m;
        if (nestedScrollView != null && nestedScrollView.c(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.AppCompatDialog, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.j;
        alertController.d = charSequence;
        TextView textView = alertController.p;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
