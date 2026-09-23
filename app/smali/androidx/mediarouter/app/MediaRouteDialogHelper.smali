.class final Landroidx/mediarouter/app/MediaRouteDialogHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    new-instance v2, Landroid/util/TypedValue;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    sget v1, Landroidx/mediarouter/R$dimen;->mr_dialog_fixed_width_minor:I

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sget v1, Landroidx/mediarouter/R$dimen;->mr_dialog_fixed_width_major:I

    .line 34
    .line 35
    :goto_1
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 36
    .line 37
    .line 38
    iget p0, v2, Landroid/util/TypedValue;->type:I

    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    if-ne p0, v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    :goto_2
    float-to-int p0, p0

    .line 48
    return p0

    .line 49
    :cond_2
    const/4 v1, 0x6

    .line 50
    if-ne p0, v1, :cond_3

    .line 51
    .line 52
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .line 54
    int-to-float v0, p0

    .line 55
    int-to-float p0, p0

    .line 56
    invoke-virtual {v2, v0, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/4 p0, -0x2

    .line 62
    return p0
.end method
