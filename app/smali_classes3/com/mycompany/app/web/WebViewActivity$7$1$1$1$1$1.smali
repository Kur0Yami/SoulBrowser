.class Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$7$1$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$7$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$7$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$7$1;->c:Lcom/mycompany/app/web/WebViewActivity$7;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/mycompany/app/web/WebViewActivity$7;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 12
    .line 13
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebViewActivity;->u5()V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$7$1$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1$1;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$7$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$7$1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$7$1;->c:Lcom/mycompany/app/web/WebViewActivity$7;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$7;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->oc:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 35
    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebViewActivity$8;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebViewActivity$8;-><init>(Lcom/mycompany/app/web/WebViewActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method
