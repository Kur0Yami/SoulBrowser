.class Lcom/mycompany/app/web/WebViewActivity$107;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$107;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$107;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Xe:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Ye:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Ze:Z

    .line 8
    .line 9
    iget v4, v0, Lcom/mycompany/app/web/WebViewActivity;->af:I

    .line 10
    .line 11
    iget v5, v0, Lcom/mycompany/app/web/WebViewActivity;->bf:I

    .line 12
    .line 13
    iget-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->cf:Z

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Xe:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->Ye:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-virtual {v0, v7, v8}, Lcom/mycompany/app/web/WebViewActivity;->N8(Lcom/mycompany/app/web/WebNestView;I)V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->df:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->ef:Ljava/lang/String;

    .line 29
    .line 30
    iput-boolean v3, v0, Lcom/mycompany/app/web/WebViewActivity;->ff:Z

    .line 31
    .line 32
    iput v4, v0, Lcom/mycompany/app/web/WebViewActivity;->gf:I

    .line 33
    .line 34
    iput v5, v0, Lcom/mycompany/app/web/WebViewActivity;->hf:I

    .line 35
    .line 36
    iput-boolean v6, v0, Lcom/mycompany/app/web/WebViewActivity;->jf:Z

    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 39
    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$108;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$108;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
