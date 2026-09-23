.class Lcom/mycompany/app/web/WebViewActivity$452$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$452;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$452;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$452$1;->c:Lcom/mycompany/app/web/WebViewActivity$452;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$452$1;->c:Lcom/mycompany/app/web/WebViewActivity$452;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity$452;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->Zl:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->Zl:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v3, v2, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v2}, Lcom/mycompany/app/web/WebViewActivity;->J5()Z

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
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    :goto_1
    move-object v5, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->X6(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->k8(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    move-object v5, v0

    .line 64
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    sget v0, Lnet/kaki87/soul2/testing/R$string;->backup_target:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    iget-object v0, v2, Lcom/mycompany/app/web/WebViewActivity;->s7:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 77
    .line 78
    if-eqz v0, :cond_7

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->dismiss()V

    .line 81
    .line 82
    .line 83
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->s7:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 84
    .line 85
    :cond_7
    iget v0, v2, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 86
    .line 87
    const/4 v1, 0x3

    .line 88
    if-ne v0, v1, :cond_8

    .line 89
    .line 90
    iget-boolean v0, v2, Lcom/mycompany/app/web/WebViewActivity;->L6:Z

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    :goto_3
    move v6, v0

    .line 96
    goto :goto_4

    .line 97
    :cond_8
    const/4 v0, 0x0

    .line 98
    goto :goto_3

    .line 99
    :goto_4
    new-instance v1, Lcom/mycompany/app/dialog/DialogEditArea;

    .line 100
    .line 101
    iget-object v3, v2, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v4, v2, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v7, Lcom/mycompany/app/web/WebViewActivity$456;

    .line 106
    .line 107
    invoke-direct {v7, v2}, Lcom/mycompany/app/web/WebViewActivity$456;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-direct/range {v1 .. v7}, Lcom/mycompany/app/dialog/DialogEditArea;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mycompany/app/dialog/DialogEditArea$EditAreaListener;)V

    .line 111
    .line 112
    .line 113
    iput-object v1, v2, Lcom/mycompany/app/web/WebViewActivity;->s7:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 114
    .line 115
    new-instance v0, Lcom/mycompany/app/web/WebViewActivity$457;

    .line 116
    .line 117
    invoke-direct {v0, v2}, Lcom/mycompany/app/web/WebViewActivity$457;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
