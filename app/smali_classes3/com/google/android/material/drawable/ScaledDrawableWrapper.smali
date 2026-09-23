.class public Lcom/google/android/material/drawable/ScaledDrawableWrapper;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;
    }
.end annotation


# instance fields
.field public f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-direct {v0, p1}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->a(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput-object p1, v0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->g:Z

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-ne v0, p0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;->c:Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    :cond_0
    new-instance v1, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v0}, Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->f:Lcom/google/android/material/drawable/ScaledDrawableWrapper$ScaledDrawableWrapperState;

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/google/android/material/drawable/ScaledDrawableWrapper;->g:Z

    .line 40
    .line 41
    :cond_2
    return-object p0
.end method
