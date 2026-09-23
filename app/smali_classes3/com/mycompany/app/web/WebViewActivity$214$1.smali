.class Lcom/mycompany/app/web/WebViewActivity$214$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$214;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$214;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$214$1;->c:Lcom/mycompany/app/web/WebViewActivity$214;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$214$1;->c:Lcom/mycompany/app/web/WebViewActivity$214;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$214;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->G1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Yb:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->O3()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Nh:Ljava/lang/String;

    .line 19
    .line 20
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Oh:Z

    .line 21
    .line 22
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v3, v1}, Lcom/mycompany/app/main/MainUtil;->Z3(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "< "

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget v4, Lnet/kaki87/soul2/testing/R$string;->user_script_title:I

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " >\n"

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const-string v5, "\n"

    .line 54
    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->install_confirm:I

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget v1, Lnet/kaki87/soul2/testing/R$string;->already_install:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :cond_3
    if-eqz v2, :cond_4

    .line 87
    .line 88
    sget v1, Lnet/kaki87/soul2/testing/R$string;->update:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    sget v1, Lnet/kaki87/soul2/testing/R$string;->install:I

    .line 92
    .line 93
    :goto_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    new-instance v4, Lcom/mycompany/app/web/WebViewActivity$215;

    .line 100
    .line 101
    invoke-direct {v4, v0}, Lcom/mycompany/app/web/WebViewActivity$215;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/mycompany/app/dialog/DialogSetMsg;-><init>(Landroid/app/Activity;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 105
    .line 106
    .line 107
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Yb:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 108
    .line 109
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$216;

    .line 110
    .line 111
    invoke-direct {v1, v0}, Lcom/mycompany/app/web/WebViewActivity$216;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
