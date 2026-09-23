.class Lcom/mycompany/app/web/WebViewActivity$226;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$226;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$226;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Th:Z

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Uh:Z

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Vh:Z

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Wh:Z

    .line 10
    .line 11
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Sh:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->t3()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->j9:Z

    .line 24
    .line 25
    const/4 v7, 0x1

    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Lcom/mycompany/app/web/WebViewActivity;->N5(I)Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->am:Z

    .line 42
    .line 43
    iget-boolean v8, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 44
    .line 45
    if-eq v6, v8, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v7, 0x0

    .line 49
    :goto_0
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 50
    .line 51
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->am:Z

    .line 52
    .line 53
    if-eqz v7, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u3()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->b3()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v0, v5, v6, v7}, Lcom/mycompany/app/web/WebViewActivity;->H8(III)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xh:Z

    .line 67
    .line 68
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Yh:Z

    .line 69
    .line 70
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Zh:Z

    .line 71
    .line 72
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->ai:Z

    .line 73
    .line 74
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->e2:Lcom/mycompany/app/view/MyWebBody;

    .line 75
    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$227;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$227;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    return-void
.end method
