.class Lcom/mycompany/app/view/MyDialogBottom$13;
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
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$13;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$13;->c:Lcom/mycompany/app/view/MyDialogBottom;

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
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->R:Z

    .line 14
    .line 15
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->k5(Z)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/view/MyDialogBottom;->S:Z

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    :cond_1
    :goto_0
    move v4, v5

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-nez v2, :cond_1

    .line 34
    .line 35
    sget v2, Lcom/mycompany/app/pref/PrefWeb;->O:I

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    iget v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->T:I

    .line 40
    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    const/16 v2, 0x1a

    .line 45
    .line 46
    if-lt v1, v2, :cond_4

    .line 47
    .line 48
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 49
    .line 50
    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->h()Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->i()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v1, v2, v3, v4, v5}, Lcom/mycompany/app/main/MainUtil;->E7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 66
    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom$13$1;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogBottom$13$1;-><init>(Lcom/mycompany/app/view/MyDialogBottom$13;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
