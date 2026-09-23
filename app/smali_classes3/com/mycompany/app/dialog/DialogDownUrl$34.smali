.class Lcom/mycompany/app/dialog/DialogDownUrl$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$34;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$34;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    iget v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->p2:I

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "X download error"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_2

    .line 25
    .line 26
    const-string v1, "Instagram download error"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v1, "Facebook download error"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :goto_0
    const-string v1, "\n\nError code : 1\n\n"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->H0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 54
    .line 55
    const-string v2, "android.intent.action.SENDTO"

    .line 56
    .line 57
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "mailto:"

    .line 61
    .line 62
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    const-string v2, "android.intent.extra.EMAIL"

    .line 70
    .line 71
    const-string v3, "soulbrowser.com@outlook.com"

    .line 72
    .line 73
    filled-new-array {v3}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    const-string v2, "android.intent.extra.SUBJECT"

    .line 81
    .line 82
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 83
    .line 84
    sget v4, Lnet/kaki87/soul2/testing/R$string;->download:I

    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    const-string v2, "android.intent.extra.TEXT"

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catch_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 109
    .line 110
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :catch_1
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogDownUrl;->b0:Landroid/content/Context;

    .line 117
    .line 118
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 119
    .line 120
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-void
.end method
