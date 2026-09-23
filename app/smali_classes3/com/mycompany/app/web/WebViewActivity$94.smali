.class Lcom/mycompany/app/web/WebViewActivity$94;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$94;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$94;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Zc:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ad:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->bd:Z

    .line 8
    .line 9
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->cd:Z

    .line 10
    .line 11
    iget-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->dd:Z

    .line 12
    .line 13
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->ed:Z

    .line 14
    .line 15
    iget-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->fd:Z

    .line 16
    .line 17
    iget v8, v0, Lcom/mycompany/app/web/WebViewActivity;->gd:I

    .line 18
    .line 19
    iget v9, v0, Lcom/mycompany/app/web/WebViewActivity;->hd:I

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/mycompany/app/web/WebViewActivity;->id:Z

    .line 22
    .line 23
    iget-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->jd:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 24
    .line 25
    iget-boolean v12, v0, Lcom/mycompany/app/web/WebViewActivity;->kd:Z

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    iput-object v13, v0, Lcom/mycompany/app/web/WebViewActivity;->Zc:Lcom/mycompany/app/web/WebNestFrame;

    .line 29
    .line 30
    iput-object v13, v0, Lcom/mycompany/app/web/WebViewActivity;->ad:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v13, v0, Lcom/mycompany/app/web/WebViewActivity;->jd:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 33
    .line 34
    iget-object v13, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    invoke-static {v13}, Lcom/mycompany/app/web/WebViewActivity;->T7(Landroid/webkit/WebView;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ld:Lcom/mycompany/app/web/WebNestFrame;

    .line 40
    .line 41
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->md:Ljava/lang/String;

    .line 42
    .line 43
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->nd:Z

    .line 44
    .line 45
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->od:Z

    .line 46
    .line 47
    iput-boolean v5, v0, Lcom/mycompany/app/web/WebViewActivity;->pd:Z

    .line 48
    .line 49
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->qd:Z

    .line 50
    .line 51
    iput-boolean v7, v0, Lcom/mycompany/app/web/WebViewActivity;->rd:Z

    .line 52
    .line 53
    iput v8, v0, Lcom/mycompany/app/web/WebViewActivity;->sd:I

    .line 54
    .line 55
    iput v9, v0, Lcom/mycompany/app/web/WebViewActivity;->td:I

    .line 56
    .line 57
    iput-boolean v10, v0, Lcom/mycompany/app/web/WebViewActivity;->ud:Z

    .line 58
    .line 59
    iput-object v11, v0, Lcom/mycompany/app/web/WebViewActivity;->vd:Lcom/mycompany/app/web/WebViewActivity$TabAddListener;

    .line 60
    .line 61
    iput-boolean v12, v0, Lcom/mycompany/app/web/WebViewActivity;->wd:Z

    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 64
    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$95;

    .line 69
    .line 70
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$95;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    return-void
.end method
