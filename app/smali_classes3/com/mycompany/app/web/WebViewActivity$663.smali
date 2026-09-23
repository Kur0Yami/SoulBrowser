.class Lcom/mycompany/app/web/WebViewActivity$663;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$663;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$663;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->zc:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->zc:Z

    .line 10
    .line 11
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->H2:Lcom/mycompany/app/web/WebNestFrame;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Q1:Z

    .line 26
    .line 27
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->v8(I)V

    .line 30
    .line 31
    .line 32
    iget v2, v0, Lcom/mycompany/app/web/WebViewActivity;->P2:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebViewActivity;->n3(I)Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    iget-object v2, v2, Lcom/mycompany/app/web/WebTabAdapter$WebTabItem;->j:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    const-string v4, "file:///android_asset/shortcut.html"

    .line 49
    .line 50
    if-nez v3, :cond_4

    .line 51
    .line 52
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_4
    iput-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 62
    .line 63
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->U1:Z

    .line 64
    .line 65
    :goto_1
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 66
    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    :goto_2
    return-void

    .line 70
    :cond_5
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$663$1;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$663$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$663;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 76
    .line 77
    .line 78
    return-void
.end method
