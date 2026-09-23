.class public Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation


# virtual methods
.method public getItemDefaultMarginResId()I
    .locals 1
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$dimen;->design_bottom_navigation_margin:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemLayoutResId()I
    .locals 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    .line 1
    sget v0, Lcom/google/android/material/R$layout;->design_bottom_navigation_item:I

    .line 2
    .line 3
    return v0
.end method
