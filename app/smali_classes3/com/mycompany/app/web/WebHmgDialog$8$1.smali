.class Lcom/mycompany/app/web/WebHmgDialog$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebHmgDialog$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebHmgDialog$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebHmgDialog$8$1;->c:Lcom/mycompany/app/web/WebHmgDialog$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebHmgDialog$8$1;->c:Lcom/mycompany/app/web/WebHmgDialog$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebHmgDialog$8;->a:Lcom/mycompany/app/web/WebHmgDialog;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->H0:I

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->j0:Ljava/util/List;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/mycompany/app/web/WebHmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_5

    .line 15
    .line 16
    :cond_0
    if-eqz v2, :cond_9

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    goto/16 :goto_4

    .line 25
    .line 26
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->R1(Landroid/content/Context;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "EXTRA_TYPE"

    .line 33
    .line 34
    const/16 v5, 0xc

    .line 35
    .line 36
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v3, "EXTRA_NAME"

    .line 40
    .line 41
    iget-object v5, v0, Lcom/mycompany/app/web/WebHmgDialog;->i0:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v3, "EXTRA_INDEX"

    .line 47
    .line 48
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Lcom/mycompany/app/web/WebHmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/mycompany/app/main/MainUtil;->H5(Lcom/mycompany/app/main/MainActivity;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x1

    .line 58
    const/4 v6, 0x2

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    :cond_2
    :goto_0
    move v1, v5

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    iget-object v3, v0, Lcom/mycompany/app/web/WebHmgDialog;->a0:Lcom/mycompany/app/web/WebGridAdapter;

    .line 64
    .line 65
    if-nez v3, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v3, v3, Lcom/mycompany/app/web/WebGridAdapter;->p:[I

    .line 69
    .line 70
    if-eqz v3, :cond_6

    .line 71
    .line 72
    if-ltz v1, :cond_6

    .line 73
    .line 74
    array-length v7, v3

    .line 75
    if-lt v1, v7, :cond_5

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    aget v1, v3, v1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_6
    :goto_1
    move v1, v4

    .line 82
    :goto_2
    if-ne v1, v6, :cond_8

    .line 83
    .line 84
    sget-boolean v1, Lcom/mycompany/app/pref/PrefImage;->s:Z

    .line 85
    .line 86
    if-eqz v1, :cond_7

    .line 87
    .line 88
    const/4 v1, 0x4

    .line 89
    goto :goto_3

    .line 90
    :cond_7
    const/4 v1, 0x3

    .line 91
    goto :goto_3

    .line 92
    :cond_8
    if-ne v1, v5, :cond_2

    .line 93
    .line 94
    move v1, v6

    .line 95
    :goto_3
    const-string v3, "EXTRA_PAGE"

    .line 96
    .line 97
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string v1, "EXTRA_REFERER"

    .line 101
    .line 102
    iget-object v3, v0, Lcom/mycompany/app/web/WebHmgDialog;->h0:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    const-string v1, "EXTRA_PRELOAD"

    .line 108
    .line 109
    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    const-string v1, "EXTRA_LOAD_TYPE"

    .line 113
    .line 114
    invoke-virtual {v2, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->G:Lcom/mycompany/app/web/WebViewActivity;

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/mycompany/app/web/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/mycompany/app/web/WebHmgDialog;->H:Landroid/content/Context;

    .line 124
    .line 125
    sget v2, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 126
    .line 127
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 128
    .line 129
    .line 130
    :goto_5
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebHmgDialog;->C0:Z

    .line 131
    .line 132
    return-void
.end method
