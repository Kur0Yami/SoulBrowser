.class Lcom/mycompany/app/web/WebViewActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$7;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$7$1;->c:Lcom/mycompany/app/web/WebViewActivity$7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$7$1;->c:Lcom/mycompany/app/web/WebViewActivity$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$7;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->O8(Lcom/mycompany/app/web/WebNestView;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$7$1$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$7$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$7$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
