.class Lcom/mycompany/app/dialog/DialogWebView$59$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebView$59;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebView$59;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebView$59$1;->c:Lcom/mycompany/app/dialog/DialogWebView$59;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebView$59$1;->c:Lcom/mycompany/app/dialog/DialogWebView$59;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView$59;->a:Lcom/mycompany/app/dialog/DialogWebView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->j2:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->j2:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->S()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    :goto_1
    move-object v8, v2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    const-string v3, "null"

    .line 46
    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const-string v3, "undefined"

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_5
    move-object v8, v1

    .line 64
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_6

    .line 69
    .line 70
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebView;->c0:Landroid/content/Context;

    .line 71
    .line 72
    sget v1, Lnet/kaki87/soul2/testing/R$string;->backup_target:I

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->S1:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 79
    .line 80
    if-eqz v1, :cond_7

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogEditArea;->dismiss()V

    .line 83
    .line 84
    .line 85
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebView;->S1:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 86
    .line 87
    :cond_7
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->B1:I

    .line 88
    .line 89
    const/4 v2, 0x3

    .line 90
    if-ne v1, v2, :cond_8

    .line 91
    .line 92
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebView;->C1:Z

    .line 93
    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    :goto_3
    move v9, v1

    .line 98
    goto :goto_4

    .line 99
    :cond_8
    const/4 v1, 0x0

    .line 100
    goto :goto_3

    .line 101
    :goto_4
    new-instance v4, Lcom/mycompany/app/dialog/DialogEditArea;

    .line 102
    .line 103
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogWebView;->b0:Lcom/mycompany/app/main/MainActivity;

    .line 104
    .line 105
    iget-object v6, v0, Lcom/mycompany/app/dialog/DialogWebView;->i0:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v7, v0, Lcom/mycompany/app/dialog/DialogWebView;->j0:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v10, Lcom/mycompany/app/dialog/DialogWebView$63;

    .line 110
    .line 111
    invoke-direct {v10, v0}, Lcom/mycompany/app/dialog/DialogWebView$63;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 112
    .line 113
    .line 114
    invoke-direct/range {v4 .. v10}, Lcom/mycompany/app/dialog/DialogEditArea;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;)V

    .line 115
    .line 116
    .line 117
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogWebView;->S1:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 118
    .line 119
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebView$64;

    .line 120
    .line 121
    invoke-direct {v1, v0}, Lcom/mycompany/app/dialog/DialogWebView$64;-><init>(Lcom/mycompany/app/dialog/DialogWebView;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
