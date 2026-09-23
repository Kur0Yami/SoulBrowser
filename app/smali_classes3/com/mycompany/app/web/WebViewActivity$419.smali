.class Lcom/mycompany/app/web/WebViewActivity$419;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$419;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$419;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$419;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->x4()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/mycompany/app/web/WebViewActivity$419;->a:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->O0(Lcom/mycompany/app/web/WebViewActivity;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->F9()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 23
    if-ne p1, v1, :cond_2

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    invoke-static {v0, p1}, Lcom/mycompany/app/web/WebViewActivity;->y1(Lcom/mycompany/app/web/WebViewActivity;Lcom/mycompany/app/quick/QuickAdapter$QuickItem;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    const/4 v2, 0x2

    .line 31
    if-ne p1, v2, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->m9()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    const/4 v2, 0x3

    .line 38
    const/16 v3, 0xe

    .line 39
    .line 40
    if-ne p1, v2, :cond_6

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 64
    .line 65
    const-string v2, "mHomePage3"

    .line 66
    .line 67
    invoke-static {v3, v1, v2, p1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_5
    sget p1, Lnet/kaki87/soul2/testing/R$string;->setted:I

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_6
    const/4 v2, 0x4

    .line 77
    if-ne p1, v2, :cond_9

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->s3(Z)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_7
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_8

    .line 97
    .line 98
    sput-object p1, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 101
    .line 102
    const-string v2, "mStartPage"

    .line 103
    .line 104
    invoke-static {v3, v1, v2, p1}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_8
    sget p1, Lnet/kaki87/soul2/testing/R$string;->setted:I

    .line 108
    .line 109
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 110
    .line 111
    .line 112
    :cond_9
    :goto_0
    return-void
.end method
