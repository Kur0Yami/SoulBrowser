.class Lcom/mycompany/app/web/WebViewActivity$491;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$491;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$491;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Lm:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->D0(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    move-object v1, v2

    .line 16
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->um:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    sget v3, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " ]  [ "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    sget v3, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-eqz v2, :cond_2

    .line 58
    .line 59
    sget v2, Lnet/kaki87/soul2/testing/R$string;->camera:I

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->vm:Z

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    sget v2, Lnet/kaki87/soul2/testing/R$string;->audio:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->wm:Z

    .line 78
    .line 79
    if-eqz v2, :cond_4

    .line 80
    .line 81
    sget v2, Lnet/kaki87/soul2/testing/R$string;->media:I

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->xm:Z

    .line 89
    .line 90
    if-eqz v2, :cond_5

    .line 91
    .line 92
    sget v2, Lnet/kaki87/soul2/testing/R$string;->location:I

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const/4 v2, 0x0

    .line 100
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_6

    .line 105
    .line 106
    const-string v3, "[ "

    .line 107
    .line 108
    const-string v4, " ]"

    .line 109
    .line 110
    invoke-static {v3, v2, v4}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    :cond_6
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Lm:Ljava/lang/String;

    .line 115
    .line 116
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Mm:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 119
    .line 120
    if-nez v0, :cond_7

    .line 121
    .line 122
    return-void

    .line 123
    :cond_7
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$491$1;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$491$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$491;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    return-void
.end method
