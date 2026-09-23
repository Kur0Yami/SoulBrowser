.class Lcom/mycompany/app/dialog/DialogExtract$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$2;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$2;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 17
    .line 18
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 24
    .line 25
    const v2, -0x50506

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 40
    .line 41
    const v2, -0xe19938

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 48
    .line 49
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$3;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogExtract$3;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/mycompany/app/main/MainListLoader;

    .line 58
    .line 59
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogExtract;->a0:Landroid/content/Context;

    .line 60
    .line 61
    new-instance v3, Lcom/mycompany/app/dialog/DialogExtract$4;

    .line 62
    .line 63
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v1, v2, v4, v3}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->O0:Lcom/mycompany/app/main/MainListLoader;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->c0:Ljava/util/List;

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 84
    .line 85
    if-nez v1, :cond_3

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$5;

    .line 89
    .line 90
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogExtract$5;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->h0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 97
    .line 98
    new-instance v2, Lcom/mycompany/app/dialog/DialogExtract$6;

    .line 99
    .line 100
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogExtract$6;-><init>(Lcom/mycompany/app/dialog/DialogExtract;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    return-void
.end method
