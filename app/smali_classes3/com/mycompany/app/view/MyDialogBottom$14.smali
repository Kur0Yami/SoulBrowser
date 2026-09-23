.class Lcom/mycompany/app/view/MyDialogBottom$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$14;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$14;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->h()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->i()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-boolean v4, v0, Lcom/mycompany/app/view/MyDialogBottom;->j:Z

    .line 24
    .line 25
    iget-boolean v5, v0, Lcom/mycompany/app/view/MyDialogBottom;->k:Z

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v7, 0x1e

    .line 33
    .line 34
    if-ge v6, v7, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    if-nez v3, :cond_3

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    if-nez v4, :cond_4

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->a(I)V

    .line 50
    .line 51
    .line 52
    :cond_4
    if-nez v5, :cond_5

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    invoke-virtual {v3, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->a(I)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 59
    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    return-void

    .line 63
    :cond_6
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$14$1;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$14$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$14;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method
