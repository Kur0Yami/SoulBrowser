.class Lcom/google/android/material/navigationrail/NavigationRailView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->d(I)Landroidx/core/graphics/Insets;

    .line 3
    .line 4
    .line 5
    const/16 p1, 0x80

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->d(I)Landroidx/core/graphics/Insets;

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/google/android/material/navigationrail/NavigationRailView;->q:Landroid/view/animation/PathInterpolator;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
