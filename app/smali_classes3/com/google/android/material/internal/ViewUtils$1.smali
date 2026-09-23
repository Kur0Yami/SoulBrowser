.class Lcom/google/android/material/internal/ViewUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    .line 2
    .line 3
    .line 4
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    .line 5
    .line 6
    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    .line 7
    .line 8
    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    .line 9
    .line 10
    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 13
    .line 14
    .line 15
    return-object p2
.end method
