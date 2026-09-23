.class Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->onVideoAddListener(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$12;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface$12;->c:Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$WebAppInterface;->b:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->fh:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->gh:Z

    .line 8
    .line 9
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->hh:Z

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->fh:Ljava/lang/String;

    .line 13
    .line 14
    const-string v5, "undefined"

    .line 15
    .line 16
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->F9:Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->F9:Ljava/lang/String;

    .line 26
    .line 27
    :goto_0
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->G9:Z

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->C9:Z

    .line 30
    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_1
    if-nez v3, :cond_3

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, "soundcloud.com"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 61
    .line 62
    const-string v2, "promodj.com"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B8:Ljava/lang/String;

    .line 71
    .line 72
    const-string v2, "radiorecord.ru"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    :cond_2
    const/4 v1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    move v1, v3

    .line 83
    :goto_1
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->D9:Z

    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 88
    .line 89
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 90
    .line 91
    iget-boolean v0, v0, Lcom/mycompany/app/web/WebViewActivity;->G9:Z

    .line 92
    .line 93
    invoke-static {v1, v2, v0, v3}, Lcom/mycompany/app/main/MainUtil;->b8(Landroid/content/Context;Lcom/mycompany/app/web/WebNestView;ZZ)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1, v1}, Lcom/mycompany/app/web/WebViewActivity;->h6(ZZ)V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_2
    return-void
.end method
