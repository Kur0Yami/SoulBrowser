.class Lcom/mycompany/app/dialog/DialogEditArea$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogEditArea$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$7$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$7$1;->c:Lcom/mycompany/app/dialog/DialogEditArea$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogEditArea$7;->c:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditArea;->q0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v8, v0, Lcom/mycompany/app/dialog/DialogEditArea;->s0:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->H()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 30
    .line 31
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v4, v3

    .line 39
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 43
    .line 44
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditArea$11;

    .line 45
    .line 46
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditArea$11;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    .line 51
    .line 52
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->n0:Z

    .line 53
    .line 54
    const/4 v2, 0x1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 58
    .line 59
    iput-boolean v2, v1, Lcom/mycompany/app/dialog/DialogWebView;->A1:Z

    .line 60
    .line 61
    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->u0:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, v2}, Lcom/mycompany/app/dialog/DialogEditArea;->D(Ljava/lang/String;Z)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->m0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 75
    .line 76
    iput-object v8, v2, Lcom/mycompany/app/dialog/DialogWebView;->h1:Ljava/lang/String;

    .line 77
    .line 78
    iput-object v1, v2, Lcom/mycompany/app/dialog/DialogWebView;->i1:Ljava/lang/String;

    .line 79
    .line 80
    :goto_0
    const/4 v1, 0x0

    .line 81
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 82
    .line 83
    return-void
.end method
