.class Lcom/mycompany/app/web/WebViewActivity$227;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$227;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$227;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xh:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Yh:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Zh:Z

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ai:Z

    .line 10
    .line 11
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    if-nez v5, :cond_0

    .line 15
    .line 16
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Sh:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    if-eqz v4, :cond_3

    .line 20
    .line 21
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Q6:Z

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->q5(Z)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v4, 0x0

    .line 30
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->H6:I

    .line 31
    .line 32
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->I6:Z

    .line 33
    .line 34
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->K6:Z

    .line 35
    .line 36
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->L6:Z

    .line 37
    .line 38
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->M6:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->N6:Ljava/lang/String;

    .line 41
    .line 42
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Q6:Z

    .line 43
    .line 44
    sget v5, Lcom/mycompany/app/pref/PrefAlbum;->u:I

    .line 45
    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->J6:Z

    .line 49
    .line 50
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->D8(Z)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    if-eqz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->K2()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0, v4}, Lcom/mycompany/app/web/WebViewActivity;->g7(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->m7()V

    .line 64
    .line 65
    .line 66
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->bi:Z

    .line 67
    .line 68
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ci:Z

    .line 69
    .line 70
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->di:Z

    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    return-void

    .line 77
    :cond_5
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$228;

    .line 78
    .line 79
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$228;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    return-void
.end method
