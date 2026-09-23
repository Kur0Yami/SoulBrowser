.class Lcom/mycompany/app/web/WebViewActivity$108$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$108$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$108$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$108$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$108$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$108$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$108$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$108$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$108$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$108$1;->c:Lcom/mycompany/app/web/WebViewActivity$108;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$108;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->df:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ef:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ff:Z

    .line 14
    .line 15
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->gf:I

    .line 16
    .line 17
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->hf:I

    .line 18
    .line 19
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->jf:Z

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->df:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->ef:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 27
    .line 28
    const/4 v8, 0x0

    .line 29
    if-eqz v7, :cond_4

    .line 30
    .line 31
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 32
    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v9, 0x1

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    const-string v2, "about:blank"

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    xor-int/2addr v2, v9

    .line 46
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Lb:Z

    .line 47
    .line 48
    invoke-virtual {v0, v1, v8, v9}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v9}, Lcom/mycompany/app/web/WebViewActivity;->u7(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v9}, Lcom/mycompany/app/web/WebViewActivity;->w2(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v7, v1, v8}, Lcom/mycompany/app/web/WebNestView;->h(Ljava/lang/String;Z)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1, v8, v9}, Lcom/mycompany/app/web/WebViewActivity;->T8(Ljava/lang/String;ZZ)V

    .line 63
    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 68
    .line 69
    invoke-static {v3, v1, v2}, Lcom/mycompany/app/main/MainUtil;->r6(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->D8:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 76
    .line 77
    invoke-virtual {v3, v1, v2}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->kf:I

    .line 81
    .line 82
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->lf:I

    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 85
    .line 86
    if-nez v1, :cond_3

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$109;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$109;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    :goto_1
    iput-boolean v8, v0, Lcom/mycompany/app/web/WebViewActivity;->sc:Z

    .line 99
    .line 100
    return-void
.end method
