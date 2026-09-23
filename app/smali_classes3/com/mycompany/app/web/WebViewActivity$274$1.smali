.class Lcom/mycompany/app/web/WebViewActivity$274$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$274;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$274;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$274$1;->c:Lcom/mycompany/app/web/WebViewActivity$274;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$274$1;->c:Lcom/mycompany/app/web/WebViewActivity$274;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    sget v1, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->X3()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->U3()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->u4()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebViewActivity;->H4()V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$274$1$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$274$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$274$1;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
