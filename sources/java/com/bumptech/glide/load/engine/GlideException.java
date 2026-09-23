package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class GlideException extends Exception {
    public static final StackTraceElement[] j = new StackTraceElement[0];

    /* renamed from: c, reason: collision with root package name */
    public final List f2224c;
    public Key f;
    public DataSource g;
    public Class h;
    public final String i;

    public GlideException(String str) {
        this(str, Collections.EMPTY_LIST);
    }

    public static void a(Throwable th, ArrayList arrayList) {
        if (th instanceof GlideException) {
            Iterator it = ((GlideException) th).f2224c.iterator();
            while (it.hasNext()) {
                a((Throwable) it.next(), arrayList);
            }
        } else if (th != null) {
            arrayList.add(th);
        }
    }

    public static void b(List list, Appendable appendable) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            IndentedAppendable indentedAppendable = (IndentedAppendable) appendable;
            indentedAppendable.append("Cause (");
            int i2 = i + 1;
            indentedAppendable.append(String.valueOf(i2));
            indentedAppendable.append(" of ");
            indentedAppendable.append(String.valueOf(size));
            indentedAppendable.append("): ");
            Throwable th = (Throwable) list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).e(indentedAppendable);
            } else {
                c(th, indentedAppendable);
            }
            i = i2;
        }
    }

    public static void c(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public final void d() {
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StringBuilder sb = new StringBuilder("Root cause (");
            int i2 = i + 1;
            sb.append(i2);
            sb.append(" of ");
            sb.append(size);
            sb.append(")");
            Log.i("Glide", sb.toString(), (Throwable) arrayList.get(i));
            i = i2;
        }
    }

    public final void e(Appendable appendable) {
        c(this, appendable);
        try {
            b(this.f2224c, new IndentedAppendable(appendable));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        return this;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.i);
        Class cls = this.h;
        String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (cls != null) {
            str = ", " + this.h;
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        sb.append(str);
        if (this.g != null) {
            str2 = ", " + this.g;
        } else {
            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        sb.append(str2);
        if (this.f != null) {
            str3 = ", " + this.f;
        }
        sb.append(str3);
        ArrayList arrayList = new ArrayList();
        a(this, arrayList);
        if (arrayList.isEmpty()) {
            return sb.toString();
        }
        if (arrayList.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(arrayList.size());
            sb.append(" root causes:");
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Throwable th = (Throwable) obj;
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public final void printStackTrace() {
        e(System.err);
    }

    public GlideException(String str, List list) {
        this.i = str;
        setStackTrace(j);
        this.f2224c = list;
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintStream printStream) {
        e(printStream);
    }

    @Override // java.lang.Throwable
    public final void printStackTrace(PrintWriter printWriter) {
        e(printWriter);
    }

    /* loaded from: classes.dex */
    public static final class IndentedAppendable implements Appendable {

        /* renamed from: c, reason: collision with root package name */
        public final Appendable f2225c;
        public boolean f = true;

        public IndentedAppendable(Appendable appendable) {
            this.f2225c = appendable;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c2) {
            boolean z = this.f;
            Appendable appendable = this.f2225c;
            if (z) {
                this.f = false;
                appendable.append("  ");
            }
            this.f = c2 == '\n';
            appendable.append(c2);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            append(charSequence, 0, charSequence.length());
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i, int i2) {
            if (charSequence == null) {
                charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            boolean z = this.f;
            Appendable appendable = this.f2225c;
            boolean z2 = false;
            if (z) {
                this.f = false;
                appendable.append("  ");
            }
            if (charSequence.length() > 0 && charSequence.charAt(i2 - 1) == '\n') {
                z2 = true;
            }
            this.f = z2;
            appendable.append(charSequence, i, i2);
            return this;
        }
    }
}
