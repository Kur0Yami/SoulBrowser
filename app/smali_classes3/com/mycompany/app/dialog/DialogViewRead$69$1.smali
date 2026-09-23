.class Lcom/mycompany/app/dialog/DialogViewRead$69$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$69;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$69;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$69$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$69;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$69$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$69;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$69;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogViewRead;->x2:Ljava/util/List;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->x2:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->R()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->a0()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->G0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/mycompany/app/dialog/DialogSaveSource;->dismiss()V

    .line 30
    .line 31
    .line 32
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->G0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 33
    .line 34
    :cond_2
    if-eqz v5, :cond_4

    .line 35
    .line 36
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 46
    .line 47
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->b0:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v6, Lcom/mycompany/app/dialog/DialogViewRead$70;

    .line 50
    .line 51
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogViewRead$70;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 52
    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogSaveSource;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/mycompany/app/dialog/DialogDownPage$DownPageListener;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->G0:Lcom/mycompany/app/dialog/DialogSaveSource;

    .line 59
    .line 60
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$71;

    .line 61
    .line 62
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$71;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 70
    .line 71
    sget v1, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
