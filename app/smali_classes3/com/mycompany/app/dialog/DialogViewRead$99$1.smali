.class Lcom/mycompany/app/dialog/DialogViewRead$99$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$99;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$99;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$99$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$99;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$99$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$99;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$99;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->K2:Lcom/mycompany/app/web/WebTransControl;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->K2:Lcom/mycompany/app/web/WebTransControl;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->X1:Lcom/mycompany/app/web/WebTransControl;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_1
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->X1:Lcom/mycompany/app/web/WebTransControl;

    .line 19
    .line 20
    :try_start_0
    new-instance v1, Lcom/mycompany/app/view/MyDialogRelative;

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->g:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->W1:Lcom/mycompany/app/view/MyDialogRelative;

    .line 28
    .line 29
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 34
    .line 35
    const v3, -0x4f4f50

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyDialogRelative;->d(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget v2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 43
    .line 44
    const/high16 v3, -0x1000000

    .line 45
    .line 46
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/view/MyDialogRelative;->d(II)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->X1:Lcom/mycompany/app/web/WebTransControl;

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c2:I

    .line 55
    .line 56
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 57
    .line 58
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogViewRead;->e2:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v4, v2, v3}, Lcom/mycompany/app/web/WebTransControl;->f(Ljava/lang/String;IZ)V

    .line 61
    .line 62
    .line 63
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->X1:Lcom/mycompany/app/web/WebTransControl;

    .line 64
    .line 65
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$100;

    .line 66
    .line 67
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$100;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebTransControl;->setListener(Lcom/mycompany/app/web/WebTransControl$TransCtrlListener;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->W1:Lcom/mycompany/app/view/MyDialogRelative;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->X1:Lcom/mycompany/app/web/WebTransControl;

    .line 76
    .line 77
    const/4 v3, -0x1

    .line 78
    const/4 v4, -0x2

    .line 79
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/mycompany/app/view/MyDialogBottom;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 85
    .line 86
    invoke-direct {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->V1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 90
    .line 91
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->W1:Lcom/mycompany/app/view/MyDialogRelative;

    .line 92
    .line 93
    new-instance v3, Lcom/mycompany/app/dialog/DialogViewRead$101;

    .line 94
    .line 95
    invoke-direct {v3, v0}, Lcom/mycompany/app/dialog/DialogViewRead$101;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->V1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 102
    .line 103
    new-instance v2, Lcom/mycompany/app/dialog/DialogViewRead$102;

    .line 104
    .line 105
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogViewRead$102;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    .line 111
    :catch_0
    :goto_2
    return-void
.end method
