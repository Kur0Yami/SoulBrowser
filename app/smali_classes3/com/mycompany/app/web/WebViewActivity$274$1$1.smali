.class Lcom/mycompany/app/web/WebViewActivity$274$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity$274$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity$274$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$274$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$274$1$1;->c:Lcom/mycompany/app/web/WebViewActivity$274$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274$1;->c:Lcom/mycompany/app/web/WebViewActivity$274;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity$274;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->R5:Lcom/mycompany/app/web/WebVideoFrame;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, v1, Lcom/mycompany/app/web/WebViewActivity;->Nc:Z

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/web/WebViewActivity;->I2:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    iget v3, v1, Lcom/mycompany/app/web/WebViewActivity;->Zi:I

    .line 18
    .line 19
    iget-boolean v1, v1, Lcom/mycompany/app/web/WebViewActivity;->aj:Z

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, Lcom/mycompany/app/main/MainUtil;->O6(Lcom/mycompany/app/web/WebNestView;IZ)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity$274;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$274$1$1$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$274$1$1;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
