.class Lcom/google/android/material/shape/ShapeableDelegateV22;
.super Lcom/google/android/material/shape/ShapeableDelegate;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation


# direct methods
.method private a(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/material/shape/ShapeableDelegateV22$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeableDelegateV22$1;-><init>(Lcom/google/android/material/shape/ShapeableDelegateV22;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
