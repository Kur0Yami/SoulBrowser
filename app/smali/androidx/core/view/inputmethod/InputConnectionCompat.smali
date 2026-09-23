.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateConstructorForUtilityClass"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;,
        Landroidx/core/view/inputmethod/InputConnectionCompat$Api25Impl;
    }
.end annotation


# direct methods
.method public static a(Landroidx/appcompat/widget/AppCompatEditText;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/inputmethod/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/core/view/inputmethod/a;-><init>(Landroidx/appcompat/widget/AppCompatEditText;)V

    .line 4
    .line 5
    .line 6
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x19

    .line 9
    .line 10
    if-lt p0, v1, :cond_0

    .line 11
    .line 12
    new-instance p0, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;Landroidx/core/view/inputmethod/a;)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-static {p2}, Landroidx/core/view/inputmethod/EditorInfoCompat;->a(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    array-length p0, p0

    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    new-instance p0, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    .line 27
    .line 28
    invoke-direct {p0, p1, v0}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;Landroidx/core/view/inputmethod/a;)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method
