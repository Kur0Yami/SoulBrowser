.class Lcom/mycompany/app/web/WebViewActivity$104;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$104;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$104;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->ye:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ze:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ae:Z

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Be:I

    .line 10
    .line 11
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ce:I

    .line 12
    .line 13
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->De:Z

    .line 14
    .line 15
    iget v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Ee:I

    .line 16
    .line 17
    iget v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Fe:I

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    iput-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->ye:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->ze:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v9, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 25
    .line 26
    invoke-static {v9}, Lcom/mycompany/app/web/WebViewActivity;->T7(Landroid/webkit/WebView;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ge:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->He:Ljava/lang/String;

    .line 32
    .line 33
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ie:Z

    .line 34
    .line 35
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->Je:I

    .line 36
    .line 37
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ke:I

    .line 38
    .line 39
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Le:Z

    .line 40
    .line 41
    iput v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Me:I

    .line 42
    .line 43
    iput v8, v0, Lcom/mycompany/app/web/WebViewActivity;->Ne:I

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$105;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$105;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
