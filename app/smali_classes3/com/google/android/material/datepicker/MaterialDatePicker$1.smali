.class Lcom/google/android/material/datepicker/MaterialDatePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->b:Landroid/view/View;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->c:I

    .line 9
    .line 10
    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->d:I

    .line 11
    .line 12
    iput p5, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    .line 1
    const/4 p1, 0x7

    .line 2
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->d(I)Landroidx/core/graphics/Insets;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->b:Landroid/view/View;

    .line 7
    .line 8
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->a:I

    .line 9
    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget v3, p1, Landroidx/core/graphics/Insets;->b:I

    .line 17
    .line 18
    add-int/2addr v1, v3

    .line 19
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->c:I

    .line 29
    .line 30
    iget v2, p1, Landroidx/core/graphics/Insets;->a:I

    .line 31
    .line 32
    add-int/2addr v1, v2

    .line 33
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->d:I

    .line 34
    .line 35
    iget v3, p1, Landroidx/core/graphics/Insets;->b:I

    .line 36
    .line 37
    add-int/2addr v2, v3

    .line 38
    iget v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$1;->e:I

    .line 39
    .line 40
    iget p1, p1, Landroidx/core/graphics/Insets;->c:I

    .line 41
    .line 42
    add-int/2addr v3, p1

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 48
    .line 49
    .line 50
    return-object p2
.end method
