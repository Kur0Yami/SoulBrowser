.class public final synthetic Lcom/google/android/material/sidesheet/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/google/android/material/sidesheet/SheetDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SheetDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/sidesheet/a;->c:Lcom/google/android/material/sidesheet/SheetDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/sidesheet/a;->c:Lcom/google/android/material/sidesheet/SheetDialog;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/google/android/material/sidesheet/SheetDialog;->m:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/google/android/material/sidesheet/SheetDialog;->n:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
